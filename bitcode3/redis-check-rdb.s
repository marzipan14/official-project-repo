	.text
	.file	"redis-check-rdb.c"
	.globl	rdbShowGenericInfo      # -- Begin function rdbShowGenericInfo
	.p2align	4, 0x90
	.type	rdbShowGenericInfo,@function
rdbShowGenericInfo:                     # @rdbShowGenericInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	rdbstate+24(%rip), %rsi
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+32(%rip), %rsi
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+40(%rip), %rsi
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	popq	%rbp
	jmp	printf                  # TAILCALL
.Lfunc_end0:
	.size	rdbShowGenericInfo, .Lfunc_end0-rdbShowGenericInfo
                                        # -- End function
	.globl	rdbCheckError           # -- Begin function rdbCheckError
	.p2align	4, 0x90
	.type	rdbCheckError,@function
rdbCheckError:                          # @rdbCheckError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$1224, %rsp             # imm = 0x4C8
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-1232(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%rbx, %rdx
	callq	vsnprintf
	xorl	%ebx, %ebx
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate(%rip), %rax
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:
	movq	48(%rax), %rbx
.LBB1_4:
	leaq	-1232(%rbp), %rdx
	movl	$.L.str.27, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	movslq	rdbstate+48(%rip), %rax
	movq	rdb_check_doing_string(,%rax,8), %rsi
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+8(%rip), %rax
	testq	%rax, %rax
	je	.LBB1_6
# %bb.5:
	movq	8(%rax), %rsi
	movl	$.L.str.29, %edi
	xorl	%eax, %eax
	callq	printf
.LBB1_6:
	movslq	rdbstate+16(%rip), %rsi
	cmpq	$-1, %rsi
	je	.LBB1_10
# %bb.7:
	movl	$.L.str.31, %edx
	cmpl	$15, %esi
	ja	.LBB1_9
# %bb.8:
	movq	rdb_type_string(,%rsi,8), %rdx
.LBB1_9:
	movl	$.L.str.30, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf
.LBB1_10:
	movq	rdbstate+24(%rip), %rsi
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+32(%rip), %rsi
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+40(%rip), %rsi
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rdbCheckError, .Lfunc_end1-rdbCheckError
                                        # -- End function
	.globl	rdbCheckInfo            # -- Begin function rdbCheckInfo
	.p2align	4, 0x90
	.type	rdbCheckInfo,@function
rdbCheckInfo:                           # @rdbCheckInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1232, %rsp             # imm = 0x4D0
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB2_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB2_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-1232(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	$1024, %esi             # imm = 0x400
	movq	%r10, %rdx
	callq	vsnprintf
	movq	rdbstate(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_3
# %bb.4:
	movq	48(%rax), %rsi
	jmp	.LBB2_5
.LBB2_3:
	xorl	%esi, %esi
.LBB2_5:
	leaq	-1232(%rbp), %rdx
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1232, %rsp             # imm = 0x4D0
	popq	%rbp
	retq
.Lfunc_end2:
	.size	rdbCheckInfo, .Lfunc_end2-rdbCheckInfo
                                        # -- End function
	.globl	rdbCheckSetError        # -- Begin function rdbCheckSetError
	.p2align	4, 0x90
	.type	rdbCheckSetError,@function
rdbCheckSetError:                       # @rdbCheckSetError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB3_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB3_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rcx
	movl	$rdbstate+56, %edi
	movl	$1024, %esi             # imm = 0x400
	movq	%r10, %rdx
	callq	vsnprintf
	movl	$1, rdbstate+52(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	rdbCheckSetError, .Lfunc_end3-rdbCheckSetError
                                        # -- End function
	.globl	rdbCheckHandleCrash     # -- Begin function rdbCheckHandleCrash
	.p2align	4, 0x90
	.type	rdbCheckHandleCrash,@function
rdbCheckHandleCrash:                    # @rdbCheckHandleCrash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.32, %edi
	xorl	%eax, %eax
	callq	rdbCheckError
	movl	$1, %edi
	callq	exit
.Lfunc_end4:
	.size	rdbCheckHandleCrash, .Lfunc_end4-rdbCheckHandleCrash
                                        # -- End function
	.globl	rdbCheckSetupSignals    # -- Begin function rdbCheckSetupSignals
	.p2align	4, 0x90
	.type	rdbCheckSetupSignals,@function
rdbCheckSetupSignals:                   # @rdbCheckSetupSignals
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	leaq	-32(%rbp), %rdi
	callq	sigemptyset
	movl	$-1073741820, -24(%rbp) # imm = 0xC0000004
	movq	$rdbCheckHandleCrash, -40(%rbp)
	leaq	-40(%rbp), %rbx
	movl	$11, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$7, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$8, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$4, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	rdbCheckSetupSignals, .Lfunc_end5-rdbCheckSetupSignals
                                        # -- End function
	.globl	redis_check_rdb         # -- Begin function redis_check_rdb
	.p2align	4, 0x90
	.type	redis_check_rdb,@function
redis_check_rdb:                        # @redis_check_rdb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp             # imm = 0x428
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	mstime
	movq	%rax, %rbx
	movq	%r14, %r13
	testq	%r14, %r14
	jne	.LBB6_2
# %bb.1:
	movl	$.L.str.33, %esi
	movq	%r15, %rdi
	callq	fopen
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LBB6_12
.LBB6_2:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leaq	-1104(%rbp), %r12
	movl	$redis_check_rdb.rdb, %edi
	movq	%r13, %rsi
	callq	rioInitWithFile
	movq	$redis_check_rdb.rdb, rdbstate(%rip)
	movq	$rdbLoadProgressCallback, redis_check_rdb.rdb+32(%rip)
	movl	$9, %r15d
	jmp	.LBB6_4
	.p2align	4, 0x90
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	addq	%rbx, %r12
	addq	%rbx, redis_check_rdb.rdb+48(%rip)
	subq	%rbx, %r15
	je	.LBB6_7
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movq	redis_check_rdb.rdb+56(%rip), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movl	$redis_check_rdb.rdb, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*redis_check_rdb.rdb(%rip)
	testq	%rax, %rax
	je	.LBB6_48
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	movq	redis_check_rdb.rdb+32(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_3
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	movl	$redis_check_rdb.rdb, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB6_3
.LBB6_7:
	movb	$0, -1095(%rbp)
	leaq	-1104(%rbp), %rdi
	movl	$.L.str.34, %esi
	movl	$5, %edx
	callq	memcmp
	testl	%eax, %eax
	je	.LBB6_9
# %bb.8:
	movl	$.L.str.35, %edi
	jmp	.LBB6_51
.LBB6_9:
	leaq	-1099(%rbp), %rdi
	callq	atoi
	movl	%eax, %r15d
	leal	-1(%r15), %eax
	cmpl	$9, %eax
	jb	.LBB6_13
# %bb.10:
	movl	$.L.str.36, %edi
	movl	%r15d, %esi
.LBB6_11:
	xorl	%eax, %eax
	callq	rdbCheckError
	jmp	.LBB6_52
.LBB6_12:
	movl	$1, %ebx
	jmp	.LBB6_54
.LBB6_13:
	movq	%r13, %rdi
	callq	startLoading
.LBB6_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_15 Depth 2
                                        #       Child Loop BB6_24 Depth 3
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
	.p2align	4, 0x90
.LBB6_15:                               #   Parent Loop BB6_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_24 Depth 3
	movl	$1, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	callq	rdbLoadType
	movl	%eax, %ebx
	leal	-248(%rbx), %eax
	cmpl	$7, %eax
	ja	.LBB6_37
# %bb.16:                               #   in Loop: Header=BB6_15 Depth=2
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_17:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$7, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	callq	rdbLoadStringObject
	testq	%rax, %rax
	je	.LBB6_48
# %bb.18:                               #   in Loop: Header=BB6_15 Depth=2
	movq	%rax, %r12
	movl	$redis_check_rdb.rdb, %edi
	callq	rdbLoadStringObject
	testq	%rax, %rax
	je	.LBB6_48
# %bb.19:                               #   in Loop: Header=BB6_15 Depth=2
	movq	%rax, %rbx
	movq	8(%r12), %rsi
	movq	8(%rax), %rdx
	movl	$.L.str.38, %edi
	xorl	%eax, %eax
	callq	rdbCheckInfo
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB6_15
	.p2align	4, 0x90
.LBB6_20:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$6, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	xorl	%esi, %esi
	callq	rdbLoadLen
	cmpq	$-1, %rax
	je	.LBB6_48
# %bb.21:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$.L.str.37, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	rdbCheckInfo
	jmp	.LBB6_15
.LBB6_22:                               #   in Loop: Header=BB6_15 Depth=2
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	leaq	-64(%rbp), %r12
	jmp	.LBB6_24
.LBB6_23:                               #   in Loop: Header=BB6_24 Depth=3
	addq	%rbx, %r12
	addq	%rbx, redis_check_rdb.rdb+48(%rip)
	subq	%rbx, %r15
	je	.LBB6_33
.LBB6_24:                               #   Parent Loop BB6_14 Depth=1
                                        #     Parent Loop BB6_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	redis_check_rdb.rdb+56(%rip), %rax
	cmpq	%r15, %rax
	movq	%r15, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r15, %rbx
	movl	$redis_check_rdb.rdb, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*redis_check_rdb.rdb(%rip)
	testq	%rax, %rax
	je	.LBB6_32
# %bb.25:                               #   in Loop: Header=BB6_24 Depth=3
	movq	redis_check_rdb.rdb+32(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_23
# %bb.26:                               #   in Loop: Header=BB6_24 Depth=3
	movl	$redis_check_rdb.rdb, %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB6_23
.LBB6_27:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$6, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	xorl	%esi, %esi
	callq	rdbLoadLen
	cmpq	$-1, %rax
	je	.LBB6_48
.LBB6_28:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$redis_check_rdb.rdb, %edi
	xorl	%esi, %esi
	callq	rdbLoadLen
	xorl	%ecx, %ecx
	jmp	.LBB6_30
.LBB6_29:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$2, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	movl	%r15d, %esi
	callq	rdbLoadMillisecondTime
	xorl	%ecx, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB6_30:                               #   in Loop: Header=BB6_15 Depth=2
	cmpq	$-1, %rax
	setne	%cl
	addl	%ecx, %ecx
	addl	$2, %ecx
	jmp	.LBB6_35
.LBB6_31:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$2, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	callq	rdbLoadTime
	imulq	$1000, %rax, %rdx       # imm = 0x3E8
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	setne	%cl
	leal	2(%rcx,%rcx), %ecx
	cmoveq	%rax, %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_35
.LBB6_32:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$2, %ecx
	jmp	.LBB6_34
.LBB6_33:                               #   in Loop: Header=BB6_15 Depth=2
	movl	$4, %ecx
.LBB6_34:                               #   in Loop: Header=BB6_15 Depth=2
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB6_35:                               #   in Loop: Header=BB6_15 Depth=2
	cmpl	$5, %ecx
	ja	.LBB6_70
# %bb.36:                               #   in Loop: Header=BB6_15 Depth=2
	movl	%ecx, %eax
	jmpq	*.LJTI6_1(,%rax,8)
.LBB6_37:                               #   in Loop: Header=BB6_14 Depth=1
	movl	%ebx, %eax
	addl	$1, %eax
	cmpl	$16, %eax
	ja	.LBB6_62
# %bb.38:                               #   in Loop: Header=BB6_14 Depth=1
	movl	$130558, %ecx           # imm = 0x1FDFE
	btl	%eax, %ecx
	jae	.LBB6_47
# %bb.39:                               #   in Loop: Header=BB6_14 Depth=1
	movl	%ebx, rdbstate+16(%rip)
	movl	$3, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %edi
	callq	rdbLoadStringObject
	testq	%rax, %rax
	je	.LBB6_48
# %bb.40:                               #   in Loop: Header=BB6_14 Depth=1
	movq	%rax, %r12
	movq	%rax, rdbstate+8(%rip)
	addq	$1, rdbstate+24(%rip)
	movl	$4, rdbstate+48(%rip)
	movl	$redis_check_rdb.rdb, %esi
	movl	%ebx, %edi
	movq	%rax, %rdx
	callq	rdbLoadObject
	testq	%rax, %rax
	je	.LBB6_48
# %bb.41:                               #   in Loop: Header=BB6_14 Depth=1
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	$-1, %rax
	je	.LBB6_44
# %bb.42:                               #   in Loop: Header=BB6_14 Depth=1
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	jge	.LBB6_44
# %bb.43:                               #   in Loop: Header=BB6_14 Depth=1
	addq	$1, rdbstate+40(%rip)
.LBB6_44:                               #   in Loop: Header=BB6_14 Depth=1
	cmpq	$-1, %rax
	je	.LBB6_46
# %bb.45:                               #   in Loop: Header=BB6_14 Depth=1
	addq	$1, rdbstate+32(%rip)
.LBB6_46:                               #   in Loop: Header=BB6_14 Depth=1
	movq	$0, rdbstate+8(%rip)
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$-1, rdbstate+16(%rip)
	jmp	.LBB6_14
.LBB6_47:
	testl	%eax, %eax
	jne	.LBB6_62
.LBB6_48:
	cmpl	$0, rdbstate+52(%rip)
	je	.LBB6_50
# %bb.49:
	movl	$rdbstate+56, %edi
	jmp	.LBB6_51
.LBB6_50:
	movl	$.L.str.43, %edi
.LBB6_51:
	xorl	%eax, %eax
	callq	rdbCheckError
.LBB6_52:
	movl	$1, %ebx
	testq	%r14, %r14
	jne	.LBB6_54
.LBB6_53:
	movq	%r13, %rdi
	callq	fclose
.LBB6_54:
	movl	%ebx, %eax
	addq	$1064, %rsp             # imm = 0x428
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_55:
	cmpl	$5, %r15d
	jl	.LBB6_68
# %bb.56:
	cmpl	$0, server+2132(%rip)
	je	.LBB6_68
# %bb.57:
	leaq	-64(%rbp), %r15
	movq	redis_check_rdb.rdb+40(%rip), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$5, rdbstate+48(%rip)
	movl	$8, %r12d
	jmp	.LBB6_59
.LBB6_58:                               #   in Loop: Header=BB6_59 Depth=1
	addq	%rbx, %r15
	addq	%rbx, redis_check_rdb.rdb+48(%rip)
	subq	%rbx, %r12
	je	.LBB6_63
.LBB6_59:                               # =>This Inner Loop Header: Depth=1
	movq	redis_check_rdb.rdb+56(%rip), %rax
	cmpq	%r12, %rax
	movq	%r12, %rbx
	cmovbq	%rax, %rbx
	testq	%rax, %rax
	cmoveq	%r12, %rbx
	movl	$redis_check_rdb.rdb, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*redis_check_rdb.rdb(%rip)
	testq	%rax, %rax
	je	.LBB6_48
# %bb.60:                               #   in Loop: Header=BB6_59 Depth=1
	movq	redis_check_rdb.rdb+32(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_58
# %bb.61:                               #   in Loop: Header=BB6_59 Depth=1
	movl	$redis_check_rdb.rdb, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*%rax
	jmp	.LBB6_58
.LBB6_62:
	movl	$.L.str.39, %edi
	movl	%ebx, %esi
	jmp	.LBB6_11
.LBB6_63:
	movq	-64(%rbp), %rax
	testq	%rax, %rax
	je	.LBB6_66
# %bb.64:
	cmpq	-56(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB6_69
# %bb.65:
	movl	$.L.str.42, %edi
	jmp	.LBB6_67
.LBB6_66:
	movl	$.L.str.40, %edi
.LBB6_67:
	xorl	%eax, %eax
	callq	rdbCheckInfo
.LBB6_68:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	jne	.LBB6_54
	jmp	.LBB6_53
.LBB6_69:
	movl	$.L.str.41, %edi
	jmp	.LBB6_51
.LBB6_70:                               # %.loopexit3
                                        # implicit-def: $ebx
	jmp	.LBB6_54
.Lfunc_end6:
	.size	redis_check_rdb, .Lfunc_end6-redis_check_rdb
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_28
	.quad	.LBB6_22
	.quad	.LBB6_17
	.quad	.LBB6_27
	.quad	.LBB6_29
	.quad	.LBB6_31
	.quad	.LBB6_20
	.quad	.LBB6_55
.LJTI6_1:
	.quad	.LBB6_15
	.quad	.LBB6_70
	.quad	.LBB6_48
	.quad	.LBB6_52
	.quad	.LBB6_15
	.quad	.LBB6_55
                                        # -- End function
	.text
	.globl	redis_check_rdb_main    # -- Begin function redis_check_rdb_main
	.p2align	4, 0x90
	.type	redis_check_rdb_main,@function
redis_check_rdb_main:                   # @redis_check_rdb_main
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	cmpl	$2, %edi
	je	.LBB7_2
# %bb.1:
	testq	%r14, %r14
	je	.LBB7_8
.LBB7_2:
	cmpq	$0, shared+448(%rip)
	jne	.LBB7_4
# %bb.3:
	callq	createSharedObjects
.LBB7_4:
	movq	$0, server+888(%rip)
	movl	$1, rdbCheckMode(%rip)
	movq	8(%r15), %rsi
	movl	$.L.str.45, %edi
	xorl	%eax, %eax
	callq	rdbCheckInfo
	leaq	-48(%rbp), %rdi
	callq	sigemptyset
	movl	$-1073741820, -40(%rbp) # imm = 0xC0000004
	movq	$rdbCheckHandleCrash, -56(%rbp)
	leaq	-56(%rbp), %rbx
	movl	$11, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$7, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$8, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movl	$4, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	sigaction
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	redis_check_rdb
	movl	%eax, %ebx
	testl	%eax, %eax
	jne	.LBB7_6
# %bb.5:
	movl	$.L.str.46, %edi
	xorl	%eax, %eax
	callq	rdbCheckInfo
	movq	rdbstate+24(%rip), %rsi
	movl	$.L.str.23, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+32(%rip), %rsi
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	printf
	movq	rdbstate+40(%rip), %rsi
	movl	$.L.str.25, %edi
	xorl	%eax, %eax
	callq	printf
.LBB7_6:
	testq	%r14, %r14
	je	.LBB7_7
# %bb.9:
	negl	%ebx
	sbbl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_8:
	callq	__getreent
	movq	24(%rax), %rdi
	movq	(%r15), %rdx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB7_7:
	movl	%ebx, %edi
	callq	exit
.Lfunc_end7:
	.size	redis_check_rdb_main, .Lfunc_end7-redis_check_rdb_main
                                        # -- End function
	.type	rdbCheckMode,@object    # @rdbCheckMode
	.bss
	.globl	rdbCheckMode
	.p2align	2
rdbCheckMode:
	.long	0                       # 0x0
	.size	rdbCheckMode, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"read-type"
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"read-expire"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"read-key"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"read-object-value"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"check-sum"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"read-len"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"read-aux"
	.size	.L.str.7, 9

	.type	rdb_check_doing_string,@object # @rdb_check_doing_string
	.data
	.globl	rdb_check_doing_string
	.p2align	4
rdb_check_doing_string:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.size	rdb_check_doing_string, 64

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"string"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"list-linked"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"set-hashtable"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"zset-v1"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"hash-hashtable"
	.size	.L.str.12, 15

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"zset-v2"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"module-value"
	.size	.L.str.14, 13

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.zero	1
	.size	.L.str.15, 1

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"hash-zipmap"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"list-ziplist"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"set-intset"
	.size	.L.str.18, 11

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"zset-ziplist"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"hash-ziplist"
	.size	.L.str.20, 13

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"quicklist"
	.size	.L.str.21, 10

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"stream"
	.size	.L.str.22, 7

	.type	rdb_type_string,@object # @rdb_type_string
	.data
	.globl	rdb_type_string
	.p2align	4
rdb_type_string:
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.size	rdb_type_string, 128

	.type	.L.str.23,@object       # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"[info] %lu keys read\n"
	.size	.L.str.23, 22

	.type	rdbstate,@object        # @rdbstate
	.comm	rdbstate,1080,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"[info] %lu expires\n"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"[info] %lu already expired\n"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"--- RDB ERROR DETECTED ---\n"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"[offset %llu] %s\n"
	.size	.L.str.27, 18

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"[additional info] While doing: %s\n"
	.size	.L.str.28, 35

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"[additional info] Reading key '%s'\n"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"[additional info] Reading type %d (%s)\n"
	.size	.L.str.30, 40

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"unknown"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Server crash checking the specified RDB file!"
	.size	.L.str.32, 46

	.type	redis_check_rdb.rdb,@object # @redis_check_rdb.rdb
	.local	redis_check_rdb.rdb
	.comm	redis_check_rdb.rdb,104,8
	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"r"
	.size	.L.str.33, 2

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"REDIS"
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Wrong signature trying to load DB from file"
	.size	.L.str.35, 44

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Can't handle RDB format version %d"
	.size	.L.str.36, 35

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Selecting DB ID %d"
	.size	.L.str.37, 19

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"AUX FIELD %s = '%s'"
	.size	.L.str.38, 20

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Invalid object type: %d"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"RDB file was saved with checksum disabled: no check performed."
	.size	.L.str.40, 63

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"RDB CRC error"
	.size	.L.str.41, 14

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Checksum OK"
	.size	.L.str.42, 12

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Unexpected EOF reading RDB file"
	.size	.L.str.43, 32

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Usage: %s <rdb-file-name>\n"
	.size	.L.str.44, 27

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Checking RDB file %s"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\\o/ RDB looks OK! \\o/"
	.size	.L.str.46, 22

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
