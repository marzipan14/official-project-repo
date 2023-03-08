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
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpb	$0, dict_can_resize(%rip)
	jne	.LBB5_3
# %bb.1:
	cmpq	$-1, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_3
# %bb.2:
	movq	40(%rdi), %rax
	movl	%eax, %ecx
	cmpl	$4, %eax
	movl	$4, %esi
	cmovgq	%rcx, %rsi
	callq	dictExpand
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	cmpq	$-1, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jne	.LBB6_13
# %bb.1:
	movq	%rdi, %r14
	cmpq	%rsi, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB6_13
# %bb.2:
	movabsq	$9223372036854775806, %rbx # imm = 0x7FFFFFFFFFFFFFFE
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rsi
	jbe	.LBB6_4
# %bb.3:
	addq	$2, %rbx
	jmp	.LBB6_7
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ebx
	cmpq	$5, %rsi
	jb	.LBB6_7
# %bb.5:                                # %.preheader
	movl	$4, %ebx
	.p2align	4, 0x90
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	addq	%rbx, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rbx
	jb	.LBB6_6
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	24(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_12
# %bb.8:
	leaq	-1(%rbx), %r15
	leaq	(,%rbx,8), %rdi
	callq	zcalloc
	cmpq	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_9
# %bb.10:
	movq	%rax, 48(%r14)
	movq	%rbx, 56(%r14)
	movq	%r15, 64(%r14)
	movq	$0, 72(%r14)
	leaq	80(%r14), %rcx
	jmp	.LBB6_11
.LBB6_9:
	leaq	40(%r14), %rcx
	movq	%rax, 16(%r14)
	movq	%rbx, 24(%r14)
	movq	%r15, 32(%r14)
.LBB6_11:
	movq	$0, (%rcx)
	xorl	%eax, %eax
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_13:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB7_15
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB7_2
# %bb.3:
	leal	(%r14,%r14), %eax
	leal	(%rax,%rax,4), %r12d
	movq	40(%r15), %rdx
.LBB7_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_7 Depth 2
                                        #     Child Loop BB7_11 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB7_13
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=1
	cmpq	%rcx, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB7_16
# %bb.6:                                #   in Loop: Header=BB7_4 Depth=1
	addl	$-1, %r14d
	movq	16(%r15), %rax
	addq	$1, %rcx
	.p2align	4, 0x90
.LBB7_7:                                #   Parent Loop BB7_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rax,%rcx,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB7_10
# %bb.8:                                #   in Loop: Header=BB7_7 Depth=2
	movq	%rcx, 80(%r15)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	jne	.LBB7_7
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB7_11:                               #   Parent Loop BB7_4 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rbx
	testq	%r13, %r13
	jne	.LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_4 Depth=1
	movq	16(%r15), %rax
	movq	80(%r15), %rcx
	movq	$0, (%rax,%rcx,8)
	addq	$1, %rcx
	movq	%rcx, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jne	.LBB7_4
	jmp	.LBB7_13
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB7_15
.LBB7_2:
	movq	40(%r15), %rdx
.LBB7_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	jne	.LBB7_15
# %bb.14:
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
.LBB7_15:
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
.LBB7_16:
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_1
# %bb.2:
	movq	%rax, %r15
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_4
# %bb.3:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
.LBB10_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 8(%r15)
	xorl	%eax, %eax
	jmp	.LBB10_5
.LBB10_1:
	movl	$1, %eax
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpq	$-1, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_4
# %bb.1:
	cmpq	$0, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	dictRehash
	movl	$42, __A_VARIABLE(%rip)
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_4:
	leaq	80(%rbx), %r12
	movq	(%rbx), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB11_6
# %bb.5:
	movq	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_6:
	cmpq	$-1, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_7
.LBB11_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_19:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %r12
	movq	%r13, %r15
	andq	%r13, %r12
	movq	16(%rbx), %rax
	movq	(%rax,%r12,8), %r13
	jmp	.LBB11_20
	.p2align	4, 0x90
.LBB11_28:                              #   in Loop: Header=BB11_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_29:                              #   in Loop: Header=BB11_20 Depth=1
	movq	16(%r13), %r13
.LBB11_20:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB11_30
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=1
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	je	.LBB11_24
# %bb.22:                               #   in Loop: Header=BB11_20 Depth=1
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_28
# %bb.23:                               #   in Loop: Header=BB11_20 Depth=1
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_29
	jmp	.LBB11_24
.LBB11_30:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB11_31
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andq	64(%rbx), %r15
	movq	48(%rbx), %rcx
	movq	%r15, %r12
	movq	(%rcx,%r15,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB11_40
# %bb.33:
	movq	$-1, %r15
	jmp	.LBB11_34
	.p2align	4, 0x90
.LBB11_37:                              #   in Loop: Header=BB11_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_38:                              #   in Loop: Header=BB11_34 Depth=1
	movq	16(%r13), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB11_39
.LBB11_34:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	je	.LBB11_24
# %bb.35:                               #   in Loop: Header=BB11_34 Depth=1
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_37
# %bb.36:                               #   in Loop: Header=BB11_34 Depth=1
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_38
.LBB11_24:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_26
# %bb.25:
	movq	%r13, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB11_48
.LBB11_7:
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_8
# %bb.14:
	movq	40(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jb	.LBB11_50
# %bb.15:
	movb	dict_can_resize(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, %al
	jne	.LBB11_17
# %bb.16:
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$6, %rax
	jb	.LBB11_50
.LBB11_17:
	addq	%rsi, %rsi
	movq	%rbx, %rdi
	callq	dictExpand
	jmp	.LBB11_18
.LBB11_31:
	movq	%r12, %r13
	movq	$-1, %r15
	jmp	.LBB11_43
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	ja	.LBB11_13
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %edi
	callq	zcalloc
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_10
# %bb.11:
	movq	%rax, 48(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [4,3]
	movups	%xmm0, 56(%rbx)
	movq	$0, 72(%rbx)
	movq	%r12, %rcx
	jmp	.LBB11_12
.LBB11_40:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_41
.LBB11_39:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB11_42
.LBB11_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
.LBB11_42:
	movq	%r12, %r13
.LBB11_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r13
	je	.LBB11_44
# %bb.45:
	leaq	48(%rbx), %r12
	leaq	16(%rbx), %rax
	cmpq	$-1, %r15
	cmoveq	%rax, %r12
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	(%r12), %rax
	movq	(%rax,%r13,8), %rcx
	movq	%rcx, 16(%r15)
	movq	%r15, (%rax,%r13,8)
	addq	$1, 24(%r12)
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB11_47
# %bb.46:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
.LBB11_47:
	movq	%r14, (%r15)
.LBB11_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_49:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB11_44:
	xorl	%r15d, %r15d
	jmp	.LBB11_49
.LBB11_10:
	leaq	40(%rbx), %rcx
	movq	%rax, 16(%rbx)
	movaps	.LCPI11_0(%rip), %xmm0  # xmm0 = [4,3]
	movups	%xmm0, 24(%rbx)
.LBB11_12:
	movq	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB11_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_19
	jmp	.LBB11_27
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
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rdi, %rbx
	leaq	-32(%rbp), %rdx
	callq	dictAddRaw
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_4
# %bb.1:
	movq	%rax, %r15
	movq	(%rbx), %rax
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB12_3
# %bb.2:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, 8(%r15)
	movl	$1, %r14d
	jmp	.LBB12_9
.LBB12_4:
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %r15
	movq	(%rbx), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_6
# %bb.5:
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB12_7
.LBB12_6:
	movq	%r14, 8(%rcx)
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	40(%rax), %rax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_9
# %bb.8:
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_2
# %bb.1:
	cmpq	$0, 72(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_27
.LBB15_2:
	cmpq	$-1, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_6
# %bb.3:
	cmpq	$0, 88(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_5
# %bb.4:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	dictRehash
	movl	$42, __A_VARIABLE(%rip)
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_6:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	(%r15), %rax
	movq	%r12, %rdi
	callq	*(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r15), %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	andq	%rax, %rcx
	movq	16(%r15), %rax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	(%rax,%rcx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB15_14
# %bb.7:
	leaq	16(%r15), %rax
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB15_24
# %bb.8:                                # %.preheader2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %r14
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_11
# %bb.10:                               #   in Loop: Header=BB15_9 Depth=1
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_12
	jmp	.LBB15_29
	.p2align	4, 0x90
.LBB15_11:                              #   in Loop: Header=BB15_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB15_12:                              #   in Loop: Header=BB15_9 Depth=1
	movq	16(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_9 Depth=1
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	cmpq	%r12, %rdx
	jne	.LBB15_9
	jmp	.LBB15_30
.LBB15_14:
	cmpq	$-1, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_27
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	andq	64(%r15), %rcx
	movq	48(%r15), %rax
	movq	(%rax,%rcx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB15_28
# %bb.16:
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	48(%r15), %rax
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpq	%r12, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	je	.LBB15_25
# %bb.17:                               # %.preheader
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB15_18:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rbx
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_20
# %bb.19:                               #   in Loop: Header=BB15_18 Depth=1
	movq	8(%r15), %rdi
	movq	%r12, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_21
	jmp	.LBB15_33
	.p2align	4, 0x90
.LBB15_20:                              #   in Loop: Header=BB15_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB15_21:                              #   in Loop: Header=BB15_18 Depth=1
	movq	16(%rbx), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB15_31
# %bb.22:                               #   in Loop: Header=BB15_18 Depth=1
	movq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	cmpq	%r12, %rdx
	jne	.LBB15_18
# %bb.23:
	movq	%rbx, %r14
	jmp	.LBB15_34
.LBB15_24:
	xorl	%ebx, %ebx
.LBB15_25:
	xorl	%r14d, %r14d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB15_35
.LBB15_28:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_32
.LBB15_29:
	movq	%r14, %r13
	movq	%rbx, %r14
.LBB15_30:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	xorl	%ebx, %ebx
	jmp	.LBB15_35
.LBB15_31:
	cmpq	$-1, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_27
.LBB15_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB15_45
.LBB15_27:
	xorl	%r13d, %r13d
	jmp	.LBB15_45
.LBB15_33:
	movq	%rbx, %r13
.LBB15_34:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	$1, %ebx
.LBB15_35:
	movq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB15_37
# %bb.36:
	addq	$16, %r14
	jmp	.LBB15_38
.LBB15_37:
	movq	-64(%rbp), %r14         # 8-byte Reload
	shlq	$3, %r14
	movq	-56(%rbp), %rdx         # 8-byte Reload
	addq	(%rdx), %r14
.LBB15_38:
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB15_44
# %bb.39:
	movq	(%r15), %rcx
	movq	32(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_41
# %bb.40:
	movq	8(%r15), %rdi
	movq	(%r13), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
.LBB15_41:
	movq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_43
# %bb.42:
	movq	8(%r15), %rdi
	movq	8(%r13), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB15_43:
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB15_44:
	shlq	$5, %rbx
	addq	$-1, 40(%r15,%rbx)
.LBB15_45:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB17_6
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rdi), %rcx
	movq	32(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_3
# %bb.2:
	movq	8(%r14), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rcx
.LBB17_3:
	movq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB17_5
# %bb.4:
	movq	8(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB17_5:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_14
# %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %r12
	xorl	%r13d, %r13d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB18_2
	.p2align	4, 0x90
.LBB18_12:                              #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
.LBB18_13:                              #   in Loop: Header=BB18_2 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	8(%r15), %r13
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB18_14
.LBB18_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_7 Depth 2
	cmpq	$0, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_14
# %bb.3:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB18_6
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	jne	.LBB18_6
# %bb.5:                                #   in Loop: Header=BB18_2 Depth=1
	movq	8(%r12), %rdi
	callq	*%r14
	movl	$42, __A_VARIABLE(%rip)
.LBB18_6:                               #   in Loop: Header=BB18_2 Depth=1
	movq	(%r15), %rax
	movq	(%rax,%r13,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB18_7
	jmp	.LBB18_13
	.p2align	4, 0x90
.LBB18_11:                              #   in Loop: Header=BB18_7 Depth=2
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	testq	%r14, %r14
	je	.LBB18_12
.LBB18_7:                               #   Parent Loop BB18_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r14
	movq	(%r12), %rcx
	movq	32(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_9
# %bb.8:                                #   in Loop: Header=BB18_7 Depth=2
	movq	8(%r12), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rcx
.LBB18_9:                               #   in Loop: Header=BB18_7 Depth=2
	movq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_11
# %bb.10:                               #   in Loop: Header=BB18_7 Depth=2
	movq	8(%r12), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_11
.LBB18_14:
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_1
.LBB20_22:
	xorl	%ebx, %ebx
.LBB20_23:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_5
# %bb.2:
	cmpq	$0, 88(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_4
# %bb.3:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	dictRehash
	movl	$42, __A_VARIABLE(%rip)
.LBB20_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_5:
	movq	(%r15), %rax
	movq	%r14, %rdi
	callq	*(%rax)
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r15), %rax
	andq	%r12, %rax
	movq	16(%r15), %rcx
	movq	(%rcx,%rax,8), %rbx
	jmp	.LBB20_6
	.p2align	4, 0x90
.LBB20_10:                              #   in Loop: Header=BB20_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB20_11:                              #   in Loop: Header=BB20_6 Depth=1
	movq	16(%rbx), %rbx
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB20_12
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	movq	(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	je	.LBB20_23
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=1
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_6 Depth=1
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB20_11
	jmp	.LBB20_23
.LBB20_12:
	cmpq	$-1, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_22
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andq	64(%r15), %r12
	movq	48(%r15), %rax
	movq	(%rax,%r12,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB20_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_15
	.p2align	4, 0x90
.LBB20_19:                              #   in Loop: Header=BB20_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB20_20:                              #   in Loop: Header=BB20_16 Depth=1
	movq	16(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB20_21
.LBB20_16:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rdx
	je	.LBB20_23
# %bb.17:                               #   in Loop: Header=BB20_16 Depth=1
	movq	(%r15), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_19
# %bb.18:                               #   in Loop: Header=BB20_16 Depth=1
	movq	8(%r15), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB20_20
	jmp	.LBB20_23
.LBB20_21:
	cmpq	$-1, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_22
.LBB20_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_22
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_1
# %bb.2:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdi), %rax
	jmp	.LBB25_1
	.p2align	4, 0x90
.LBB25_13:                              #   in Loop: Header=BB25_1 Depth=1
	movq	32(%rbx), %rax
	movq	%rax, 24(%rbx)
.LBB25_14:                              #   in Loop: Header=BB25_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB25_15
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB25_13
# %bb.2:                                #   in Loop: Header=BB25_1 Depth=1
	movq	(%rbx), %r14
	movq	8(%rbx), %rax
	movslq	16(%rbx), %rcx
	movq	%rcx, %r15
	shlq	$5, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB25_7
# %bb.3:                                #   in Loop: Header=BB25_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	testl	%ecx, %ecx
	jne	.LBB25_7
# %bb.4:                                #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB25_6
# %bb.5:                                #   in Loop: Header=BB25_1 Depth=1
	addq	$1, 88(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_7
.LBB25_6:                               #   in Loop: Header=BB25_1 Depth=1
	movq	%r14, %rdi
	callq	dictFingerprint
	movq	%rax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rax
	.p2align	4, 0x90
.LBB25_7:                               #   in Loop: Header=BB25_1 Depth=1
	addq	$1, %rax
	movq	%rax, 8(%rbx)
	cmpq	24(%r14,%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB25_9
# %bb.8:                                #   in Loop: Header=BB25_1 Depth=1
	leaq	(%r14,%r15), %rcx
	addq	$16, %rcx
	jmp	.LBB25_12
.LBB25_9:                               #   in Loop: Header=BB25_1 Depth=1
	movq	(%rbx), %rcx
	cmpq	$-1, 80(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB25_17
# %bb.10:                               #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_17
# %bb.11:                               #   in Loop: Header=BB25_1 Depth=1
	movl	$1, 16(%rbx)
	movq	$0, 8(%rbx)
	addq	$48, %rcx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB25_12:                              #   in Loop: Header=BB25_1 Depth=1
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_14
.LBB25_15:
	movq	16(%rax), %rcx
	movq	%rcx, 32(%rbx)
	jmp	.LBB25_16
.LBB25_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB25_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_2
# %bb.1:
	cmpl	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_5
.LBB26_2:
	cmpl	$0, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_4
# %bb.3:
	movq	(%rbx), %rax
	addq	$-1, 88(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_5
.LBB26_4:
	movq	(%rbx), %rdi
	movq	40(%rbx), %r14
	callq	dictFingerprint
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB27_2
# %bb.1:
	xorl	%r15d, %r15d
	jmp	.LBB27_21
.LBB27_2:
	movq	%rdi, %r14
	movq	80(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB27_10
# %bb.3:
	cmpq	$0, 88(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB27_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_6
.LBB27_10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_11
.LBB27_5:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	dictRehash
	movl	$42, __A_VARIABLE(%rip)
	movq	80(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jne	.LBB27_6
	.p2align	4, 0x90
.LBB27_11:                              # =>This Inner Loop Header: Depth=1
	callq	random
	andq	32(%r14), %rax
	movq	16(%r14), %rcx
	movq	(%rcx,%rax,8), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB27_11
.LBB27_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	%r15, %rax
	.p2align	4, 0x90
.LBB27_13:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB27_13
# %bb.14:
	callq	random
	cqto
	idivq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB27_21
# %bb.15:
	leal	-1(%rdx), %eax
	movl	%edx, %ecx
	andl	$3, %ecx
	je	.LBB27_19
# %bb.16:                               # %.preheader1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB27_17:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %esi
	cmpl	%esi, %ecx
	jne	.LBB27_17
# %bb.18:                               # %.loopexit2
	subl	%esi, %edx
.LBB27_19:
	cmpl	$3, %eax
	jb	.LBB27_21
	.p2align	4, 0x90
.LBB27_20:                              # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-4, %edx
	jne	.LBB27_20
.LBB27_21:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB27_12
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
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	movl	%edx, %r13d
	movq	%rsi, %r15
	movl	%edx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jae	.LBB28_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r12d
	movl	%eax, %r13d
.LBB28_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB28_8
# %bb.3:
	xorl	%ebx, %ebx
	jmp	.LBB28_5
	.p2align	4, 0x90
.LBB28_4:                               #   in Loop: Header=BB28_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jae	.LBB28_8
.LBB28_5:                               # =>This Inner Loop Header: Depth=1
	cmpq	$-1, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_11
# %bb.6:                                #   in Loop: Header=BB28_5 Depth=1
	cmpq	$0, 88(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_4
# %bb.7:                                #   in Loop: Header=BB28_5 Depth=1
	movq	%r14, %rdi
	movl	$1, %esi
	callq	dictRehash
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_4
.LBB28_8:
	movq	32(%r14), %rcx
	cmpq	$-1, 80(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_12
# %bb.9:
	movq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB28_13
# %bb.10:
	movl	$2, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movb	$1, %bl
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB28_14
.LBB28_11:
	movq	32(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	jmp	.LBB28_14
.LBB28_12:
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	xorl	%ebx, %ebx
	movl	$1, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB28_14
.LBB28_13:
	movl	$2, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movb	$1, %bl
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB28_14:
	callq	random
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB28_38
# %bb.15:
	addl	%r13d, %r13d
	leal	(%r13,%r13,4), %edx
	xorl	%r9d, %r9d
	movl	%ebx, %edi
	xorb	$1, %dil
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB28_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_18 Depth 2
                                        #       Child Loop BB28_27 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rdx
	jb	.LBB28_39
# %bb.17:                               #   in Loop: Header=BB28_16 Depth=1
	andq	%r8, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB28_18:                              #   Parent Loop BB28_16 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB28_27 Depth 3
	testq	%r13, %r13
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	orb	%dil, %cl
	jne	.LBB28_23
# %bb.19:                               #   in Loop: Header=BB28_18 Depth=2
	movq	80(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB28_23
# %bb.20:                               #   in Loop: Header=BB28_18 Depth=2
	cmpq	56(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB28_35
# %bb.21:                               #   in Loop: Header=BB28_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB28_24
	.p2align	4, 0x90
.LBB28_23:                              #   in Loop: Header=BB28_18 Depth=2
	movq	%rax, %rcx
.LBB28_24:                              #   in Loop: Header=BB28_18 Depth=2
	movq	%r13, %rax
	shlq	$5, %rax
	cmpq	24(%r14,%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB28_34
# %bb.25:                               #   in Loop: Header=BB28_18 Depth=2
	movq	16(%r14,%rax), %rax
	movq	(%rax,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_29
# %bb.26:                               #   in Loop: Header=BB28_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB28_27:                              #   Parent Loop BB28_16 Depth=1
                                        #     Parent Loop BB28_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB28_32
# %bb.28:                               #   in Loop: Header=BB28_27 Depth=3
	movq	%rax, (%r15)
	addq	$8, %r15
	movq	16(%rax), %rax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r12
	jne	.LBB28_27
	jmp	.LBB28_37
.LBB28_29:                              #   in Loop: Header=BB28_18 Depth=2
	addq	$1, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r9
	jb	.LBB28_33
# %bb.30:                               #   in Loop: Header=BB28_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r9
	jbe	.LBB28_33
# %bb.31:                               #   in Loop: Header=BB28_18 Depth=2
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	callq	random
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-60(%rbp), %edi         # 4-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rax, %rcx
	andq	%r8, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB28_32:                              #   in Loop: Header=BB28_18 Depth=2
	xorl	%r9d, %r9d
.LBB28_33:                              #   in Loop: Header=BB28_18 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_34:                              #   in Loop: Header=BB28_18 Depth=2
	movq	%rcx, %rax
.LBB28_35:                              #   in Loop: Header=BB28_18 Depth=2
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r13
	jb	.LBB28_18
# %bb.36:                               #   in Loop: Header=BB28_16 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rbx
	jb	.LBB28_16
	jmp	.LBB28_39
.LBB28_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	jmp	.LBB28_39
.LBB28_38:
	xorl	%ebx, %ebx
.LBB28_39:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_2
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB29_22
.LBB29_2:
	movq	%r8, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	leaq	16(%rdi), %rbx
	cmpq	$-1, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_3
# %bb.9:
	movq	24(%rdi), %rax
	leaq	48(%rdi), %rdx
	cmpq	56(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB29_11
# %bb.10:
	movq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rbx
	movq	%rax, %rdx
.LBB29_11:
	movq	16(%rbx), %r13
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	16(%rdx), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	je	.LBB29_12
# %bb.13:
	andq	%r12, %r13
	leaq	(,%r13,8), %rsi
	addq	(%rbx), %rsi
	movq	%r14, %rdi
	callq	*%rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_14
.LBB29_3:
	movq	32(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_6
.LBB29_12:
	andq	%r12, %r13
.LBB29_14:
	movq	(%rbx), %rax
	movq	(%rax,%r13,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_15
	.p2align	4, 0x90
.LBB29_23:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_23
.LBB29_15:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	notq	%rcx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r13         # 8-byte Reload
	xorq	%rax, %r13
	jmp	.LBB29_16
	.p2align	4, 0x90
.LBB29_21:                              #   in Loop: Header=BB29_16 Depth=1
	orq	-72(%rbp), %r12         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	bswapq	%r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	$4, %rax
	movabsq	$1085102592571150095, %r8 # imm = 0xF0F0F0F0F0F0F0F
	andq	%r8, %rax
	shlq	$4, %r12
	movabsq	$-1085102592571150096, %rbx # imm = 0xF0F0F0F0F0F0F0F0
	andq	%rbx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	$2, %rax
	movabsq	$3689348814741910323, %rdi # imm = 0x3333333333333333
	andq	%rdi, %rax
	shlq	$2, %r12
	movabsq	$-3689348814741910324, %rsi # imm = 0xCCCCCCCCCCCCCCCC
	andq	%rsi, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx # imm = 0x5555555555555555
	andq	%rdx, %rax
	addq	%r12, %r12
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	andq	%rcx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	bswapq	%r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	$4, %rax
	andq	%r8, %rax
	shlq	$4, %r12
	andq	%rbx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	$2, %rax
	andq	%rdi, %rax
	shlq	$2, %r12
	andq	%rsi, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	shrq	%rax
	andq	%rdx, %rax
	addq	%r12, %r12
	andq	%rcx, %r12
	orq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r12
	je	.LBB29_22
.LBB29_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB29_20 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%r12, %rbx
	je	.LBB29_17
# %bb.18:                               #   in Loop: Header=BB29_16 Depth=1
	andq	-56(%rbp), %rbx         # 8-byte Folded Reload
	leaq	(,%rbx,8), %rsi
	addq	(%rcx), %rsi
	movq	%r14, %rdi
	callq	*%rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_19
	.p2align	4, 0x90
.LBB29_17:                              #   in Loop: Header=BB29_16 Depth=1
	andq	-56(%rbp), %rbx         # 8-byte Folded Reload
.LBB29_19:                              #   in Loop: Header=BB29_16 Depth=1
	movq	(%rcx), %rax
	movq	(%rax,%rbx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_21
	.p2align	4, 0x90
.LBB29_20:                              #   Parent Loop BB29_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_20
	jmp	.LBB29_21
.LBB29_4:
	movq	%r13, %rcx
	andq	%r12, %rcx
.LBB29_6:
	movq	(%rbx), %rax
	movq	(%rax,%rcx,8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB29_8
	.p2align	4, 0x90
.LBB29_7:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rbx
	movq	%r14, %rdi
	callq	*%r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	testq	%rbx, %rbx
	jne	.LBB29_7
.LBB29_8:
	notq	%r13
	orq	%r12, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	bswapq	%r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	$4, %rax
	movabsq	$1085102592571150095, %r8 # imm = 0xF0F0F0F0F0F0F0F
	andq	%r8, %rax
	shlq	$4, %r13
	movabsq	$-1085102592571150096, %rbx # imm = 0xF0F0F0F0F0F0F0F0
	andq	%rbx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	$2, %rax
	movabsq	$3689348814741910323, %rdi # imm = 0x3333333333333333
	andq	%rdi, %rax
	shlq	$2, %r13
	movabsq	$-3689348814741910324, %rsi # imm = 0xCCCCCCCCCCCCCCCC
	andq	%rsi, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	%rax
	movabsq	$6148914691236517205, %rdx # imm = 0x5555555555555555
	andq	%rdx, %rax
	addq	%r13, %r13
	movabsq	$-6148914691236517206, %rcx # imm = 0xAAAAAAAAAAAAAAAA
	andq	%rcx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	bswapq	%r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	$4, %rax
	andq	%r8, %rax
	shlq	$4, %r13
	andq	%rbx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	$2, %rax
	andq	%rdi, %rax
	shlq	$2, %r13
	andq	%rsi, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	shrq	%rax
	andq	%rdx, %rax
	addq	%r13, %r13
	andq	%rcx, %r13
	orq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r12
.LBB29_22:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_2
.LBB34_1:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB34_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %rax
	andq	%rdx, %rax
	movq	16(%rdi), %r8
	movq	(%r8,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB34_6
# %bb.3:
	cmpq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_12
	.p2align	4, 0x90
.LBB34_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB34_6
# %bb.5:                                #   in Loop: Header=BB34_4 Depth=1
	cmpq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_4
	jmp	.LBB34_11
.LBB34_6:
	cmpq	$-1, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_1
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	andq	64(%rdi), %rdx
	movq	48(%rdi), %rax
	movq	(%rax,%rdx,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB34_14
# %bb.8:
	cmpq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_15
	.p2align	4, 0x90
.LBB34_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB34_14
# %bb.10:                               #   in Loop: Header=BB34_9 Depth=1
	cmpq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_9
.LBB34_11:
	addq	$16, %rax
	jmp	.LBB34_16
.LBB34_12:
	leaq	(%r8,%rax,8), %rax
	jmp	.LBB34_16
.LBB34_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_1
.LBB34_15:
	leaq	(%rax,%rdx,8), %rax
.LBB34_16:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB35_1
# %bb.2:
	movq	%rdx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB35_3:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -480(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -464(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movups	%xmm0, -456(%rbp,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$5, %rax
	cmpq	$54, %rax
	jne	.LBB35_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB35_5
# %bb.6:
	movq	(%r15), %rdx
	xorl	%eax, %eax
	xorl	%r11d, %r11d
	xorl	%r13d, %r13d
	xorl	%esi, %esi
	jmp	.LBB35_7
	.p2align	4, 0x90
.LBB35_13:                              #   in Loop: Header=BB35_7 Depth=1
	addq	$1, %r13
	addq	%rdi, %rax
.LBB35_14:                              #   in Loop: Header=BB35_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rsi
	jae	.LBB35_15
.LBB35_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB35_10 Depth 2
	movq	(%rdx,%rsi,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB35_8
# %bb.9:                                #   in Loop: Header=BB35_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB35_10:                              #   Parent Loop BB35_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1, %rdi
	movq	16(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB35_10
# %bb.11:                               #   in Loop: Header=BB35_7 Depth=1
	cmpq	$49, %rdi
	movl	$49, %ebx
	cmovbq	%rdi, %rbx
	addq	$1, -448(%rbp,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r11, %rdi
	jbe	.LBB35_13
# %bb.12:                               #   in Loop: Header=BB35_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %r11
	jmp	.LBB35_13
	.p2align	4, 0x90
.LBB35_8:                               #   in Loop: Header=BB35_7 Depth=1
	addq	$1, -448(%rbp)
	jmp	.LBB35_14
.LBB35_1:
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	jmp	.LBB35_38
.LBB35_5:
	xorl	%r13d, %r13d
	xorl	%r11d, %r11d
	xorl	%eax, %eax
.LBB35_15:
	testl	%ecx, %ecx
	movl	$.L.str.5, %edx
	movl	$.L.str.6, %r8d
	cmoveq	%rdx, %r8
	testq	%rax, %rax
	js	.LBB35_16
# %bb.17:
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	testq	%r13, %r13
	jns	.LBB35_20
.LBB35_19:
	movq	%r13, %rax
	shrq	%rax
	movl	%r13d, %edx
	andl	$1, %edx
	orq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB35_21
.LBB35_16:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rdx, %rax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm0
	addss	%xmm0, %xmm0
	testq	%r13, %r13
	js	.LBB35_19
.LBB35_20:
	cvtsi2ss	%r13, %xmm1
.LBB35_21:
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	testq	%r10, %r10
	js	.LBB35_22
# %bb.23:
	cvtsi2ss	%r10, %xmm2
	jmp	.LBB35_24
.LBB35_22:
	movq	%r10, %rax
	shrq	%rax
	movl	%r10d, %edx
	andl	$1, %edx
	orq	%rax, %rdx
	cvtsi2ss	%rdx, %xmm2
	addss	%xmm2, %xmm2
.LBB35_24:
	divss	%xmm1, %xmm2
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm2, %xmm1
	subq	$8, %rsp
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movb	$2, %al
	pushq	%r11
	pushq	%r13
	pushq	%r10
	callq	snprintf
	addq	$32, %rsp
	movslq	%eax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB35_25
	.p2align	4, 0x90
.LBB35_32:                              #   in Loop: Header=BB35_25 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
.LBB35_33:                              #   in Loop: Header=BB35_25 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB35_34:                              #   in Loop: Header=BB35_25 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$49, %rbx
	jae	.LBB35_35
.LBB35_25:                              # =>This Inner Loop Header: Depth=1
	movq	-448(%rbp,%rbx,8), %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB35_34
# %bb.26:                               #   in Loop: Header=BB35_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r13
	jae	.LBB35_35
# %bb.27:                               #   in Loop: Header=BB35_25 Depth=1
	testq	%r9, %r9
	js	.LBB35_28
# %bb.29:                               #   in Loop: Header=BB35_25 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r9, %xmm0
	jmp	.LBB35_30
	.p2align	4, 0x90
.LBB35_28:                              #   in Loop: Header=BB35_25 Depth=1
	movq	%r9, %rax
	shrq	%rax
	movl	%r9d, %ecx
	andl	$1, %ecx
	orq	%rax, %rcx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
.LBB35_30:                              #   in Loop: Header=BB35_25 Depth=1
	leaq	(%r14,%r13), %rdi
	movq	%r12, %rsi
	subq	%r13, %rsi
	movq	8(%r15), %rax
	testq	%rax, %rax
	jns	.LBB35_32
# %bb.31:                               #   in Loop: Header=BB35_25 Depth=1
	movq	%rax, %rcx
	shrq	%rcx
	andl	$1, %eax
	orq	%rcx, %rax
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rax, %xmm1
	addss	%xmm1, %xmm1
	jmp	.LBB35_33
.LBB35_35:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB35_37
# %bb.36:
	movb	$0, -1(%r12,%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB35_37:
	movq	%r14, %rdi
	callq	strlen
.LBB35_38:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB36_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB36_5
# %bb.4:
	movb	$0, -1(%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
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
