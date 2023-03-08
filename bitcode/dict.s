	.text
	.file	"dict.c"
	.globl	dictSetHashFunctionSeed # -- Begin function dictSetHashFunctionSeed
	.p2align	4, 0x90
	.type	dictSetHashFunctionSeed,@function
dictSetHashFunctionSeed:                # @dictSetHashFunctionSeed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	$dict_hash_function_seed, %edi
	movl	$16, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	dictSetHashFunctionSeed, .Lfunc_end0-dictSetHashFunctionSeed
                                        # -- End function
	.globl	dictGetHashFunctionSeed # -- Begin function dictGetHashFunctionSeed
	.p2align	4, 0x90
	.type	dictGetHashFunctionSeed,@function
dictGetHashFunctionSeed:                # @dictGetHashFunctionSeed
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$dict_hash_function_seed, %eax
	retq
.Lfunc_end1:
	.size	dictGetHashFunctionSeed, .Lfunc_end1-dictGetHashFunctionSeed
                                        # -- End function
	.globl	dictGenHashFunction     # -- Begin function dictGenHashFunction
	.p2align	4, 0x90
	.type	dictGenHashFunction,@function
dictGenHashFunction:                    # @dictGenHashFunction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rsi
	movl	$dict_hash_function_seed, %edx
	callq	siphash
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dictGenHashFunction, .Lfunc_end2-dictGenHashFunction
                                        # -- End function
	.globl	dictGenCaseHashFunction # -- Begin function dictGenCaseHashFunction
	.p2align	4, 0x90
	.type	dictGenCaseHashFunction,@function
dictGenCaseHashFunction:                # @dictGenCaseHashFunction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rsi
	movl	$dict_hash_function_seed, %edx
	callq	siphash_nocase
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	dictGenCaseHashFunction, .Lfunc_end3-dictGenCaseHashFunction
                                        # -- End function
	.globl	dictCreate              # -- Begin function dictCreate
	.p2align	4, 0x90
	.type	dictCreate,@function
dictCreate:                             # @dictCreate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$96, %edi
	callq	zmalloc
	movq	$0, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 48(%rax)
	movups	%xmm0, 56(%rax)
	movq	$0, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%rax)
	movq	%r14, 8(%rax)
	movq	$-1, %rcx
	movq	%rcx, %xmm0
	movdqu	%xmm0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dictCreate, .Lfunc_end4-dictCreate
                                        # -- End function
	.globl	dictResize              # -- Begin function dictResize
	.p2align	4, 0x90
	.type	dictResize,@function
dictResize:                             # @dictResize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$1, %eax
	cmpb	$0, dict_can_resize(%rip)
	jne	.LBB5_10
# %bb.1:
	movq	%rdi, %r14
	cmpq	$-1, 80(%rdi)
	jne	.LBB5_10
# %bb.2:
	movq	40(%r14), %rsi
	cmpl	$4, %esi
	movl	%esi, %ecx
	movl	$4, %edx
	cmovleq	%rdx, %rcx
	movl	$1, %eax
	cmpq	%rcx, %rsi
	ja	.LBB5_9
	.p2align	4, 0x90
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rbx
	addq	%rdx, %rdx
	cmpq	%rcx, %rbx
	jb	.LBB5_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	24(%r14), %rbx
	je	.LBB5_9
# %bb.5:
	leaq	-1(%rbx), %r15
	leaq	(,%rbx,8), %rdi
	callq	zcalloc
	cmpq	$0, 16(%r14)
	je	.LBB5_6
# %bb.7:
	movq	%rax, 48(%r14)
	movq	%rbx, 56(%r14)
	movq	%r15, 64(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r14)
	jmp	.LBB5_8
.LBB5_6:
	movq	%rax, 16(%r14)
	movq	%rbx, 24(%r14)
	movq	%r15, 32(%r14)
	movq	$0, 40(%r14)
.LBB5_8:
	xorl	%eax, %eax
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	dictResize, .Lfunc_end5-dictResize
                                        # -- End function
	.globl	dictExpand              # -- Begin function dictExpand
	.p2align	4, 0x90
	.type	dictExpand,@function
dictExpand:                             # @dictExpand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$1, %eax
	cmpq	$-1, 80(%rdi)
	jne	.LBB6_11
# %bb.1:
	movq	%rdi, %r14
	cmpq	%rsi, 40(%rdi)
	ja	.LBB6_11
# %bb.2:
	movabsq	$9223372036854775806, %rbx # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rbx, %rsi
	jbe	.LBB6_4
# %bb.3:
	addq	$2, %rbx
	jmp	.LBB6_6
.LBB6_4:                                # %.preheader
	movl	$4, %ecx
	.p2align	4, 0x90
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	addq	%rcx, %rcx
	cmpq	%rsi, %rbx
	jb	.LBB6_5
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	24(%r14), %rbx
	je	.LBB6_11
# %bb.7:
	leaq	-1(%rbx), %r15
	leaq	(,%rbx,8), %rdi
	callq	zcalloc
	cmpq	$0, 16(%r14)
	je	.LBB6_8
# %bb.9:
	movq	%rax, 48(%r14)
	movq	%rbx, 56(%r14)
	movq	%r15, 64(%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%r14)
	jmp	.LBB6_10
.LBB6_8:
	movq	%rax, 16(%r14)
	movq	%rbx, 24(%r14)
	movq	%r15, 32(%r14)
	movq	$0, 40(%r14)
.LBB6_10:
	xorl	%eax, %eax
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	dictExpand, .Lfunc_end6-dictExpand
                                        # -- End function
	.globl	dictRehash              # -- Begin function dictRehash
	.p2align	4, 0x90
	.type	dictRehash,@function
dictRehash:                             # @dictRehash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	80(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	$-1, %rcx
	je	.LBB7_14
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r15
	testl	%esi, %esi
	je	.LBB7_2
# %bb.3:
	leal	(%r14,%r14), %eax
	leal	(%rax,%rax,4), %r12d
	movq	40(%r15), %rdx
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_10 Depth 2
	testq	%rdx, %rdx
	je	.LBB7_12
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rcx, 24(%r15)
	jbe	.LBB7_15
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	addl	$-1, %r14d
	movq	16(%r15), %rax
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB7_7:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rax,%rcx,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB7_10
# %bb.8:                                #   in Loop: Header=BB7_7 Depth=2
	movq	%rcx, 80(%r15)
	addq	$1, %rcx
	addl	$-1, %r12d
	jne	.LBB7_7
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_10:                               #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rdi
	movq	16(%rbx), %r13
	movq	(%r15), %rax
	callq	*(%rax)
	andq	64(%r15), %rax
	movq	48(%r15), %rcx
	movq	(%rcx,%rax,8), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, (%rcx,%rax,8)
	movq	40(%r15), %rdx
	addq	$-1, %rdx
	movq	%rdx, 40(%r15)
	addq	$1, 72(%r15)
	movq	%r13, %rbx
	testq	%r13, %r13
	jne	.LBB7_10
# %bb.11:                               #   in Loop: Header=BB7_4 Depth=1
	movq	16(%r15), %rax
	movq	80(%r15), %rcx
	movq	$0, (%rax,%rcx,8)
	addq	$1, %rcx
	movq	%rcx, 80(%r15)
	testl	%r14d, %r14d
	jne	.LBB7_4
	jmp	.LBB7_12
.LBB7_9:
	movl	$1, %eax
	jmp	.LBB7_14
.LBB7_2:
	movq	40(%r15), %rdx
.LBB7_12:
	movl	$1, %eax
	testq	%rdx, %rdx
	jne	.LBB7_14
# %bb.13:
	leaq	16(%r15), %rbx
	movq	16(%r15), %rdi
	callq	zfree
	movups	48(%r15), %xmm0
	movups	64(%r15), %xmm1
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	$0, 48(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 56(%r15)
	movq	$0, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, 80(%r15)
	xorl	%eax, %eax
.LBB7_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_15:
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	movl	$197, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end7:
	.size	dictRehash, .Lfunc_end7-dictRehash
                                        # -- End function
	.globl	timeInMilliseconds      # -- Begin function timeInMilliseconds
	.p2align	4, 0x90
	.type	timeInMilliseconds,@function
timeInMilliseconds:                     # @timeInMilliseconds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	imulq	$1000, -16(%rbp), %rcx  # imm = 0x3E8
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	-8(%rbp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	timeInMilliseconds, .Lfunc_end8-timeInMilliseconds
                                        # -- End function
	.globl	dictRehashMilliseconds  # -- Begin function dictRehashMilliseconds
	.p2align	4, 0x90
	.type	dictRehashMilliseconds,@function
dictRehashMilliseconds:                 # @dictRehashMilliseconds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %r13d
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movabsq	$-2361183241434822607, %rax # imm = 0xDF3B645A1CAC0831
	imulq	-48(%rbp)
	movq	%rdx, %r12
	movq	-56(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %r12
	addq	%rax, %r12
	movslq	%r13d, %r13
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	$100, %esi
	callq	dictRehash
	testl	%eax, %eax
	je	.LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	addl	$100, %ebx
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	-56(%rbp), %rcx
	subq	%r15, %rcx
	movabsq	$2361183241434822607, %rax # imm = 0x20C49BA5E353F7CF
	imulq	-48(%rbp)
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%r12, %rdx
	movl	$42, __A_VARIABLE(%rip)
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	addq	%rdx, %rax
	cmpq	%r13, %rax
	jle	.LBB9_1
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	dictRehashMilliseconds, .Lfunc_end9-dictRehashMilliseconds
                                        # -- End function
	.globl	dictAdd                 # -- Begin function dictAdd
	.p2align	4, 0x90
	.type	dictAdd,@function
dictAdd:                                # @dictAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rdi, %rbx
	xorl	%edx, %edx
	callq	dictAddRaw
	testq	%rax, %rax
	je	.LBB10_1
# %bb.2:
	movq	%rax, %r15
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB10_4
# %bb.3:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
.LBB10_4:
	movq	%r14, 8(%r15)
	xorl	%eax, %eax
	jmp	.LBB10_5
.LBB10_1:
	movl	$1, %eax
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	dictAdd, .Lfunc_end10-dictAdd
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function dictAddRaw
.LCPI11_0:
	.quad	4                       # 0x4
	.quad	3                       # 0x3
	.text
	.globl	dictAddRaw
	.p2align	4, 0x90
	.type	dictAddRaw,@function
dictAddRaw:                             # @dictAddRaw
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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$-1, 80(%rdi)
	je	.LBB11_4
# %bb.1:
	cmpq	$0, 88(%rbx)
	jne	.LBB11_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	dictRehash
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_4:
	leaq	80(%rbx), %r15
	movq	(%rbx), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movq	%rax, %r13
	testq	%r12, %r12
	je	.LBB11_6
# %bb.5:
	movq	$0, (%r12)
.LBB11_6:
	cmpq	$-1, (%r15)
	je	.LBB11_24
.LBB11_7:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %r12
	andq	%r13, %r12
	movq	16(%rbx), %rax
	movq	(%rax,%r12,8), %r15
	jmp	.LBB11_10
	.p2align	4, 0x90
.LBB11_9:                               #   in Loop: Header=BB11_10 Depth=1
	movq	16(%r15), %r15
.LBB11_10:                              # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB11_17
# %bb.11:                               #   in Loop: Header=BB11_10 Depth=1
	movq	(%r15), %rdx
	cmpq	%r14, %rdx
	je	.LBB11_14
# %bb.12:                               #   in Loop: Header=BB11_10 Depth=1
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_9
# %bb.13:                               #   in Loop: Header=BB11_10 Depth=1
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB11_9
.LBB11_14:
	movq	-48(%rbp), %r12         # 8-byte Reload
.LBB11_15:
	testq	%r12, %r12
	je	.LBB11_48
# %bb.16:
	movq	%r15, (%r12)
	jmp	.LBB11_48
.LBB11_17:
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	$-1, (%rax)
	je	.LBB11_36
# %bb.18:
	andq	64(%rbx), %r13
	movq	48(%rbx), %rax
	movq	(%rax,%r13,8), %r15
	testq	%r15, %r15
	je	.LBB11_35
# %bb.19:
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB11_21
	.p2align	4, 0x90
.LBB11_20:                              #   in Loop: Header=BB11_21 Depth=1
	movq	16(%r15), %r15
	testq	%r15, %r15
	je	.LBB11_35
.LBB11_21:                              # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rdx
	cmpq	%r14, %rdx
	je	.LBB11_15
# %bb.22:                               #   in Loop: Header=BB11_21 Depth=1
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_20
# %bb.23:                               #   in Loop: Header=BB11_21 Depth=1
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB11_20
	jmp	.LBB11_15
.LBB11_24:
	movq	24(%rbx), %rsi
	movq	40(%rbx), %rcx
	testq	%rsi, %rsi
	je	.LBB11_31
# %bb.25:
	cmpq	%rsi, %rcx
	jb	.LBB11_7
# %bb.26:
	cmpb	$1, dict_can_resize(%rip)
	jne	.LBB11_28
# %bb.27:
	movq	%rcx, %rax
	xorl	%edx, %edx
	divq	%rsi
	cmpq	$6, %rax
	jb	.LBB11_7
.LBB11_28:
	leaq	(%rcx,%rcx), %rax
	cmpq	%rax, %rcx
	ja	.LBB11_46
# %bb.29:
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movabsq	$9223372036854775806, %r15 # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%r15, %rax
	jbe	.LBB11_43
# %bb.30:
	addq	$2, %r15
	jmp	.LBB11_45
.LBB11_35:
	movq	%r13, %r12
.LBB11_36:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r12
	je	.LBB11_49
# %bb.37:
	leaq	48(%rbx), %r13
	leaq	16(%rbx), %rax
	cmpq	$-1, 80(%rbx)
	cmoveq	%rax, %r13
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	(%r13), %rax
	movq	(%rax,%r12,8), %rcx
	movq	%rcx, 16(%r15)
	movq	%r15, (%rax,%r12,8)
	addq	$1, 24(%r13)
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_40
# %bb.38:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	%rax, (%r15)
	jmp	.LBB11_50
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rcx
	ja	.LBB11_47
# %bb.32:
	movl	$32, %edi
	callq	zcalloc
	cmpq	$0, 16(%rbx)
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	je	.LBB11_41
# %bb.33:
	movq	%rax, 48(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [4,3]
	movups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	%r15, %rcx
	jmp	.LBB11_42
.LBB11_40:
	movq	%r14, (%r15)
	jmp	.LBB11_50
.LBB11_41:
	leaq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [4,3]
	movups	%xmm0, 24(%rbx)
.LBB11_42:
	movq	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_8
.LBB11_43:                              # %.preheader5
	movl	$4, %ecx
	.p2align	4, 0x90
.LBB11_44:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %r15
	addq	%rcx, %rcx
	cmpq	%rax, %r15
	jb	.LBB11_44
.LBB11_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r15
	jne	.LBB11_51
.LBB11_46:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_47:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_49:
	xorl	%r15d, %r15d
.LBB11_50:
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
.LBB11_51:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	leaq	-1(%r15), %r12
	leaq	(,%r15,8), %rdi
	callq	zcalloc
	cmpq	$0, 16(%rbx)
	je	.LBB11_53
# %bb.52:
	movq	%rax, 48(%rbx)
	movq	%r15, 56(%rbx)
	movq	%r12, 64(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_8
.LBB11_53:
	movq	%rax, 16(%rbx)
	movq	%r15, 24(%rbx)
	movq	%r12, 32(%rbx)
	movq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_8
.Lfunc_end11:
	.size	dictAddRaw, .Lfunc_end11-dictAddRaw
                                        # -- End function
	.globl	dictReplace             # -- Begin function dictReplace
	.p2align	4, 0x90
	.type	dictReplace,@function
dictReplace:                            # @dictReplace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r14
	movq	%rdi, %r12
	leaq	-40(%rbp), %rdx
	callq	dictAddRaw
	testq	%rax, %rax
	je	.LBB12_4
# %bb.1:
	movq	%rax, %rbx
	movq	(%r12), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_3
# %bb.2:
	movq	8(%r12), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	%rax, 8(%rbx)
	movl	$1, %r14d
	jmp	.LBB12_9
.LBB12_4:
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %r15
	movq	(%r12), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_6
# %bb.5:
	movq	8(%r12), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB12_7
.LBB12_3:
	movq	%r14, 8(%rbx)
	movl	$1, %r14d
	jmp	.LBB12_9
.LBB12_6:
	movq	%r14, 8(%rcx)
.LBB12_7:
	movq	(%r12), %rax
	movq	40(%rax), %rax
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB12_9
# %bb.8:
	movq	8(%r12), %rdi
	movq	%r15, %rsi
	callq	*%rax
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	dictReplace, .Lfunc_end12-dictReplace
                                        # -- End function
	.globl	dictAddOrFind           # -- Begin function dictAddOrFind
	.p2align	4, 0x90
	.type	dictAddOrFind,@function
dictAddOrFind:                          # @dictAddOrFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-8(%rbp), %rdx
	callq	dictAddRaw
	testq	%rax, %rax
	jne	.LBB13_2
# %bb.1:
	movq	-8(%rbp), %rax
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dictAddOrFind, .Lfunc_end13-dictAddOrFind
                                        # -- End function
	.globl	dictDelete              # -- Begin function dictDelete
	.p2align	4, 0x90
	.type	dictDelete,@function
dictDelete:                             # @dictDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	callq	dictGenericDelete
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dictDelete, .Lfunc_end14-dictDelete
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dictGenericDelete
	.type	dictGenericDelete,@function
dictGenericDelete:                      # @dictGenericDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r12
	movq	%rdi, %r15
	cmpq	$0, 40(%rdi)
	jne	.LBB15_2
# %bb.1:
	cmpq	$0, 72(%r15)
	je	.LBB15_30
.LBB15_2:
	cmpq	$-1, 80(%r15)
	je	.LBB15_6
# %bb.3:
	cmpq	$0, 88(%r15)
	jne	.LBB15_5
# %bb.4:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	dictRehash
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_6:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	(%r15), %rax
	movq	%r12, %rdi
	callq	*(%rax)
	movq	32(%r15), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	andq	%rax, %rcx
	movq	16(%r15), %rax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	(%rax,%rcx,8), %r13
	testq	%r13, %r13
	je	.LBB15_29
# %bb.7:
	leaq	16(%r15), %rax
	movq	(%r13), %rdx
	cmpq	%r12, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB15_8
# %bb.13:                               # %.preheader3
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_14:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %r14
	movq	(%r15), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB15_28
# %bb.15:                               #   in Loop: Header=BB15_14 Depth=1
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB15_16
.LBB15_28:                              #   in Loop: Header=BB15_14 Depth=1
	movq	16(%r14), %r13
	testq	%r13, %r13
	je	.LBB15_29
# %bb.12:                               #   in Loop: Header=BB15_14 Depth=1
	movq	(%r13), %rdx
	movq	%r14, %rbx
	cmpq	%r12, %rdx
	jne	.LBB15_14
	jmp	.LBB15_17
.LBB15_29:
	cmpq	$-1, 80(%r15)
	je	.LBB15_30
# %bb.9:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	andq	64(%r15), %rcx
	movq	48(%r15), %rax
	movq	(%rax,%rcx,8), %r13
	testq	%r13, %r13
	je	.LBB15_30
# %bb.10:
	leaq	48(%r15), %rax
	movq	(%r13), %rdx
	movl	$1, %ebx
	cmpq	%r12, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB15_11
# %bb.35:                               # %.preheader
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB15_36:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rbx
	movq	(%r15), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB15_32
# %bb.37:                               #   in Loop: Header=BB15_36 Depth=1
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	*%rax
	testl	%eax, %eax
	jne	.LBB15_38
.LBB15_32:                              #   in Loop: Header=BB15_36 Depth=1
	movq	16(%rbx), %r13
	testq	%r13, %r13
	je	.LBB15_30
# %bb.33:                               #   in Loop: Header=BB15_36 Depth=1
	movq	(%r13), %rdx
	movq	%rbx, %r14
	cmpq	%r12, %rdx
	jne	.LBB15_36
# %bb.34:
	movq	%rbx, %r14
	jmp	.LBB15_39
.LBB15_30:
	xorl	%r13d, %r13d
	jmp	.LBB15_31
.LBB15_8:
	xorl	%ebx, %ebx
.LBB15_11:
	xorl	%r14d, %r14d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB15_18
.LBB15_16:
	movq	%r14, %r13
	movq	%rbx, %r14
.LBB15_17:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB15_18
.LBB15_38:
	movq	%rbx, %r13
.LBB15_39:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	$1, %ebx
.LBB15_18:
	movq	16(%r13), %rax
	testq	%r14, %r14
	je	.LBB15_20
# %bb.19:
	addq	$16, %r14
	jmp	.LBB15_21
.LBB15_20:
	movq	-64(%rbp), %r14         # 8-byte Reload
	shlq	$3, %r14
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	(%rdx), %r14
.LBB15_21:
	movq	%rax, (%r14)
	testl	%ecx, %ecx
	jne	.LBB15_27
# %bb.22:
	movq	(%r15), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB15_24
# %bb.23:
	movq	8(%r15), %rdi
	movq	(%r13), %rsi
	callq	*%rax
	movq	(%r15), %rcx
.LBB15_24:
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB15_26
# %bb.25:
	movq	8(%r15), %rdi
	movq	8(%r13), %rsi
	callq	*%rax
.LBB15_26:
	movq	%r13, %rdi
	callq	zfree
.LBB15_27:
	shlq	$5, %rbx
	addq	$-1, 40(%r15,%rbx)
.LBB15_31:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dictGenericDelete, .Lfunc_end15-dictGenericDelete
                                        # -- End function
	.globl	dictUnlink              # -- Begin function dictUnlink
	.p2align	4, 0x90
	.type	dictUnlink,@function
dictUnlink:                             # @dictUnlink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edx
	callq	dictGenericDelete
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dictUnlink, .Lfunc_end16-dictUnlink
                                        # -- End function
	.globl	dictFreeUnlinkedEntry   # -- Begin function dictFreeUnlinkedEntry
	.p2align	4, 0x90
	.type	dictFreeUnlinkedEntry,@function
dictFreeUnlinkedEntry:                  # @dictFreeUnlinkedEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rsi, %rsi
	je	.LBB17_6
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB17_3
# %bb.2:
	movq	8(%r14), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movq	(%r14), %rcx
.LBB17_3:
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB17_5
# %bb.4:
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
.LBB17_5:
	movq	%rbx, %rdi
	callq	zfree
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end17:
	.size	dictFreeUnlinkedEntry, .Lfunc_end17-dictFreeUnlinkedEntry
                                        # -- End function
	.globl	_dictClear              # -- Begin function _dictClear
	.p2align	4, 0x90
	.type	_dictClear,@function
_dictClear:                             # @_dictClear
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	cmpq	$0, 8(%rsi)
	je	.LBB18_13
# %bb.1:
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	jmp	.LBB18_2
	.p2align	4, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_2 Depth=1
	addq	$1, %r13
	cmpq	8(%r15), %r13
	jae	.LBB18_13
.LBB18_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
	cmpq	$0, 24(%r15)
	je	.LBB18_13
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB18_6
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	movzwl	%r13w, %eax
	testq	%rax, %rax
	jne	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r12), %rdi
	callq	*-48(%rbp)              # 8-byte Folded Reload
.LBB18_6:                               #   in Loop: Header=BB18_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB18_7
	jmp	.LBB18_12
	.p2align	4, 0x90
.LBB18_11:                              #   in Loop: Header=BB18_7 Depth=2
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r15)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB18_12
.LBB18_7:                               #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r14
	movq	(%r12), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB18_9
# %bb.8:                                #   in Loop: Header=BB18_7 Depth=2
	movq	8(%r12), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movq	(%r12), %rcx
.LBB18_9:                               #   in Loop: Header=BB18_7 Depth=2
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_7 Depth=2
	movq	8(%r12), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
	jmp	.LBB18_11
.LBB18_13:
	movq	(%r15), %rdi
	callq	zfree
	movq	$0, (%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%r15)
	movq	$0, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	_dictClear, .Lfunc_end18-_dictClear
                                        # -- End function
	.globl	dictRelease             # -- Begin function dictRelease
	.p2align	4, 0x90
	.type	dictRelease,@function
dictRelease:                            # @dictRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	16(%rdi), %rsi
	xorl	%edx, %edx
	callq	_dictClear
	leaq	48(%rbx), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_dictClear
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end19:
	.size	dictRelease, .Lfunc_end19-dictRelease
                                        # -- End function
	.globl	dictFind                # -- Begin function dictFind
	.p2align	4, 0x90
	.type	dictFind,@function
dictFind:                               # @dictFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB20_1
.LBB20_14:
	xorl	%ebx, %ebx
.LBB20_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_1:
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpq	$-1, 80(%rdi)
	je	.LBB20_5
# %bb.2:
	cmpq	$0, 88(%r15)
	jne	.LBB20_4
# %bb.3:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	dictRehash
.LBB20_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_5:
	movq	(%r15), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movq	%rax, %r12
	movq	32(%r15), %rax
	andq	%r12, %rax
	movq	16(%r15), %rcx
	movq	(%rcx,%rax,8), %rbx
	jmp	.LBB20_6
	.p2align	4, 0x90
.LBB20_10:                              #   in Loop: Header=BB20_6 Depth=1
	movq	16(%rbx), %rbx
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB20_11
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	movq	(%rbx), %rdx
	cmpq	%r14, %rdx
	je	.LBB20_15
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=1
	movq	(%r15), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_6 Depth=1
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB20_10
	jmp	.LBB20_15
.LBB20_11:
	cmpq	$-1, 80(%r15)
	je	.LBB20_14
# %bb.12:
	andq	64(%r15), %r12
	movq	48(%r15), %rax
	movq	(%rax,%r12,8), %rbx
	jmp	.LBB20_13
	.p2align	4, 0x90
.LBB20_19:                              #   in Loop: Header=BB20_13 Depth=1
	movq	16(%rbx), %rbx
.LBB20_13:                              # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB20_14
# %bb.16:                               #   in Loop: Header=BB20_13 Depth=1
	movq	(%rbx), %rdx
	cmpq	%r14, %rdx
	je	.LBB20_15
# %bb.17:                               #   in Loop: Header=BB20_13 Depth=1
	movq	(%r15), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB20_19
# %bb.18:                               #   in Loop: Header=BB20_13 Depth=1
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB20_19
	jmp	.LBB20_15
.Lfunc_end20:
	.size	dictFind, .Lfunc_end20-dictFind
                                        # -- End function
	.globl	dictFetchValue          # -- Begin function dictFetchValue
	.p2align	4, 0x90
	.type	dictFetchValue,@function
dictFetchValue:                         # @dictFetchValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	dictFind
	testq	%rax, %rax
	je	.LBB21_1
# %bb.2:
	movq	8(%rax), %rax
	jmp	.LBB21_3
.LBB21_1:
	xorl	%eax, %eax
.LBB21_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	dictFetchValue, .Lfunc_end21-dictFetchValue
                                        # -- End function
	.globl	dictFingerprint         # -- Begin function dictFingerprint
	.p2align	4, 0x90
	.type	dictFingerprint,@function
dictFingerprint:                        # @dictFingerprint
# %bb.0:
	movq	16(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	addq	24(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	addq	40(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	addq	48(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	addq	56(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	addq	72(%rdi), %rax
	movq	%rax, %rcx
	notq	%rcx
	shlq	$21, %rax
	addq	%rcx, %rax
	movq	%rax, %rcx
	sarq	$24, %rcx
	xorq	%rax, %rcx
	imulq	$265, %rcx, %rax        # imm = 0x109
	movq	%rax, %rcx
	sarq	$14, %rcx
	xorq	%rax, %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, %rcx
	sarq	$28, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$31, %rax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end22:
	.size	dictFingerprint, .Lfunc_end22-dictFingerprint
                                        # -- End function
	.globl	dictGetIterator         # -- Begin function dictGetIterator
	.p2align	4, 0x90
	.type	dictGetIterator,@function
dictGetIterator:                        # @dictGetIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$48, %edi
	callq	zmalloc
	movq	%rbx, (%rax)
	movq	$0, 16(%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end23:
	.size	dictGetIterator, .Lfunc_end23-dictGetIterator
                                        # -- End function
	.globl	dictGetSafeIterator     # -- Begin function dictGetSafeIterator
	.p2align	4, 0x90
	.type	dictGetSafeIterator,@function
dictGetSafeIterator:                    # @dictGetSafeIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$48, %edi
	callq	zmalloc
	movq	%rbx, (%rax)
	movl	$0, 16(%rax)
	movq	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, 20(%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dictGetSafeIterator, .Lfunc_end24-dictGetSafeIterator
                                        # -- End function
	.globl	dictNext                # -- Begin function dictNext
	.p2align	4, 0x90
	.type	dictNext,@function
dictNext:                               # @dictNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	32(%rdi), %r12
	movq	24(%rdi), %rcx
	xorl	%r14d, %r14d
	jmp	.LBB25_1
.LBB25_8:                               #   in Loop: Header=BB25_1 Depth=1
	leaq	(%r15,%r13), %rcx
	addq	$16, %rcx
.LBB25_12:                              #   in Loop: Header=BB25_1 Depth=1
	shlq	$3, %rax
	addq	(%rcx), %rax
.LBB25_13:                              #   in Loop: Header=BB25_1 Depth=1
	movq	(%rax), %rcx
	movq	%rcx, 24(%rbx)
	testq	%rcx, %rcx
	jne	.LBB25_14
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rax
	testq	%rcx, %rcx
	jne	.LBB25_13
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movq	(%rbx), %r15
	movq	8(%rbx), %rax
	movslq	16(%rbx), %rcx
	movq	%rcx, %r13
	shlq	$5, %r13
	testq	%rcx, %rcx
	jne	.LBB25_7
# %bb.3:                                #   in Loop: Header=BB25_1 Depth=1
	cmpq	$-1, %rax
	jne	.LBB25_7
# %bb.4:                                #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, 20(%rbx)
	je	.LBB25_6
# %bb.5:                                #   in Loop: Header=BB25_1 Depth=1
	addq	$1, 88(%r15)
	movq	$-1, %rax
	jmp	.LBB25_7
.LBB25_6:                               #   in Loop: Header=BB25_1 Depth=1
	movq	%r15, %rdi
	callq	dictFingerprint
	movq	%rax, 40(%rbx)
	movq	8(%rbx), %rax
	.p2align	4, 0x90
.LBB25_7:                               #   in Loop: Header=BB25_1 Depth=1
	addq	$1, %rax
	movq	%rax, 8(%rbx)
	cmpq	24(%r15,%r13), %rax
	jl	.LBB25_8
# %bb.9:                                #   in Loop: Header=BB25_1 Depth=1
	movq	(%rbx), %rcx
	cmpq	$-1, 80(%rcx)
	je	.LBB25_15
# %bb.10:                               #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, 16(%rbx)
	jne	.LBB25_15
# %bb.11:                               #   in Loop: Header=BB25_1 Depth=1
	movl	$1, 16(%rbx)
	movq	$0, 8(%rbx)
	addq	$48, %rcx
	xorl	%eax, %eax
	jmp	.LBB25_12
.LBB25_14:
	movq	16(%rcx), %rax
	movq	%rax, (%r12)
	movq	%rcx, %r14
.LBB25_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	dictNext, .Lfunc_end25-dictNext
                                        # -- End function
	.globl	dictReleaseIterator     # -- Begin function dictReleaseIterator
	.p2align	4, 0x90
	.type	dictReleaseIterator,@function
dictReleaseIterator:                    # @dictReleaseIterator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	cmpq	$-1, 8(%rdi)
	jne	.LBB26_2
# %bb.1:
	cmpl	$0, 16(%rbx)
	je	.LBB26_5
.LBB26_2:
	cmpl	$0, 20(%rbx)
	je	.LBB26_4
# %bb.3:
	movq	(%rbx), %rax
	addq	$-1, 88(%rax)
	jmp	.LBB26_5
.LBB26_4:
	movq	(%rbx), %rdi
	movq	40(%rbx), %r14
	callq	dictFingerprint
	cmpq	%rax, %r14
	jne	.LBB26_6
.LBB26_5:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB26_6:
	movl	$.L.str.2, %edi
	movl	$.L.str.1, %esi
	movl	$603, %edx              # imm = 0x25B
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end26:
	.size	dictReleaseIterator, .Lfunc_end26-dictReleaseIterator
                                        # -- End function
	.globl	dictGetRandomKey        # -- Begin function dictGetRandomKey
	.p2align	4, 0x90
	.type	dictGetRandomKey,@function
dictGetRandomKey:                       # @dictGetRandomKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB27_2
# %bb.1:
	xorl	%r15d, %r15d
	jmp	.LBB27_20
.LBB27_2:
	movq	%rdi, %r14
	movq	80(%rdi), %rcx
	cmpq	$-1, %rcx
	je	.LBB27_10
# %bb.3:
	cmpq	$0, 88(%r14)
	je	.LBB27_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_6
.LBB27_5:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	dictRehash
	movq	80(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jne	.LBB27_6
	.p2align	4, 0x90
.LBB27_10:                              # =>This Inner Loop Header: Depth=1
	callq	random
	andq	32(%r14), %rax
	movq	16(%r14), %rcx
	movq	(%rcx,%rax,8), %r15
	testq	%r15, %r15
	je	.LBB27_10
.LBB27_11:
	xorl	%ebx, %ebx
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB27_12:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	addq	$1, %rbx
	testq	%rax, %rax
	jne	.LBB27_12
# %bb.13:
	callq	random
	cqto
	idivq	%rbx
	testl	%edx, %edx
	je	.LBB27_20
# %bb.14:
	leal	-1(%rdx), %eax
	movl	%edx, %ecx
	andl	$7, %ecx
	je	.LBB27_18
# %bb.15:                               # %.preheader1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB27_16:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %r15
	addl	$1, %esi
	cmpl	%esi, %ecx
	jne	.LBB27_16
# %bb.17:                               # %.loopexit2
	subl	%esi, %edx
.LBB27_18:
	cmpl	$7, %eax
	jb	.LBB27_20
	.p2align	4, 0x90
.LBB27_19:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %r15
	addl	$-8, %edx
	jne	.LBB27_19
.LBB27_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB27_8:                               #   in Loop: Header=BB27_6 Depth=1
	shlq	$3, %rdx
	addq	16(%r14), %rdx
	movq	%rdx, %rax
.LBB27_9:                               #   in Loop: Header=BB27_6 Depth=1
	movq	(%rax), %r15
	testq	%r15, %r15
	jne	.LBB27_11
.LBB27_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	callq	random
	movq	24(%r14), %rsi
	movq	80(%r14), %rcx
	movq	56(%r14), %rdi
	addq	%rsi, %rdi
	subq	%rcx, %rdi
	xorl	%edx, %edx
	divq	%rdi
	addq	%rbx, %rdx
	movq	%rdx, %rax
	subq	%rsi, %rax
	jb	.LBB27_8
# %bb.7:                                #   in Loop: Header=BB27_6 Depth=1
	shlq	$3, %rax
	addq	48(%r14), %rax
	jmp	.LBB27_9
.Lfunc_end27:
	.size	dictGetRandomKey, .Lfunc_end27-dictGetRandomKey
                                        # -- End function
	.globl	dictGetSomeKeys         # -- Begin function dictGetSomeKeys
	.p2align	4, 0x90
	.type	dictGetSomeKeys,@function
dictGetSomeKeys:                        # @dictGetSomeKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	72(%rdi), %r12
	addq	40(%rdi), %r12
	movl	%edx, %eax
	cmpq	%rax, %r12
	cmovael	%edx, %r12d
	testl	%r12d, %r12d
	je	.LBB28_6
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB28_3
	.p2align	4, 0x90
.LBB28_2:                               #   in Loop: Header=BB28_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jae	.LBB28_6
.LBB28_3:                               # =>This Inner Loop Header: Depth=1
	cmpq	$-1, 80(%r14)
	je	.LBB28_8
# %bb.4:                                #   in Loop: Header=BB28_3 Depth=1
	cmpq	$0, 88(%r14)
	jne	.LBB28_2
# %bb.5:                                #   in Loop: Header=BB28_3 Depth=1
	movq	%r14, %rdi
	movl	$1, %esi
	callq	dictRehash
	jmp	.LBB28_2
.LBB28_6:
	movq	32(%r14), %r13
	cmpq	$-1, 80(%r14)
	je	.LBB28_9
# %bb.7:
	movq	64(%r14), %rax
	cmpq	%rax, %r13
	cmovbq	%rax, %r13
	movb	$1, %bl
	movl	$2, %eax
	jmp	.LBB28_10
.LBB28_8:
	movq	32(%r14), %r13
	movl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB28_11
.LBB28_9:
	xorl	%ebx, %ebx
	movl	$1, %eax
.LBB28_10:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB28_11:
	callq	random
	testl	%r12d, %r12d
	je	.LBB28_35
# %bb.12:
	movl	%r12d, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %edi
	xorl	%ecx, %ecx
	movl	%ebx, %esi
	xorb	$1, %sil
	xorl	%ebx, %ebx
	movq	-48(%rbp), %r8          # 8-byte Reload
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB28_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_17 Depth 2
                                        #       Child Loop BB28_24 Depth 3
	subq	$1, %rdi
	jb	.LBB28_36
# %bb.14:                               #   in Loop: Header=BB28_13 Depth=1
	andq	%r13, %rax
	xorl	%r13d, %r13d
	jmp	.LBB28_17
	.p2align	4, 0x90
.LBB28_15:                              #   in Loop: Header=BB28_17 Depth=2
	movq	%rdx, %rax
.LBB28_16:                              #   in Loop: Header=BB28_17 Depth=2
	addq	$1, %r13
	cmpq	%r8, %r13
	jae	.LBB28_33
.LBB28_17:                              #   Parent Loop BB28_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_24 Depth 3
	testq	%r13, %r13
	setne	%dl
	orb	%sil, %dl
	jne	.LBB28_21
# %bb.18:                               #   in Loop: Header=BB28_17 Depth=2
	movq	80(%r14), %rdx
	cmpq	%rdx, %rax
	jae	.LBB28_21
# %bb.19:                               #   in Loop: Header=BB28_17 Depth=2
	cmpq	56(%r14), %rax
	jb	.LBB28_16
	jmp	.LBB28_22
	.p2align	4, 0x90
.LBB28_21:                              #   in Loop: Header=BB28_17 Depth=2
	movq	%rax, %rdx
.LBB28_22:                              #   in Loop: Header=BB28_17 Depth=2
	movq	%r13, %rax
	shlq	$5, %rax
	cmpq	24(%r14,%rax), %rdx
	jae	.LBB28_15
# %bb.23:                               #   in Loop: Header=BB28_17 Depth=2
	movq	16(%r14,%rax), %rax
	movq	(%rax,%rdx,8), %rax
	testq	%rax, %rax
	je	.LBB28_26
	.p2align	4, 0x90
.LBB28_24:                              #   Parent Loop BB28_13 Depth=1
                                        #     Parent Loop BB28_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rax, %rax
	je	.LBB28_29
# %bb.25:                               #   in Loop: Header=BB28_24 Depth=3
	movq	%rax, (%r15)
	addq	$8, %r15
	movq	16(%rax), %rax
	addq	$1, %rbx
	cmpq	%rbx, %r12
	jne	.LBB28_24
	jmp	.LBB28_34
.LBB28_26:                              #   in Loop: Header=BB28_17 Depth=2
	addq	$1, %rcx
	cmpq	$5, %rcx
	jb	.LBB28_15
# %bb.27:                               #   in Loop: Header=BB28_17 Depth=2
	cmpq	%r12, %rcx
	jbe	.LBB28_15
# %bb.28:                               #   in Loop: Header=BB28_17 Depth=2
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	random
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %r8          # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	andq	-64(%rbp), %rax         # 8-byte Folded Reload
	jmp	.LBB28_30
.LBB28_29:                              #   in Loop: Header=BB28_17 Depth=2
	movq	%rdx, %rax
.LBB28_30:                              #   in Loop: Header=BB28_17 Depth=2
	xorl	%ecx, %ecx
	jmp	.LBB28_16
.LBB28_33:                              #   in Loop: Header=BB28_13 Depth=1
	addq	$1, %rax
	cmpq	%r12, %rbx
	movq	-64(%rbp), %r13         # 8-byte Reload
	jb	.LBB28_13
	jmp	.LBB28_36
.LBB28_34:
	movq	%r12, %rbx
	jmp	.LBB28_36
.LBB28_35:
	xorl	%ebx, %ebx
.LBB28_36:
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
.Lfunc_end28:
	.size	dictGetSomeKeys, .Lfunc_end28-dictGetSomeKeys
                                        # -- End function
	.globl	dictScan                # -- Begin function dictScan
	.p2align	4, 0x90
	.type	dictScan,@function
dictScan:                               # @dictScan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB29_2
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB29_20
.LBB29_2:
	movq	%r8, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	leaq	16(%rdi), %rbx
	cmpq	$-1, 80(%rdi)
	je	.LBB29_3
# %bb.9:
	movq	24(%rdi), %rax
	cmpq	56(%rdi), %rax
	leaq	48(%rdi), %rdx
	movq	%rbx, %rax
	cmovaq	%rdx, %rax
	cmovaq	%rbx, %rdx
	movq	%rax, %rbx
	movq	16(%rax), %r13
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	16(%rdx), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	je	.LBB29_10
# %bb.11:
	andq	%r12, %r13
	leaq	(,%r13,8), %rsi
	addq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rcx
	jmp	.LBB29_12
.LBB29_3:
	movq	32(%rdi), %r13
	testq	%rcx, %rcx
	je	.LBB29_4
# %bb.5:
	movq	%r13, %rax
	andq	%r12, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %rsi
	addq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rcx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB29_6
.LBB29_10:
	andq	%r12, %r13
.LBB29_12:
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rsi
	testq	%rsi, %rsi
	je	.LBB29_13
	.p2align	4, 0x90
.LBB29_21:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_21
.LBB29_13:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	notq	%rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r13         # 8-byte Reload
	xorq	%rax, %r13
	jmp	.LBB29_14
	.p2align	4, 0x90
.LBB29_19:                              #   in Loop: Header=BB29_14 Depth=1
	orq	-72(%rbp), %r12         # 8-byte Folded Reload
	bswapq	%r12
	movq	%r12, %rax
	shrq	$4, %rax
	movabsq	$1085102592571150095, %r8 # imm = 0xF0F0F0F0F0F0F0F
	andq	%r8, %rax
	shlq	$4, %r12
	movabsq	$-1085102592571150096, %rbx # imm = 0xF0F0F0F0F0F0F0F0
	andq	%rbx, %r12
	orq	%rax, %r12
	movq	%r12, %rax
	shrq	$2, %rax
	movabsq	$3689348814741910323, %rdi # imm = 0x3333333333333333
	andq	%rdi, %rax
	shlq	$2, %r12
	movabsq	$-3689348814741910324, %rsi # imm = 0xCCCCCCCCCCCCCCCC
	andq	%rsi, %r12
	orq	%rax, %r12
	movq	%r12, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx # imm = 0x5555555555555555
	andq	%rdx, %rax
	addq	%r12, %r12
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	andq	%rcx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	bswapq	%r12
	movq	%r12, %rax
	shrq	$4, %rax
	andq	%r8, %rax
	shlq	$4, %r12
	andq	%rbx, %r12
	orq	%rax, %r12
	movq	%r12, %rax
	shrq	$2, %rax
	andq	%rdi, %rax
	shlq	$2, %r12
	andq	%rsi, %r12
	orq	%rax, %r12
	movq	%r12, %rax
	shrq	%rax
	andq	%rdx, %rax
	addq	%r12, %r12
	andq	%rcx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r12
	je	.LBB29_20
.LBB29_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_18 Depth 2
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %rbx
	je	.LBB29_15
# %bb.16:                               #   in Loop: Header=BB29_14 Depth=1
	andq	-56(%rbp), %rbx         # 8-byte Folded Reload
	leaq	(,%rbx,8), %rsi
	addq	(%rcx), %rsi
	movq	%r14, %rdi
	callq	*%rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB29_17
	.p2align	4, 0x90
.LBB29_15:                              #   in Loop: Header=BB29_14 Depth=1
	andq	-56(%rbp), %rbx         # 8-byte Folded Reload
.LBB29_17:                              #   in Loop: Header=BB29_14 Depth=1
	movq	(%rcx), %rax
	movq	(%rax,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB29_19
	.p2align	4, 0x90
.LBB29_18:                              #   Parent Loop BB29_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_18
	jmp	.LBB29_19
.LBB29_4:
	movq	%r13, %rcx
	andq	%r12, %rcx
.LBB29_6:
	movq	(%rbx), %rax
	movq	(%rax,%rcx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB29_8
	.p2align	4, 0x90
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_7
.LBB29_8:
	notq	%r13
	orq	%r12, %r13
	bswapq	%r13
	movq	%r13, %rax
	shrq	$4, %rax
	movabsq	$1085102592571150095, %r8 # imm = 0xF0F0F0F0F0F0F0F
	andq	%r8, %rax
	shlq	$4, %r13
	movabsq	$-1085102592571150096, %rbx # imm = 0xF0F0F0F0F0F0F0F0
	andq	%rbx, %r13
	orq	%rax, %r13
	movq	%r13, %rax
	shrq	$2, %rax
	movabsq	$3689348814741910323, %rdi # imm = 0x3333333333333333
	andq	%rdi, %rax
	shlq	$2, %r13
	movabsq	$-3689348814741910324, %rsi # imm = 0xCCCCCCCCCCCCCCCC
	andq	%rsi, %r13
	orq	%rax, %r13
	movq	%r13, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx # imm = 0x5555555555555555
	andq	%rdx, %rax
	addq	%r13, %r13
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	andq	%rcx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	bswapq	%r13
	movq	%r13, %rax
	shrq	$4, %rax
	andq	%r8, %rax
	shlq	$4, %r13
	andq	%rbx, %r13
	orq	%rax, %r13
	movq	%r13, %rax
	shrq	$2, %rax
	andq	%rdi, %rax
	shlq	$2, %r13
	andq	%rsi, %r13
	orq	%rax, %r13
	movq	%r13, %rax
	shrq	%rax
	andq	%rdx, %rax
	addq	%r13, %r13
	andq	%rcx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r12
.LBB29_20:
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
.Lfunc_end29:
	.size	dictScan, .Lfunc_end29-dictScan
                                        # -- End function
	.globl	dictEmpty               # -- Begin function dictEmpty
	.p2align	4, 0x90
	.type	dictEmpty,@function
dictEmpty:                              # @dictEmpty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	16(%rdi), %rsi
	movq	%r14, %rdx
	callq	_dictClear
	leaq	48(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	_dictClear
	movq	$-1, %rax
	movq	%rax, %xmm0
	movdqu	%xmm0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	dictEmpty, .Lfunc_end30-dictEmpty
                                        # -- End function
	.globl	dictEnableResize        # -- Begin function dictEnableResize
	.p2align	4, 0x90
	.type	dictEnableResize,@function
dictEnableResize:                       # @dictEnableResize
# %bb.0:
	movb	$0, dict_can_resize(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end31:
	.size	dictEnableResize, .Lfunc_end31-dictEnableResize
                                        # -- End function
	.globl	dictDisableResize       # -- Begin function dictDisableResize
	.p2align	4, 0x90
	.type	dictDisableResize,@function
dictDisableResize:                      # @dictDisableResize
# %bb.0:
	movb	$1, dict_can_resize(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end32:
	.size	dictDisableResize, .Lfunc_end32-dictDisableResize
                                        # -- End function
	.globl	dictGetHash             # -- Begin function dictGetHash
	.p2align	4, 0x90
	.type	dictGetHash,@function
dictGetHash:                            # @dictGetHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rax
	movq	%rsi, %rdi
	callq	*(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end33:
	.size	dictGetHash, .Lfunc_end33-dictGetHash
                                        # -- End function
	.globl	dictFindEntryRefByPtrAndHash # -- Begin function dictFindEntryRefByPtrAndHash
	.p2align	4, 0x90
	.type	dictFindEntryRefByPtrAndHash,@function
dictFindEntryRefByPtrAndHash:           # @dictFindEntryRefByPtrAndHash
# %bb.0:
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	jne	.LBB34_1
.LBB34_11:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB34_1:
	movq	32(%rdi), %rax
	andq	%rdx, %rax
	movq	16(%rdi), %r8
	movq	(%r8,%rax,8), %rcx
	testq	%rcx, %rcx
	je	.LBB34_10
# %bb.2:
	cmpq	%rsi, (%rcx)
	je	.LBB34_3
	.p2align	4, 0x90
.LBB34_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB34_10
# %bb.8:                                #   in Loop: Header=BB34_7 Depth=1
	cmpq	%rsi, (%rcx)
	jne	.LBB34_7
	jmp	.LBB34_9
.LBB34_10:
	cmpq	$-1, 80(%rdi)
	je	.LBB34_11
# %bb.4:
	andq	64(%rdi), %rdx
	movq	48(%rdi), %rax
	movq	(%rax,%rdx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB34_11
# %bb.5:
	cmpq	%rsi, (%rcx)
	je	.LBB34_6
	.p2align	4, 0x90
.LBB34_14:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB34_11
# %bb.13:                               #   in Loop: Header=BB34_14 Depth=1
	cmpq	%rsi, (%rcx)
	jne	.LBB34_14
.LBB34_9:
	addq	$16, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB34_3:
	leaq	(%r8,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB34_6:
	leaq	(%rax,%rdx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end34:
	.size	dictFindEntryRefByPtrAndHash, .Lfunc_end34-dictFindEntryRefByPtrAndHash
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _dictGetStatsHt
.LCPI35_0:
	.long	1120403456              # float 100
	.text
	.globl	_dictGetStatsHt
	.p2align	4, 0x90
	.type	_dictGetStatsHt,@function
_dictGetStatsHt:                        # @_dictGetStatsHt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$408, %rsp              # imm = 0x198
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	24(%rdx), %r10
	testq	%r10, %r10
	je	.LBB35_3
# %bb.1:
	movq	%rdx, %r15
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -448(%rbp)
	movaps	%xmm0, -432(%rbp)
	movaps	%xmm0, -416(%rbp)
	movaps	%xmm0, -400(%rbp)
	movaps	%xmm0, -384(%rbp)
	movaps	%xmm0, -368(%rbp)
	movaps	%xmm0, -352(%rbp)
	movaps	%xmm0, -336(%rbp)
	movaps	%xmm0, -320(%rbp)
	movaps	%xmm0, -304(%rbp)
	movaps	%xmm0, -288(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -64(%rbp)
	movq	8(%rdx), %r9
	testq	%r9, %r9
	je	.LBB35_2
# %bb.4:
	movq	(%r15), %rdx
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	xorl	%r11d, %r11d
	xorl	%esi, %esi
	jmp	.LBB35_5
	.p2align	4, 0x90
.LBB35_34:                              #   in Loop: Header=BB35_5 Depth=1
	addq	$1, -448(%rbp)
.LBB35_9:                               #   in Loop: Header=BB35_5 Depth=1
	addq	$1, %rsi
	cmpq	%r9, %rsi
	jae	.LBB35_10
.LBB35_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_7 Depth 2
	movq	(%rdx,%rsi,8), %rbx
	testq	%rbx, %rbx
	je	.LBB35_34
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB35_5 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB35_7:                               #   Parent Loop BB35_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1, %rdi
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB35_7
# %bb.8:                                #   in Loop: Header=BB35_5 Depth=1
	addq	$1, %r11
	cmpq	$49, %rdi
	movl	$49, %ebx
	cmovbq	%rdi, %rbx
	addq	$1, -448(%rbp,%rbx,8)
	cmpq	%r13, %rdi
	cmovaq	%rdi, %r13
	addq	%rdi, %rax
	jmp	.LBB35_9
.LBB35_3:
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	jmp	.LBB35_33
.LBB35_2:
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%eax, %eax
.LBB35_10:
	testl	%ecx, %ecx
	movl	$.L.str.5, %edx
	movl	$.L.str.6, %r8d
	cmoveq	%rdx, %r8
	testq	%rax, %rax
	js	.LBB35_11
# %bb.12:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	testq	%r11, %r11
	jns	.LBB35_15
.LBB35_14:
	movq	%r11, %rax
	shrq	%rax
	movl	%r11d, %edx
	andl	$1, %edx
	orq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB35_16
.LBB35_11:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rdx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
	testq	%r11, %r11
	js	.LBB35_14
.LBB35_15:
	cvtsi2ss	%r11, %xmm1
.LBB35_16:
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	testq	%r10, %r10
	js	.LBB35_17
# %bb.18:
	cvtsi2ss	%r10, %xmm2
	jmp	.LBB35_19
.LBB35_17:
	movq	%r10, %rax
	shrq	%rax
	movl	%r10d, %edx
	andl	$1, %edx
	orq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm2
	addss	%xmm2, %xmm2
.LBB35_19:
	divss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	subq	$8, %rsp
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movb	$2, %al
	pushq	%r13
	pushq	%r11
	pushq	%r10
	callq	snprintf
	addq	$32, %rsp
	movslq	%eax, %r13
	xorl	%ebx, %ebx
	jmp	.LBB35_20
	.p2align	4, 0x90
.LBB35_27:                              #   in Loop: Header=BB35_20 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
.LBB35_28:                              #   in Loop: Header=BB35_20 Depth=1
	divss	%xmm1, %xmm0
	mulss	.LCPI35_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.7, %edx
	movl	$.L.str.9, %ecx
	movq	%rbx, %r8
	movb	$1, %al
	callq	snprintf
	cltq
	addq	%rax, %r13
.LBB35_29:                              #   in Loop: Header=BB35_20 Depth=1
	addq	$1, %rbx
	cmpq	$49, %rbx
	jae	.LBB35_30
.LBB35_20:                              # =>This Inner Loop Header: Depth=1
	movq	-448(%rbp,%rbx,8), %r9
	testq	%r9, %r9
	je	.LBB35_29
# %bb.21:                               #   in Loop: Header=BB35_20 Depth=1
	cmpq	%r12, %r13
	jae	.LBB35_30
# %bb.22:                               #   in Loop: Header=BB35_20 Depth=1
	testq	%r9, %r9
	js	.LBB35_23
# %bb.24:                               #   in Loop: Header=BB35_20 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r9, %xmm0
	jmp	.LBB35_25
	.p2align	4, 0x90
.LBB35_23:                              #   in Loop: Header=BB35_20 Depth=1
	movq	%r9, %rax
	shrq	%rax
	movl	%r9d, %ecx
	andl	$1, %ecx
	orq	%rax, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
.LBB35_25:                              #   in Loop: Header=BB35_20 Depth=1
	leaq	(%r14,%r13), %rdi
	movq	%r12, %rsi
	subq	%r13, %rsi
	movq	8(%r15), %rax
	testq	%rax, %rax
	jns	.LBB35_27
# %bb.26:                               #   in Loop: Header=BB35_20 Depth=1
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB35_28
.LBB35_30:
	testq	%r12, %r12
	je	.LBB35_32
# %bb.31:
	movb	$0, -1(%r12,%r14)
.LBB35_32:
	movq	%r14, %rdi
	callq	strlen
.LBB35_33:
	movl	$42, __A_VARIABLE(%rip)
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	_dictGetStatsHt, .Lfunc_end35-_dictGetStatsHt
                                        # -- End function
	.globl	dictGetStats            # -- Begin function dictGetStats
	.p2align	4, 0x90
	.type	dictGetStats,@function
dictGetStats:                           # @dictGetStats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	addq	$16, %rdx
	xorl	%ecx, %ecx
	callq	_dictGetStatsHt
	cmpq	$-1, 80(%rbx)
	je	.LBB36_3
# %bb.1:
	movq	%r15, %rsi
	subq	%rax, %rsi
	je	.LBB36_3
# %bb.2:
	addq	%r14, %rax
	addq	$48, %rbx
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movl	$1, %ecx
	callq	_dictGetStatsHt
.LBB36_3:
	testq	%r15, %r15
	je	.LBB36_5
# %bb.4:
	movb	$0, -1(%r15,%r14)
.LBB36_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	dictGetStats, .Lfunc_end36-dictGetStats
                                        # -- End function
	.type	dict_hash_function_seed,@object # @dict_hash_function_seed
	.local	dict_hash_function_seed
	.comm	dict_hash_function_seed,16,16
	.type	dict_can_resize,@object # @dict_can_resize
	.local	dict_can_resize
	.comm	dict_can_resize,1,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"d->ht[0].size > (unsigned long)d->rehashidx"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/dict.c"
	.size	.L.str.1, 72

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"iter->fingerprint == dictFingerprint(iter->d)"
	.size	.L.str.2, 46

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"No stats available for empty dictionaries\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Hash table %d stats (%s):\n table size: %ld\n number of elements: %ld\n different slots: %ld\n max chain length: %ld\n avg chain length (counted): %.02f\n avg chain length (computed): %.02f\n Chain length distribution:\n"
	.size	.L.str.4, 213

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"main hash table"
	.size	.L.str.5, 16

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"rehashing target"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"   %s%ld: %ld (%.02f%%)\n"
	.size	.L.str.7, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
