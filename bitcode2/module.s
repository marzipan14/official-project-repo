	.text
	.file	"module.c"
	.globl	RM_Alloc                # -- Begin function RM_Alloc
	.p2align	4, 0x90
	.type	RM_Alloc,@function
RM_Alloc:                               # @RM_Alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	RM_Alloc, .Lfunc_end0-RM_Alloc
                                        # -- End function
	.globl	RM_Calloc               # -- Begin function RM_Calloc
	.p2align	4, 0x90
	.type	RM_Calloc,@function
RM_Calloc:                              # @RM_Calloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	imulq	%rsi, %rdi
	callq	zcalloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	RM_Calloc, .Lfunc_end1-RM_Calloc
                                        # -- End function
	.globl	RM_Realloc              # -- Begin function RM_Realloc
	.p2align	4, 0x90
	.type	RM_Realloc,@function
RM_Realloc:                             # @RM_Realloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	RM_Realloc, .Lfunc_end2-RM_Realloc
                                        # -- End function
	.globl	RM_Free                 # -- Begin function RM_Free
	.p2align	4, 0x90
	.type	RM_Free,@function
RM_Free:                                # @RM_Free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	RM_Free, .Lfunc_end3-RM_Free
                                        # -- End function
	.globl	RM_Strdup               # -- Begin function RM_Strdup
	.p2align	4, 0x90
	.type	RM_Strdup,@function
RM_Strdup:                              # @RM_Strdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zstrdup
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	RM_Strdup, .Lfunc_end4-RM_Strdup
                                        # -- End function
	.globl	poolAllocRelease        # -- Begin function poolAllocRelease
	.p2align	4, 0x90
	.type	poolAllocRelease,@function
poolAllocRelease:                       # @poolAllocRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	96(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_2
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rbx
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB5_1
.LBB5_2:
	movq	$0, 96(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	poolAllocRelease, .Lfunc_end5-poolAllocRelease
                                        # -- End function
	.globl	RM_PoolAlloc            # -- Begin function RM_PoolAlloc
	.p2align	4, 0x90
	.type	RM_PoolAlloc,@function
RM_PoolAlloc:                           # @RM_PoolAlloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB6_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	96(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB6_3
# %bb.4:
	movl	(%rcx), %eax
	subl	4(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_5
.LBB6_1:
	xorl	%eax, %eax
	jmp	.LBB6_21
.LBB6_3:
	xorl	%eax, %eax
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB6_16
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edi
	cmpq	$7, %rbx
	ja	.LBB6_10
# %bb.7:                                # %.preheader
	movl	$8, %eax
	.p2align	4, 0x90
.LBB6_8:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rdi
	shrq	%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jb	.LBB6_10
# %bb.9:                                #   in Loop: Header=BB6_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	ja	.LBB6_8
.LBB6_10:
	movl	4(%rcx), %esi
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB6_12
# %bb.11:
	subl	%edx, %edi
	addl	%esi, %edi
	movl	%edi, 4(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %esi
.LBB6_12:
	movl	(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%esi, %eax
	jae	.LBB6_14
# %bb.13:
	xorl	%eax, %eax
	jmp	.LBB6_15
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jae	.LBB6_20
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8192, %r15d            # imm = 0x2000
	cmpq	$8193, %rbx             # imm = 0x2001
	jb	.LBB6_19
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
.LBB6_19:
	leaq	16(%r15), %rdi
	callq	zmalloc
	movq	%rax, %rcx
	movl	%r15d, (%rax)
	movl	$0, 4(%rax)
	movq	96(%r14), %rax
	movq	%rax, 8(%rcx)
	movq	%rcx, 96(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_20:
	movl	4(%rcx), %edx
	leaq	(%rcx,%rdx), %rax
	addq	$16, %rax
	addl	%edx, %ebx
	movl	%ebx, 4(%rcx)
.LBB6_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	RM_PoolAlloc, .Lfunc_end6-RM_PoolAlloc
                                        # -- End function
	.globl	moduleCreateEmptyKey    # -- Begin function moduleCreateEmptyKey
	.p2align	4, 0x90
	.type	moduleCreateEmptyKey,@function
moduleCreateEmptyKey:                   # @moduleCreateEmptyKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB7_10
# %bb.1:
	movq	%rdi, %rbx
	cmpq	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_10
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %esi
	je	.LBB7_6
# %bb.3:
	cmpl	$3, %esi
	je	.LBB7_7
# %bb.4:
	cmpl	$2, %esi
	jne	.LBB7_10
# %bb.5:
	callq	createQuicklistObject
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	jmp	.LBB7_9
.LBB7_6:
	callq	createZsetZiplistObject
	jmp	.LBB7_8
.LBB7_7:
	callq	createHashObject
.LBB7_8:
	movq	%rax, %r14
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%r14, %rdx
	callq	dbAdd
	movq	%r14, 24(%rbx)
	xorl	%eax, %eax
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	moduleCreateEmptyKey, .Lfunc_end7-moduleCreateEmptyKey
                                        # -- End function
	.globl	moduleDelKeyIfEmpty     # -- Begin function moduleDelKeyIfEmpty
	.p2align	4, 0x90
	.type	moduleDelKeyIfEmpty,@function
moduleDelKeyIfEmpty:                    # @moduleDelKeyIfEmpty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	xorl	%eax, %eax
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_12
# %bb.1:
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_12
# %bb.2:
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$15, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB8_7
# %bb.3:
	movzbl	%al, %eax
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_8:
	callq	listTypeLength
	jmp	.LBB8_9
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB8_11
.LBB8_4:
	callq	setTypeSize
	jmp	.LBB8_9
.LBB8_5:
	callq	zsetLength
	jmp	.LBB8_9
.LBB8_6:
	callq	hashTypeLength
.LBB8_9:
	movq	%rax, %rcx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB8_11
# %bb.10:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbDelete
	movq	$0, 24(%rbx)
	movl	$1, %eax
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	moduleDelKeyIfEmpty, .Lfunc_end8-moduleDelKeyIfEmpty
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_8
	.quad	.LBB8_4
	.quad	.LBB8_5
	.quad	.LBB8_6
                                        # -- End function
	.text
	.globl	RM_GetApi               # -- Begin function RM_GetApi
	.p2align	4, 0x90
	.type	RM_GetApi,@function
RM_GetApi:                              # @RM_GetApi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %rsi
	movq	server+184(%rip), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_1
# %bb.2:
	movq	8(%rax), %rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB9_3
.LBB9_1:
	movl	$1, %eax
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	RM_GetApi, .Lfunc_end9-RM_GetApi
                                        # -- End function
	.globl	moduleFreeContext       # -- Begin function moduleFreeContext
	.p2align	4, 0x90
	.type	moduleFreeContext,@function
moduleFreeContext:                      # @moduleFreeContext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	autoMemoryCollect
	movq	96(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_2
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rbx
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testq	%rbx, %rbx
	jne	.LBB10_1
.LBB10_2:
	movq	$0, 96(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_4
# %bb.3:
	callq	zfree
	movl	$0, 64(%r14)
	movq	8(%r14), %rax
	movq	8(%rax), %rdx
	movl	$.L.str, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB10_4:
	testb	$32, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_6
# %bb.5:
	movq	16(%r14), %rdi
	callq	freeClient
	movl	$42, __A_VARIABLE(%rip)
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	moduleFreeContext, .Lfunc_end10-moduleFreeContext
                                        # -- End function
	.globl	autoMemoryCollect       # -- Begin function autoMemoryCollect
	.p2align	4, 0x90
	.type	autoMemoryCollect,@function
autoMemoryCollect:                      # @autoMemoryCollect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB11_14
# %bb.1:
	movq	%rdi, %r14
	andl	$-3, %eax
	movl	%eax, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB11_13
# %bb.2:                                # %.preheader
	movl	$8, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB11_3
	.p2align	4, 0x90
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rdi
	callq	raxFree
	movq	%r12, %rdi
	callq	zfree
.LBB11_9:                               #   in Loop: Header=BB11_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_10:                              #   in Loop: Header=BB11_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB11_11:                              #   in Loop: Header=BB11_3 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movslq	44(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	cmpq	%rax, %r13
	jge	.LBB11_12
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	movq	32(%r14), %rax
	movq	-8(%rax,%rbx), %r12
	movl	(%rax,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rax
	ja	.LBB11_11
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_7:                               #   in Loop: Header=BB11_3 Depth=1
	movq	%r12, %rdi
	callq	RM_CloseKey
	jmp	.LBB11_10
	.p2align	4, 0x90
.LBB11_5:                               #   in Loop: Header=BB11_3 Depth=1
	movq	%r12, %rdi
	callq	decrRefCount
	jmp	.LBB11_10
	.p2align	4, 0x90
.LBB11_6:                               #   in Loop: Header=BB11_3 Depth=1
	movq	(%r12), %r15
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	RM_FreeCallReply_Rec
	movq	%r15, %rdi
	movl	$2, %esi
	movq	%r12, %rdx
	callq	autoMemoryFreed
	jmp	.LBB11_9
.LBB11_12:
	movl	48(%r14), %eax
.LBB11_13:
	orl	$2, %eax
	movl	%eax, 48(%r14)
	movq	32(%r14), %rdi
	callq	zfree
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	autoMemoryCollect, .Lfunc_end11-autoMemoryCollect
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_7
	.quad	.LBB11_5
	.quad	.LBB11_6
	.quad	.LBB11_11
	.quad	.LBB11_8
                                        # -- End function
	.text
	.globl	moduleHandlePropagationAfterCommandCallback # -- Begin function moduleHandlePropagationAfterCommandCallback
	.p2align	4, 0x90
	.type	moduleHandlePropagationAfterCommandCallback,@function
moduleHandlePropagationAfterCommandCallback: # @moduleHandlePropagationAfterCommandCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	16(%rdi), %rbx
	testl	$256, 160(%rbx)         # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_3
# %bb.1:
	testb	$1, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_3
# %bb.2:
	movl	$.L.str.1, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -16(%rbp)
	movq	server+960(%rip), %rdi
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	leaq	-16(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	-16(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	moduleHandlePropagationAfterCommandCallback, .Lfunc_end12-moduleHandlePropagationAfterCommandCallback
                                        # -- End function
	.globl	RedisModuleCommandDispatcher # -- Begin function RedisModuleCommandDispatcher
	.p2align	4, 0x90
	.type	RedisModuleCommandDispatcher,@function
RedisModuleCommandDispatcher:           # @RedisModuleCommandDispatcher
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	movq	%rdi, %r14
	movq	80(%rdi), %rax
	movq	40(%rax), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, -40(%rbp)
	movups	%xmm0, -56(%rbp)
	movups	%xmm0, -72(%rbp)
	movups	%xmm0, -88(%rbp)
	movups	%xmm0, -104(%rbp)
	movq	$RM_GetApi, -128(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -120(%rbp)
	movq	%rdi, -112(%rbp)
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	leaq	-128(%rbp), %rdi
	callq	*8(%rax)
	movq	-112(%rbp), %rbx
	testl	$256, 160(%rbx)         # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_3
# %bb.1:
	testb	$1, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_3
# %bb.2:
	movl	$.L.str.1, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -24(%rbp)
	movq	server+960(%rip), %rdi
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	leaq	-24(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	-24(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-128(%rbp), %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB13_8
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB13_5
	.p2align	4, 0x90
.LBB13_7:                               #   in Loop: Header=BB13_5 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	jge	.LBB13_8
.LBB13_5:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rcx
	movq	(%rcx,%rbx,8), %rdi
	cmpl	$2, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_5 Depth=1
	callq	trimStringObjectIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r14), %eax
	jmp	.LBB13_7
.LBB13_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	RedisModuleCommandDispatcher, .Lfunc_end13-RedisModuleCommandDispatcher
                                        # -- End function
	.globl	moduleGetCommandKeysViaAPI # -- Begin function moduleGetCommandKeysViaAPI
	.p2align	4, 0x90
	.type	moduleGetCommandKeysViaAPI,@function
moduleGetCommandKeysViaAPI:             # @moduleGetCommandKeysViaAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	movq	%rcx, %r14
	movq	40(%rdi), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%rbp)
	movups	%xmm0, -48(%rbp)
	movups	%xmm0, -64(%rbp)
	movups	%xmm0, -80(%rbp)
	movups	%xmm0, -96(%rbp)
	movq	$RM_GetApi, -120(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -112(%rbp)
	movq	$0, -104(%rbp)
	movl	$4, -72(%rbp)
	leaq	-120(%rbp), %rdi
	callq	*8(%rax)
	movq	-40(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_2
# %bb.1:
	movl	-32(%rbp), %eax
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_2:
	leaq	-120(%rbp), %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	moduleGetCommandKeysViaAPI, .Lfunc_end14-moduleGetCommandKeysViaAPI
                                        # -- End function
	.globl	RM_IsKeysPositionRequest # -- Begin function RM_IsKeysPositionRequest
	.p2align	4, 0x90
	.type	RM_IsKeysPositionRequest,@function
RM_IsKeysPositionRequest:               # @RM_IsKeysPositionRequest
# %bb.0:
	movl	48(%rdi), %eax
	shrl	$2, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end15:
	.size	RM_IsKeysPositionRequest, .Lfunc_end15-RM_IsKeysPositionRequest
                                        # -- End function
	.globl	RM_KeyAtPos             # -- Begin function RM_KeyAtPos
	.p2align	4, 0x90
	.type	RM_KeyAtPos,@function
RM_KeyAtPos:                            # @RM_KeyAtPos
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	48(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB16_3
# %bb.1:
	andl	$4, %eax
	je	.LBB16_3
# %bb.2:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	80(%rdi), %rdi
	movslq	88(%rbx), %rax
	leaq	4(,%rax,4), %rsi
	callq	zrealloc
	movq	%rax, 80(%rbx)
	movslq	88(%rbx), %rcx
	leal	1(%rcx), %edx
	movl	%edx, 88(%rbx)
	movl	%r14d, (%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	RM_KeyAtPos, .Lfunc_end16-RM_KeyAtPos
                                        # -- End function
	.globl	commandFlagsFromString  # -- Begin function commandFlagsFromString
	.p2align	4, 0x90
	.type	commandFlagsFromString,@function
commandFlagsFromString:                 # @commandFlagsFromString
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
	callq	strlen
	leaq	-44(%rbp), %r8
	movl	$.L.str.2, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movl	$1, %ecx
	callq	sdssplitlen
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	-44(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB17_1
# %bb.2:
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB17_3
	.p2align	4, 0x90
.LBB17_4:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$1, %ecx
.LBB17_5:                               #   in Loop: Header=BB17_3 Depth=1
	orl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jge	.LBB17_30
.LBB17_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %r12
	movl	$.L.str.3, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_4
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.4, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_7
# %bb.8:                                #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.5, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_9
# %bb.10:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_11
# %bb.12:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.7, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_13
# %bb.14:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.8, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_15
# %bb.16:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.9, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_17
# %bb.18:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_19
# %bb.20:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.11, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_21
# %bb.22:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.12, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_23
# %bb.24:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.13, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_25
# %bb.26:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.14, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB17_27
# %bb.28:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$.L.str.15, %esi
	movq	%r12, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$32768, %ecx            # imm = 0x8000
	testl	%eax, %eax
	je	.LBB17_5
	jmp	.LBB17_29
	.p2align	4, 0x90
.LBB17_7:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$2, %ecx
	jmp	.LBB17_5
.LBB17_9:                               #   in Loop: Header=BB17_3 Depth=1
	movl	$16, %ecx
	jmp	.LBB17_5
.LBB17_11:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$4, %ecx
	jmp	.LBB17_5
.LBB17_13:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$64, %ecx
	jmp	.LBB17_5
.LBB17_15:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$512, %ecx              # imm = 0x200
	jmp	.LBB17_5
.LBB17_17:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$32, %ecx
	jmp	.LBB17_5
.LBB17_19:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$128, %ecx
	jmp	.LBB17_5
.LBB17_21:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$1024, %ecx             # imm = 0x400
	jmp	.LBB17_5
.LBB17_23:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$2048, %ecx             # imm = 0x800
	jmp	.LBB17_5
.LBB17_25:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$8192, %ecx             # imm = 0x2000
	jmp	.LBB17_5
.LBB17_27:                              #   in Loop: Header=BB17_3 Depth=1
	movl	$16384, %ecx            # imm = 0x4000
	jmp	.LBB17_5
.LBB17_1:
	xorl	%r13d, %r13d
	xorl	%ebx, %ebx
.LBB17_30:
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	sdsfreesplitres
	cmpl	-44(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	cmovel	%r13d, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB17_30
.Lfunc_end17:
	.size	commandFlagsFromString, .Lfunc_end17-commandFlagsFromString
                                        # -- End function
	.globl	RM_CreateCommand        # -- Begin function RM_CreateCommand
	.p2align	4, 0x90
	.type	RM_CreateCommand,@function
RM_CreateCommand:                       # @RM_CreateCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r9d, %r15d
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB18_1
# %bb.2:
	movq	%rcx, %rdi
	callq	commandFlagsFromString
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$-1, %ebx
	je	.LBB18_9
# %bb.3:
	movl	server+2924(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testw	%bx, %bx
	jns	.LBB18_5
# %bb.4:
	testl	%ecx, %ecx
	jne	.LBB18_9
	jmp	.LBB18_5
.LBB18_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB18_5:
	movq	%r14, %rdi
	callq	sdsnew
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	lookupCommand
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB18_7
# %bb.6:
	movq	%r14, %rdi
	callq	sdsfree
	movl	$1, %eax
	jmp	.LBB18_8
.LBB18_7:
	movl	$24, %edi
	callq	zmalloc
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%rax, %r15
	movq	8(%r13), %rax
	movq	%rax, (%r15)
	movq	%r12, 8(%r15)
	movl	$80, %edi
	callq	zmalloc
	movq	%rax, 16(%r15)
	movq	%r14, (%rax)
	movq	$RedisModuleCommandDispatcher, 8(%rax)
	movl	$-1, 16(%rax)
	orl	$8, %ebx
	movl	%ebx, 32(%rax)
	movq	%r15, 40(%rax)
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 48(%rax)
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, 52(%rax)
	movl	16(%rbp), %ecx
	movl	%ecx, 56(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%rax)
	movq	server+56(%rip), %rbx
	movq	%r14, %rdi
	callq	sdsdup
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	movq	server+64(%rip), %rbx
	movq	%r14, %rdi
	callq	sdsdup
	movq	16(%r15), %rdx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	dictAdd
	xorl	%eax, %eax
.LBB18_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_9:
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
.Lfunc_end18:
	.size	RM_CreateCommand, .Lfunc_end18-RM_CreateCommand
                                        # -- End function
	.globl	RM_SetModuleAttribs     # -- Begin function RM_SetModuleAttribs
	.p2align	4, 0x90
	.type	RM_SetModuleAttribs,@function
RM_SetModuleAttribs:                    # @RM_SetModuleAttribs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_2
# %bb.1:
	movl	%ecx, %r14d
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$64, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	sdsnew
	movq	%rax, 8(%rbx)
	movl	%r15d, 16(%rbx)
	movl	%r14d, 20(%rbx)
	callq	listCreate
	movq	%rax, 24(%rbx)
	callq	listCreate
	movq	%rax, 32(%rbx)
	callq	listCreate
	movq	%rax, 40(%rbx)
	callq	listCreate
	movq	%rax, 48(%rbx)
	movl	$0, 56(%rbx)
	movq	%rbx, 8(%r13)
.LBB19_2:
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
.Lfunc_end19:
	.size	RM_SetModuleAttribs, .Lfunc_end19-RM_SetModuleAttribs
                                        # -- End function
	.globl	RM_IsModuleNameBusy     # -- Begin function RM_IsModuleNameBusy
	.p2align	4, 0x90
	.type	RM_IsModuleNameBusy,@function
RM_IsModuleNameBusy:                    # @RM_IsModuleNameBusy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	sdsnew
	movq	%rax, %rbx
	movq	modules(%rip), %rdi
	movq	%rax, %rsi
	callq	dictFind
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	xorl	%eax, %eax
	testq	%r14, %r14
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	RM_IsModuleNameBusy, .Lfunc_end20-RM_IsModuleNameBusy
                                        # -- End function
	.globl	RM_Milliseconds         # -- Begin function RM_Milliseconds
	.p2align	4, 0x90
	.type	RM_Milliseconds,@function
RM_Milliseconds:                        # @RM_Milliseconds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	mstime
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	RM_Milliseconds, .Lfunc_end21-RM_Milliseconds
                                        # -- End function
	.globl	RM_AutoMemory           # -- Begin function RM_AutoMemory
	.p2align	4, 0x90
	.type	RM_AutoMemory,@function
RM_AutoMemory:                          # @RM_AutoMemory
# %bb.0:
	orb	$2, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end22:
	.size	RM_AutoMemory, .Lfunc_end22-RM_AutoMemory
                                        # -- End function
	.globl	autoMemoryAdd           # -- Begin function autoMemoryAdd
	.p2align	4, 0x90
	.type	autoMemoryAdd,@function
autoMemoryAdd:                          # @autoMemoryAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testb	$2, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_7
# %bb.1:
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	44(%rdi), %ecx
	cmpl	40(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_2
# %bb.3:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB23_5
# %bb.4:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB23_5:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB23_6
.LBB23_2:
	movq	32(%rbx), %rax
.LBB23_6:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	%r15d, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	autoMemoryAdd, .Lfunc_end23-autoMemoryAdd
                                        # -- End function
	.globl	autoMemoryFreed         # -- Begin function autoMemoryFreed
	.p2align	4, 0x90
	.type	autoMemoryFreed,@function
autoMemoryFreed:                        # @autoMemoryFreed
# %bb.0:
	pushq	%r14
	pushq	%rbx
	xorl	%eax, %eax
	testb	$2, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_16
# %bb.1:
	movslq	44(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jle	.LBB24_10
# %bb.2:
	leal	1(%r8), %eax
	shrl	$31, %eax
	leal	(%r8,%rax), %r9d
	addl	$1, %r9d
	sarl	%r9d
	leal	-1(%r8), %r10d
	movl	$8, %eax
	xorl	%ecx, %ecx
	jmp	.LBB24_4
	.p2align	4, 0x90
.LBB24_3:                               #   in Loop: Header=BB24_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	addq	$16, %rax
	addl	$-1, %r10d
	cmpl	%r9d, %ecx
	jge	.LBB24_10
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rdi), %r11
	movslq	%r10d, %r14
	movq	%r14, %rbx
	shlq	$4, %rbx
	cmpl	%esi, 8(%r11,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_6
# %bb.5:                                #   in Loop: Header=BB24_4 Depth=1
	cmpq	%rdx, (%r11,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB24_11
.LBB24_6:                               #   in Loop: Header=BB24_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, (%r11,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_3
# %bb.7:                                #   in Loop: Header=BB24_4 Depth=1
	cmpq	%rdx, -8(%r11,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_3
# %bb.8:
	addq	%r11, %rax
	movl	%ecx, %r10d
	movq	%rcx, %r14
	jmp	.LBB24_12
.LBB24_10:
	xorl	%eax, %eax
	jmp	.LBB24_15
.LBB24_11:
	leaq	(%r11,%rbx), %rax
	addq	$8, %rax
.LBB24_12:
	movl	$3, (%rax)
	addq	$-1, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %r10d
	je	.LBB24_14
# %bb.13:
	shlq	$4, %r14
	shlq	$4, %r8
	movups	(%r11,%r8), %xmm0
	movups	%xmm0, (%r11,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rdi), %r8d
	addl	$-1, %r8d
.LBB24_14:
	movl	%r8d, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB24_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end24:
	.size	autoMemoryFreed, .Lfunc_end24-autoMemoryFreed
                                        # -- End function
	.globl	RM_FreeCallReply        # -- Begin function RM_FreeCallReply
	.p2align	4, 0x90
	.type	RM_FreeCallReply,@function
RM_FreeCallReply:                       # @RM_FreeCallReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	xorl	%esi, %esi
	callq	RM_FreeCallReply_Rec
	movq	%r14, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	callq	autoMemoryFreed
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	RM_FreeCallReply, .Lfunc_end25-RM_FreeCallReply
                                        # -- End function
	.globl	RM_CloseKey             # -- Begin function RM_CloseKey
	.p2align	4, 0x90
	.type	RM_CloseKey,@function
RM_CloseKey:                            # @RM_CloseKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB26_6
# %bb.1:
	movq	%rdi, %rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_3
# %bb.2:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	signalModifiedKey
	movl	$42, __A_VARIABLE(%rip)
.LBB26_3:
	cmpl	$1, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_5
# %bb.4:
	leaq	72(%rbx), %rdi
	callq	zslFreeLexRange
	movl	$42, __A_VARIABLE(%rip)
.LBB26_5:
	movl	$0, 44(%rbx)
	movq	$0, 104(%rbx)
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	callq	decrRefCount
	movq	(%rbx), %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	autoMemoryFreed
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB26_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	RM_CloseKey, .Lfunc_end26-RM_CloseKey
                                        # -- End function
	.globl	RM_FreeDict             # -- Begin function RM_FreeDict
	.p2align	4, 0x90
	.type	RM_FreeDict,@function
RM_FreeDict:                            # @RM_FreeDict
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB27_2
# %bb.1:
	movl	$4, %esi
	movq	%rbx, %rdx
	callq	autoMemoryFreed
	movl	$42, __A_VARIABLE(%rip)
.LBB27_2:
	movq	(%rbx), %rdi
	callq	raxFree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	RM_FreeDict, .Lfunc_end27-RM_FreeDict
                                        # -- End function
	.globl	RM_CreateString         # -- Begin function RM_CreateString
	.p2align	4, 0x90
	.type	RM_CreateString,@function
RM_CreateString:                        # @RM_CreateString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	createStringObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB28_9
# %bb.1:
	testb	$2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB28_8
# %bb.2:
	movl	44(%rbx), %ecx
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB28_3
# %bb.4:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB28_6
# %bb.5:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB28_6:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB28_7
.LBB28_3:
	movq	32(%rbx), %rax
.LBB28_7:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB28_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	RM_CreateString, .Lfunc_end28-RM_CreateString
                                        # -- End function
	.globl	RM_CreateStringPrintf   # -- Begin function RM_CreateStringPrintf
	.p2align	4, 0x90
	.type	RM_CreateStringPrintf,@function
RM_CreateStringPrintf:                  # @RM_CreateStringPrintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testb	%al, %al
	je	.LBB29_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB29_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	callq	sdsempty
	leaq	-224(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	leaq	16(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movabsq	$206158430224, %rcx     # imm = 0x3000000010
	movq	%rcx, -48(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	sdscatvprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB29_11
# %bb.3:
	testb	$2, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_10
# %bb.4:
	movl	44(%r15), %ecx
	cmpl	40(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_5
# %bb.6:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB29_8
# %bb.7:
	movl	$16, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB29_8:
	movq	32(%r15), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%r15), %ecx
	jmp	.LBB29_9
.LBB29_5:
	movq	32(%r15), %rax
.LBB29_9:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	RM_CreateStringPrintf, .Lfunc_end29-RM_CreateStringPrintf
                                        # -- End function
	.globl	RM_CreateStringFromLongLong # -- Begin function RM_CreateStringFromLongLong
	.p2align	4, 0x90
	.type	RM_CreateStringFromLongLong,@function
RM_CreateStringFromLongLong:            # @RM_CreateStringFromLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	RM_CreateString
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end30:
	.size	RM_CreateStringFromLongLong, .Lfunc_end30-RM_CreateStringFromLongLong
                                        # -- End function
	.globl	RM_CreateStringFromString # -- Begin function RM_CreateStringFromString
	.p2align	4, 0x90
	.type	RM_CreateStringFromString,@function
RM_CreateStringFromString:              # @RM_CreateStringFromString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	dupStringObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB31_9
# %bb.1:
	testb	$2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_8
# %bb.2:
	movl	44(%rbx), %ecx
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB31_3
# %bb.4:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB31_6
# %bb.5:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB31_6:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB31_7
.LBB31_3:
	movq	32(%rbx), %rax
.LBB31_7:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB31_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	RM_CreateStringFromString, .Lfunc_end31-RM_CreateStringFromString
                                        # -- End function
	.globl	RM_FreeString           # -- Begin function RM_FreeString
	.p2align	4, 0x90
	.type	RM_FreeString,@function
RM_FreeString:                          # @RM_FreeString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB32_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	autoMemoryFreed
	movl	$42, __A_VARIABLE(%rip)
.LBB32_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	RM_FreeString, .Lfunc_end32-RM_FreeString
                                        # -- End function
	.globl	RM_RetainString         # -- Begin function RM_RetainString
	.p2align	4, 0x90
	.type	RM_RetainString,@function
RM_RetainString:                        # @RM_RetainString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB33_2
# %bb.1:
	movl	$1, %esi
	movq	%rbx, %rdx
	callq	autoMemoryFreed
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB33_3
.LBB33_2:
	movq	%rbx, %rdi
	callq	incrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB33_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end33:
	.size	RM_RetainString, .Lfunc_end33-RM_RetainString
                                        # -- End function
	.globl	RM_StringPtrLen         # -- Begin function RM_StringPtrLen
	.p2align	4, 0x90
	.type	RM_StringPtrLen,@function
RM_StringPtrLen:                        # @RM_StringPtrLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB34_1
# %bb.3:
	movq	8(%rdi), %r14
	testq	%rbx, %rbx
	je	.LBB34_14
# %bb.4:
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB34_5
# %bb.6:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI34_0(,%rcx,8)
.LBB34_7:
	shrq	$3, %rax
	jmp	.LBB34_12
.LBB34_1:
	movl	$.L.str.16, %r14d
	testq	%rbx, %rbx
	je	.LBB34_14
# %bb.2:
	movl	$.L.str.16, %edi
	callq	strlen
	jmp	.LBB34_13
.LBB34_5:
	xorl	%eax, %eax
	jmp	.LBB34_12
.LBB34_8:
	movzbl	-3(%r14), %eax
	jmp	.LBB34_12
.LBB34_9:
	movzwl	-5(%r14), %eax
	jmp	.LBB34_12
.LBB34_10:
	movl	-9(%r14), %eax
	jmp	.LBB34_12
.LBB34_11:
	movq	-17(%r14), %rax
.LBB34_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_13:
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB34_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end34:
	.size	RM_StringPtrLen, .Lfunc_end34-RM_StringPtrLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI34_0:
	.quad	.LBB34_7
	.quad	.LBB34_8
	.quad	.LBB34_9
	.quad	.LBB34_10
	.quad	.LBB34_11
                                        # -- End function
	.text
	.globl	RM_StringToLongLong     # -- Begin function RM_StringToLongLong
	.p2align	4, 0x90
	.type	RM_StringToLongLong,@function
RM_StringToLongLong:                    # @RM_StringToLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	8(%rdi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_0(,%rax,8)
.LBB35_3:
	shrq	$3, %rsi
	jmp	.LBB35_8
.LBB35_1:
	xorl	%esi, %esi
	jmp	.LBB35_8
.LBB35_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_8
.LBB35_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_8
.LBB35_6:
	movl	-9(%rdi), %esi
	jmp	.LBB35_8
.LBB35_7:
	movq	-17(%rdi), %rsi
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	string2ll
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end35:
	.size	RM_StringToLongLong, .Lfunc_end35-RM_StringToLongLong
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_3
	.quad	.LBB35_4
	.quad	.LBB35_5
	.quad	.LBB35_6
	.quad	.LBB35_7
                                        # -- End function
	.text
	.globl	RM_StringToDouble       # -- Begin function RM_StringToDouble
	.p2align	4, 0x90
	.type	RM_StringToDouble,@function
RM_StringToDouble:                      # @RM_StringToDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	getDoubleFromObject
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end36:
	.size	RM_StringToDouble, .Lfunc_end36-RM_StringToDouble
                                        # -- End function
	.globl	RM_StringCompare        # -- Begin function RM_StringCompare
	.p2align	4, 0x90
	.type	RM_StringCompare,@function
RM_StringCompare:                       # @RM_StringCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	compareStringObjects
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end37:
	.size	RM_StringCompare, .Lfunc_end37-RM_StringCompare
                                        # -- End function
	.globl	moduleAssertUnsharedString # -- Begin function moduleAssertUnsharedString
	.p2align	4, 0x90
	.type	moduleAssertUnsharedString,@function
moduleAssertUnsharedString:             # @moduleAssertUnsharedString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$1, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB38_1
# %bb.2:
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB38_12
# %bb.3:
	movq	8(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB38_4
# %bb.5:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI38_0(,%rax,8)
.LBB38_6:
	shrq	$3, %rsi
	jmp	.LBB38_11
.LBB38_1:
	xorl	%ebx, %ebx
	movl	$.L.str.17, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB38_15
.LBB38_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB38_15
# %bb.13:
	movq	8(%rbx), %rdi
	callq	sdsfromlonglong
	jmp	.LBB38_14
.LBB38_4:
	xorl	%esi, %esi
	jmp	.LBB38_11
.LBB38_7:
	movzbl	-3(%rdi), %esi
	jmp	.LBB38_11
.LBB38_8:
	movzwl	-5(%rdi), %esi
	jmp	.LBB38_11
.LBB38_9:
	movl	-9(%rdi), %esi
	jmp	.LBB38_11
.LBB38_10:
	movq	-17(%rdi), %rsi
.LBB38_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsnewlen
.LBB38_14:
	movq	%rax, 8(%rbx)
	andb	$15, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB38_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	moduleAssertUnsharedString, .Lfunc_end38-moduleAssertUnsharedString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI38_0:
	.quad	.LBB38_6
	.quad	.LBB38_7
	.quad	.LBB38_8
	.quad	.LBB38_9
	.quad	.LBB38_10
                                        # -- End function
	.text
	.globl	RM_StringAppendBuffer   # -- Begin function RM_StringAppendBuffer
	.p2align	4, 0x90
	.type	RM_StringAppendBuffer,@function
RM_StringAppendBuffer:                  # @RM_StringAppendBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rdi
	callq	moduleAssertUnsharedString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB39_1
# %bb.2:
	movq	%rax, %rbx
	movq	8(%rax), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	sdscatlen
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB39_3
.LBB39_1:
	movl	$1, %eax
.LBB39_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end39:
	.size	RM_StringAppendBuffer, .Lfunc_end39-RM_StringAppendBuffer
                                        # -- End function
	.globl	RM_WrongArity           # -- Begin function RM_WrongArity
	.p2align	4, 0x90
	.type	RM_WrongArity,@function
RM_WrongArity:                          # @RM_WrongArity
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rdi
	movq	72(%rdi), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end40:
	.size	RM_WrongArity, .Lfunc_end40-RM_WrongArity
                                        # -- End function
	.globl	moduleGetReplyClient    # -- Begin function moduleGetReplyClient
	.p2align	4, 0x90
	.type	moduleGetReplyClient,@function
moduleGetReplyClient:                   # @moduleGetReplyClient
# %bb.0:
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB41_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB41_5
.LBB41_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB41_2
# %bb.3:
	addq	$56, %rdi
.LBB41_5:
	movq	(%rdi), %rax
	jmp	.LBB41_6
.LBB41_2:
	xorl	%eax, %eax
.LBB41_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end41:
	.size	moduleGetReplyClient, .Lfunc_end41-moduleGetReplyClient
                                        # -- End function
	.globl	RM_ReplyWithLongLong    # -- Begin function RM_ReplyWithLongLong
	.p2align	4, 0x90
	.type	RM_ReplyWithLongLong,@function
RM_ReplyWithLongLong:                   # @RM_ReplyWithLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB42_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB42_5
.LBB42_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB42_3
# %bb.2:
	addq	$56, %rdi
.LBB42_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB42_7
# %bb.6:
	callq	addReplyLongLong
	jmp	.LBB42_7
.LBB42_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB42_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end42:
	.size	RM_ReplyWithLongLong, .Lfunc_end42-RM_ReplyWithLongLong
                                        # -- End function
	.globl	replyWithStatus         # -- Begin function replyWithStatus
	.p2align	4, 0x90
	.type	replyWithStatus,@function
replyWithStatus:                        # @replyWithStatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB43_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB43_5
.LBB43_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB43_3
# %bb.2:
	addq	$56, %rdi
.LBB43_5:
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB43_7
# %bb.6:
	movl	$1, %esi
	movq	%rdx, %rdi
	callq	sdsnewlen
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	sdscat
	movl	$.L.str.19, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB43_7
.LBB43_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB43_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end43:
	.size	replyWithStatus, .Lfunc_end43-replyWithStatus
                                        # -- End function
	.globl	RM_ReplyWithError       # -- Begin function RM_ReplyWithError
	.p2align	4, 0x90
	.type	RM_ReplyWithError,@function
RM_ReplyWithError:                      # @RM_ReplyWithError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.20, %edx
	callq	replyWithStatus
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end44:
	.size	RM_ReplyWithError, .Lfunc_end44-RM_ReplyWithError
                                        # -- End function
	.globl	RM_ReplyWithSimpleString # -- Begin function RM_ReplyWithSimpleString
	.p2align	4, 0x90
	.type	RM_ReplyWithSimpleString,@function
RM_ReplyWithSimpleString:               # @RM_ReplyWithSimpleString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str.21, %edx
	callq	replyWithStatus
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end45:
	.size	RM_ReplyWithSimpleString, .Lfunc_end45-RM_ReplyWithSimpleString
                                        # -- End function
	.globl	RM_ReplyWithArray       # -- Begin function RM_ReplyWithArray
	.p2align	4, 0x90
	.type	RM_ReplyWithArray,@function
RM_ReplyWithArray:                      # @RM_ReplyWithArray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB46_1
# %bb.4:
	leaq	16(%rbx), %rax
	jmp	.LBB46_5
.LBB46_1:
	movq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB46_3
# %bb.2:
	addq	$56, %rax
.LBB46_5:
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB46_10
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rsi
	je	.LBB46_7
# %bb.8:
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	jmp	.LBB46_9
.LBB46_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB46_9
.LBB46_7:
	movq	56(%rbx), %rdi
	movslq	64(%rbx), %rax
	leaq	8(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, 56(%rbx)
	movq	%r14, %rdi
	callq	addDeferredMultiBulkLength
	movq	56(%rbx), %rcx
	movslq	64(%rbx), %rdx
	movq	%rax, (%rcx,%rdx,8)
	leal	1(%rdx), %eax
	movl	%eax, 64(%rbx)
.LBB46_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB46_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end46:
	.size	RM_ReplyWithArray, .Lfunc_end46-RM_ReplyWithArray
                                        # -- End function
	.globl	RM_ReplySetArrayLength  # -- Begin function RM_ReplySetArrayLength
	.p2align	4, 0x90
	.type	RM_ReplySetArrayLength,@function
RM_ReplySetArrayLength:                 # @RM_ReplySetArrayLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_1
# %bb.4:
	leaq	16(%rbx), %rax
	jmp	.LBB47_5
.LBB47_1:
	movq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_3
# %bb.2:
	addq	$56, %rax
.LBB47_5:
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB47_11
# %bb.6:
	movslq	64(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB47_7
# %bb.8:
	leaq	-1(%rax), %rcx
	movl	%ecx, 64(%rbx)
	movq	56(%rbx), %rcx
	movq	-8(%rcx,%rax,8), %rsi
	callq	setDeferredMultiBulkLength
	cmpl	$0, 64(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB47_11
# %bb.9:
	movq	56(%rbx), %rdi
	callq	zfree
	movq	$0, 56(%rbx)
	jmp	.LBB47_10
.LBB47_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB47_10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB47_11
.LBB47_7:
	movq	8(%rbx), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB47_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	RM_ReplySetArrayLength, .Lfunc_end47-RM_ReplySetArrayLength
                                        # -- End function
	.globl	RM_ReplyWithStringBuffer # -- Begin function RM_ReplyWithStringBuffer
	.p2align	4, 0x90
	.type	RM_ReplyWithStringBuffer,@function
RM_ReplyWithStringBuffer:               # @RM_ReplyWithStringBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB48_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB48_5
.LBB48_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB48_3
# %bb.2:
	addq	$56, %rdi
.LBB48_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB48_7
# %bb.6:
	callq	addReplyBulkCBuffer
	jmp	.LBB48_7
.LBB48_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end48:
	.size	RM_ReplyWithStringBuffer, .Lfunc_end48-RM_ReplyWithStringBuffer
                                        # -- End function
	.globl	RM_ReplyWithCString     # -- Begin function RM_ReplyWithCString
	.p2align	4, 0x90
	.type	RM_ReplyWithCString,@function
RM_ReplyWithCString:                    # @RM_ReplyWithCString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB49_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB49_5
.LBB49_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB49_3
# %bb.2:
	addq	$56, %rdi
.LBB49_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB49_7
# %bb.6:
	callq	addReplyBulkCString
	jmp	.LBB49_7
.LBB49_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB49_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	RM_ReplyWithCString, .Lfunc_end49-RM_ReplyWithCString
                                        # -- End function
	.globl	RM_ReplyWithString      # -- Begin function RM_ReplyWithString
	.p2align	4, 0x90
	.type	RM_ReplyWithString,@function
RM_ReplyWithString:                     # @RM_ReplyWithString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB50_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB50_5
.LBB50_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB50_3
# %bb.2:
	addq	$56, %rdi
.LBB50_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB50_7
# %bb.6:
	callq	addReplyBulk
	jmp	.LBB50_7
.LBB50_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB50_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end50:
	.size	RM_ReplyWithString, .Lfunc_end50-RM_ReplyWithString
                                        # -- End function
	.globl	RM_ReplyWithNull        # -- Begin function RM_ReplyWithNull
	.p2align	4, 0x90
	.type	RM_ReplyWithNull,@function
RM_ReplyWithNull:                       # @RM_ReplyWithNull
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB51_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB51_5
.LBB51_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB51_3
# %bb.2:
	addq	$56, %rdi
.LBB51_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB51_7
# %bb.6:
	movq	shared+80(%rip), %rsi
	callq	addReply
	jmp	.LBB51_7
.LBB51_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB51_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end51:
	.size	RM_ReplyWithNull, .Lfunc_end51-RM_ReplyWithNull
                                        # -- End function
	.globl	RM_ReplyWithCallReply   # -- Begin function RM_ReplyWithCallReply
	.p2align	4, 0x90
	.type	RM_ReplyWithCallReply,@function
RM_ReplyWithCallReply:                  # @RM_ReplyWithCallReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB52_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB52_5
.LBB52_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB52_3
# %bb.2:
	addq	$56, %rdi
.LBB52_5:
	movq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB52_7
# %bb.6:
	movq	24(%rsi), %rdi
	movq	32(%rsi), %rsi
	callq	sdsnewlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB52_7
.LBB52_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB52_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	RM_ReplyWithCallReply, .Lfunc_end52-RM_ReplyWithCallReply
                                        # -- End function
	.globl	RM_ReplyWithDouble      # -- Begin function RM_ReplyWithDouble
	.p2align	4, 0x90
	.type	RM_ReplyWithDouble,@function
RM_ReplyWithDouble:                     # @RM_ReplyWithDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testb	$32, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB53_1
# %bb.4:
	addq	$16, %rdi
	jmp	.LBB53_5
.LBB53_1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB53_3
# %bb.2:
	addq	$56, %rdi
.LBB53_5:
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB53_7
# %bb.6:
	callq	addReplyDouble
	jmp	.LBB53_7
.LBB53_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB53_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	RM_ReplyWithDouble, .Lfunc_end53-RM_ReplyWithDouble
                                        # -- End function
	.globl	moduleReplicateMultiIfNeeded # -- Begin function moduleReplicateMultiIfNeeded
	.p2align	4, 0x90
	.type	moduleReplicateMultiIfNeeded,@function
moduleReplicateMultiIfNeeded:           # @moduleReplicateMultiIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	testl	$264, 160(%rdi)         # imm = 0x108
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB54_4
# %bb.1:
	movl	48(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB54_4
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB54_4
# %bb.3:
	callq	execCommandPropagateMulti
	orb	$1, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB54_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end54:
	.size	moduleReplicateMultiIfNeeded, .Lfunc_end54-moduleReplicateMultiIfNeeded
                                        # -- End function
	.globl	RM_Replicate            # -- Begin function RM_Replicate
	.p2align	4, 0x90
	.type	RM_Replicate,@function
RM_Replicate:                           # @RM_Replicate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB55_2
# %bb.1:
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm4, -144(%rbp)
	movaps	%xmm5, -128(%rbp)
	movaps	%xmm6, -112(%rbp)
	movaps	%xmm7, -96(%rbp)
.LBB55_2:
	movq	%rcx, -232(%rbp)
	movq	%r8, -224(%rbp)
	movq	%r9, -216(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	%rbx, %rdi
	callq	lookupCommandByCString
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	testq	%rax, %rax
	je	.LBB55_12
# %bb.3:
	movq	%rax, %r15
	leaq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -80(%rbp)
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	moduleCreateArgvFromUserFormat
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB55_12
# %bb.4:
	movq	%rax, %r12
	movq	16(%r14), %rdi
	testl	$264, 160(%rdi)         # imm = 0x108
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB55_8
# %bb.5:
	movl	48(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB55_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB55_8
# %bb.7:
	callq	execCommandPropagateMulti
	orb	$1, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
.LBB55_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rax
	movl	40(%rax), %esi
	movl	-44(%rbp), %r14d
	movq	%r15, %rdi
	movq	%r12, %rdx
	movl	%r14d, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB55_11
# %bb.9:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB55_10:                              # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB55_10
.LBB55_11:
	movq	%r12, %rdi
	callq	zfree
	addq	$1, server+2080(%rip)
	xorl	%r13d, %r13d
.LBB55_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	RM_Replicate, .Lfunc_end55-RM_Replicate
                                        # -- End function
	.globl	moduleCreateArgvFromUserFormat # -- Begin function moduleCreateArgvFromUserFormat
	.p2align	4, 0x90
	.type	moduleCreateArgvFromUserFormat,@function
moduleCreateArgvFromUserFormat:         # @moduleCreateArgvFromUserFormat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	%rsi, %rdi
	callq	strlen
	addl	$1, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movslq	%eax, %rsi
	shlq	$3, %rsi
	xorl	%edi, %edi
	callq	zrealloc
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	strlen
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r14), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	movq	%rbx, -88(%rbp)         # 8-byte Spill
	movl	$1, %ebx
	je	.LBB56_41
# %bb.1:
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB56_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB56_34 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$99, %al
	jne	.LBB56_7
# %bb.3:                                #   in Loop: Header=BB56_2 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r15d
	cmpq	$40, %rcx
	ja	.LBB56_5
# %bb.4:                                #   in Loop: Header=BB56_2 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB56_6
	.p2align	4, 0x90
.LBB56_7:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$115, %al
	jne	.LBB56_12
# %bb.8:                                #   in Loop: Header=BB56_2 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB56_10
# %bb.9:                                #   in Loop: Header=BB56_2 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB56_11
	.p2align	4, 0x90
.LBB56_5:                               #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
.LBB56_6:                               #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movl	%r15d, %ebx
	movslq	%r15d, %rcx
	jmp	.LBB56_20
	.p2align	4, 0x90
.LBB56_12:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$98, %al
	jne	.LBB56_21
# %bb.13:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %rax
	jae	.LBB56_14
# %bb.16:                               #   in Loop: Header=BB56_2 Depth=1
	movq	16(%r12), %rdx
	leal	8(%rax), %ecx
	movl	%ecx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx,%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$40, %ecx
	ja	.LBB56_15
# %bb.17:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	%ecx, %rcx
	addq	16(%r12), %rcx
	addl	$16, %eax
	movl	%eax, (%r12)
	jmp	.LBB56_18
.LBB56_10:                              #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
.LBB56_11:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movslq	%ebx, %rax
	addl	$1, %ebx
	movq	%rdi, (%r13,%rax,8)
	callq	incrRefCount
	jmp	.LBB56_39
.LBB56_21:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$108, %al
	jne	.LBB56_26
# %bb.22:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB56_24
# %bb.23:                               #   in Loop: Header=BB56_2 Depth=1
	movq	%rcx, %rax
	addq	16(%r12), %rax
	addl	$8, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB56_25
.LBB56_14:                              #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB56_15:                              #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, 8(%r12)
.LBB56_18:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rsi
	callq	createStringObject
	jmp	.LBB56_19
.LBB56_26:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$118, %al
	jne	.LBB56_36
# %bb.27:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %rax
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	jae	.LBB56_28
# %bb.29:                               #   in Loop: Header=BB56_2 Depth=1
	movq	16(%r12), %rdx
	leal	8(%rax), %ecx
	movl	%ecx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx,%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$40, %ecx
	ja	.LBB56_30
# %bb.47:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	%ecx, %rcx
	addq	16(%r12), %rcx
	addl	$16, %eax
	movl	%eax, (%r12)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB56_31
.LBB56_24:                              #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
.LBB56_25:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rdi
	callq	sdsfromlonglong
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
.LBB56_19:                              #   in Loop: Header=BB56_2 Depth=1
	movslq	%ebx, %rcx
.LBB56_20:                              #   in Loop: Header=BB56_2 Depth=1
	addl	$1, %ebx
	movq	%rax, (%r13,%rcx,8)
.LBB56_39:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB56_40:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%r14), %al
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB56_2
	jmp	.LBB56_41
.LBB56_36:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$33, %al
	jne	.LBB56_42
# %bb.37:                               #   in Loop: Header=BB56_2 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB56_40
# %bb.38:                               #   in Loop: Header=BB56_2 Depth=1
	orb	$1, (%rax)
	jmp	.LBB56_39
.LBB56_28:                              #   in Loop: Header=BB56_2 Depth=1
	movq	8(%r12), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB56_30:                              #   in Loop: Header=BB56_2 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	8(%r12), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, 8(%r12)
.LBB56_31:                              #   in Loop: Header=BB56_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r15
	addl	%r15d, %edx
	addl	$-1, %edx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movslq	%edx, %rsi
	shlq	$3, %rsi
	movq	%r13, %rdi
	callq	zrealloc
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB56_32
# %bb.33:                               #   in Loop: Header=BB56_2 Depth=1
	movslq	-44(%rbp), %rax         # 4-byte Folded Reload
	movq	%r13, -72(%rbp)         # 8-byte Spill
	leaq	(,%rax,8), %r12
	addq	%r13, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB56_34:                              #   Parent Loop BB56_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%r13,8), %rdi
	callq	incrRefCount
	movq	(%rbx,%r13,8), %rax
	movq	%rax, (%r12,%r13,8)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	jne	.LBB56_34
# %bb.35:                               #   in Loop: Header=BB56_2 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
	addl	%r15d, %ebx
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB56_39
.LBB56_32:                              #   in Loop: Header=BB56_2 Depth=1
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB56_39
.LBB56_41:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%ebx, (%rax)
.LBB56_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_42:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB56_45
# %bb.43:
	movl	%ebx, %r14d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB56_44:                              # =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r14
	jne	.LBB56_44
.LBB56_45:
	movq	%r13, %rdi
	callq	zfree
	xorl	%r13d, %r13d
	jmp	.LBB56_46
.Lfunc_end56:
	.size	moduleCreateArgvFromUserFormat, .Lfunc_end56-moduleCreateArgvFromUserFormat
                                        # -- End function
	.globl	RM_ReplicateVerbatim    # -- Begin function RM_ReplicateVerbatim
	.p2align	4, 0x90
	.type	RM_ReplicateVerbatim,@function
RM_ReplicateVerbatim:                   # @RM_ReplicateVerbatim
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rax
	movq	80(%rax), %rdi
	movq	16(%rax), %rcx
	movl	40(%rcx), %esi
	movq	72(%rax), %rdx
	movl	64(%rax), %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end57:
	.size	RM_ReplicateVerbatim, .Lfunc_end57-RM_ReplicateVerbatim
                                        # -- End function
	.globl	RM_GetClientId          # -- Begin function RM_GetClientId
	.p2align	4, 0x90
	.type	RM_GetClientId,@function
RM_GetClientId:                         # @RM_GetClientId
# %bb.0:
	movq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB58_1
# %bb.2:
	movq	(%rax), %rax
	jmp	.LBB58_3
.LBB58_1:
	xorl	%eax, %eax
.LBB58_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end58:
	.size	RM_GetClientId, .Lfunc_end58-RM_GetClientId
                                        # -- End function
	.globl	RM_GetSelectedDb        # -- Begin function RM_GetSelectedDb
	.p2align	4, 0x90
	.type	RM_GetSelectedDb,@function
RM_GetSelectedDb:                       # @RM_GetSelectedDb
# %bb.0:
	movq	16(%rdi), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end59:
	.size	RM_GetSelectedDb, .Lfunc_end59-RM_GetSelectedDb
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function RM_GetContextFlags
.LCPI60_0:
	.long	1061158912              # float 0.75
	.text
	.globl	RM_GetContextFlags
	.p2align	4, 0x90
	.type	RM_GetContextFlags,@function
RM_GetContextFlags:                     # @RM_GetContextFlags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	16(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB60_1
# %bb.2:
	movl	160(%rax), %eax
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %eax              # imm = 0x100
	je	.LBB60_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB60_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB60_6
# %bb.5:
	orl	$2, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB60_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	je	.LBB60_8
# %bb.7:
	orl	$4096, %ebx             # imm = 0x1000
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB60_8
.LBB60_1:
	xorl	%ebx, %ebx
.LBB60_8:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_10
# %bb.9:
	orl	$32, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB60_10:
	cmpl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_12
# %bb.11:
	orl	$8192, %ebx             # imm = 0x2000
	movl	$42, __A_VARIABLE(%rip)
.LBB60_12:
	cmpq	$0, server+2704(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_16
# %bb.13:
	cmpl	$1792, server+2712(%rip) # imm = 0x700
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB60_15
# %bb.14:
	orl	$256, %ebx              # imm = 0x100
	jmp	.LBB60_16
.LBB60_15:
	orl	$768, %ebx              # imm = 0x300
	movl	$42, __A_VARIABLE(%rip)
.LBB60_16:
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_18
# %bb.17:
	orl	$64, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB60_18:
	cmpl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB60_20
# %bb.19:
	orl	$128, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB60_20:
	cmpq	$0, server+2464(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB60_21
# %bb.23:
	cmpl	$0, server+2556(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %eax
	jne	.LBB60_22
# %bb.24:
	orl	$8, %ebx
	jmp	.LBB60_25
.LBB60_21:
	movl	$4, %eax
.LBB60_22:
	orl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB60_25:
	leaq	-12(%rbp), %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	getMaxmemoryState
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB60_27
# %bb.26:
	orl	$1024, %ebx             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
.LBB60_27:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI60_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB60_29
# %bb.28:
	orl	$2048, %ebx             # imm = 0x800
	movl	$42, __A_VARIABLE(%rip)
.LBB60_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end60:
	.size	RM_GetContextFlags, .Lfunc_end60-RM_GetContextFlags
                                        # -- End function
	.globl	RM_SelectDb             # -- Begin function RM_SelectDb
	.p2align	4, 0x90
	.type	RM_SelectDb,@function
RM_SelectDb:                            # @RM_SelectDb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rdi
	callq	selectDb
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end61:
	.size	RM_SelectDb, .Lfunc_end61-RM_SelectDb
                                        # -- End function
	.globl	RM_OpenKey              # -- Begin function RM_OpenKey
	.p2align	4, 0x90
	.type	RM_OpenKey,@function
RM_OpenKey:                             # @RM_OpenKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	16(%rdi), %rax
	movq	16(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	jne	.LBB62_1
# %bb.5:
	callq	lookupKeyRead
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB62_2
# %bb.6:
	xorl	%ebx, %ebx
	jmp	.LBB62_12
.LBB62_1:
	callq	lookupKeyWrite
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB62_2:
	movl	$120, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	16(%r14), %rax
	movq	16(%rax), %rax
	movq	%rax, 8(%rbx)
	movq	%r12, 16(%rbx)
	movq	%r12, %rdi
	callq	incrRefCount
	movq	%r13, 24(%rbx)
	movq	$0, 32(%rbx)
	movl	%r15d, 40(%rbx)
	movl	$0, 44(%rbx)
	movq	$0, 104(%rbx)
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB62_11
# %bb.3:
	movl	44(%r14), %ecx
	cmpl	40(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB62_4
# %bb.7:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB62_9
# %bb.8:
	movl	$16, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB62_9:
	movq	32(%r14), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%r14), %ecx
	jmp	.LBB62_10
.LBB62_4:
	movq	32(%r14), %rax
.LBB62_10:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$0, 8(%rax,%rdx)
	movq	%rbx, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB62_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB62_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	RM_OpenKey, .Lfunc_end62-RM_OpenKey
                                        # -- End function
	.globl	RM_ZsetRangeStop        # -- Begin function RM_ZsetRangeStop
	.p2align	4, 0x90
	.type	RM_ZsetRangeStop,@function
RM_ZsetRangeStop:                       # @RM_ZsetRangeStop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$1, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB63_2
# %bb.1:
	leaq	72(%rbx), %rdi
	callq	zslFreeLexRange
	movl	$42, __A_VARIABLE(%rip)
.LBB63_2:
	movl	$0, 44(%rbx)
	movq	$0, 104(%rbx)
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end63:
	.size	RM_ZsetRangeStop, .Lfunc_end63-RM_ZsetRangeStop
                                        # -- End function
	.globl	RM_KeyType              # -- Begin function RM_KeyType
	.p2align	4, 0x90
	.type	RM_KeyType,@function
RM_KeyType:                             # @RM_KeyType
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB64_4
# %bb.1:
	movq	24(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB64_4
# %bb.2:
	movb	(%rcx), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$15, %dl
	cmpb	$5, %dl
	ja	.LBB64_4
# %bb.3:
	movzbl	%cl, %eax
	shlq	$60, %rax
	sarq	$60, %rax
	movl	.Lswitch.table.RM_KeyType(,%rax,4), %eax
.LBB64_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end64:
	.size	RM_KeyType, .Lfunc_end64-RM_KeyType
                                        # -- End function
	.globl	RM_ValueLength          # -- Begin function RM_ValueLength
	.p2align	4, 0x90
	.type	RM_ValueLength,@function
RM_ValueLength:                         # @RM_ValueLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB65_5
# %bb.1:
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB65_5
# %bb.2:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$4, %cl
	ja	.LBB65_5
# %bb.3:
	andl	$15, %eax
	jmpq	*.LJTI65_0(,%rax,8)
.LBB65_4:
	callq	stringObjectLen
	jmp	.LBB65_12
.LBB65_5:
	xorl	%eax, %eax
.LBB65_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB65_8:
	callq	listTypeLength
	jmp	.LBB65_12
.LBB65_9:
	callq	setTypeSize
	jmp	.LBB65_12
.LBB65_10:
	callq	zsetLength
	jmp	.LBB65_12
.LBB65_11:
	callq	hashTypeLength
	jmp	.LBB65_12
.Lfunc_end65:
	.size	RM_ValueLength, .Lfunc_end65-RM_ValueLength
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI65_0:
	.quad	.LBB65_4
	.quad	.LBB65_8
	.quad	.LBB65_9
	.quad	.LBB65_10
	.quad	.LBB65_11
                                        # -- End function
	.text
	.globl	RM_DeleteKey            # -- Begin function RM_DeleteKey
	.p2align	4, 0x90
	.type	RM_DeleteKey,@function
RM_DeleteKey:                           # @RM_DeleteKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	je	.LBB66_3
# %bb.1:
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	cmpq	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB66_3
# %bb.2:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbDelete
	movq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB66_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end66:
	.size	RM_DeleteKey, .Lfunc_end66-RM_DeleteKey
                                        # -- End function
	.globl	RM_UnlinkKey            # -- Begin function RM_UnlinkKey
	.p2align	4, 0x90
	.type	RM_UnlinkKey,@function
RM_UnlinkKey:                           # @RM_UnlinkKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	je	.LBB67_3
# %bb.1:
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	cmpq	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB67_3
# %bb.2:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbAsyncDelete
	movq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB67_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end67:
	.size	RM_UnlinkKey, .Lfunc_end67-RM_UnlinkKey
                                        # -- End function
	.globl	RM_GetExpire            # -- Begin function RM_GetExpire
	.p2align	4, 0x90
	.type	RM_GetExpire,@function
RM_GetExpire:                           # @RM_GetExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movq	16(%rbx), %rsi
	callq	getExpire
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	cmpq	$-1, %r14
	je	.LBB68_3
# %bb.1:
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB68_3
# %bb.2:
	callq	mstime
	movq	%rax, %rcx
	xorl	%eax, %eax
	subq	%rcx, %r14
	cmovnsq	%r14, %rax
.LBB68_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end68:
	.size	RM_GetExpire, .Lfunc_end68-RM_GetExpire
                                        # -- End function
	.globl	RM_SetExpire            # -- Begin function RM_SetExpire
	.p2align	4, 0x90
	.type	RM_SetExpire,@function
RM_SetExpire:                           # @RM_SetExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB69_6
# %bb.1:
	movq	%rdi, %rbx
	cmpq	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB69_6
# %bb.2:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rsi
	je	.LBB69_4
# %bb.3:
	callq	mstime
	addq	%rax, %r14
	movq	(%rbx), %rax
	movq	8(%rbx), %rsi
	movq	16(%rax), %rdi
	movq	16(%rbx), %rdx
	movq	%r14, %rcx
	callq	setExpire
	jmp	.LBB69_5
.LBB69_4:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	removeExpire
.LBB69_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB69_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end69:
	.size	RM_SetExpire, .Lfunc_end69-RM_SetExpire
                                        # -- End function
	.globl	RM_StringSet            # -- Begin function RM_StringSet
	.p2align	4, 0x90
	.type	RM_StringSet,@function
RM_StringSet:                           # @RM_StringSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB70_5
# %bb.1:
	movq	%rdi, %rbx
	cmpq	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB70_5
# %bb.2:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB70_4
# %bb.3:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbDelete
	movq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB70_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%r14, %rdx
	callq	setKey
	movq	%r14, 24(%rbx)
	xorl	%eax, %eax
.LBB70_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end70:
	.size	RM_StringSet, .Lfunc_end70-RM_StringSet
                                        # -- End function
	.globl	RM_StringDMA            # -- Begin function RM_StringDMA
	.p2align	4, 0x90
	.type	RM_StringDMA,@function
RM_StringDMA:                           # @RM_StringDMA
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB71_1
# %bb.2:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %cl
	je	.LBB71_4
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB71_17
.LBB71_1:
	xorl	%ecx, %ecx
	movl	$.L.str.23, %eax
	jmp	.LBB71_16
.LBB71_4:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	jne	.LBB71_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testb	$-16, %cl
	je	.LBB71_7
.LBB71_6:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rax, %rdx
	callq	dbUnshareStringValue
	movq	%rax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB71_7:
	movq	8(%rax), %rax
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB71_8
# %bb.9:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI71_0(,%rdx,8)
.LBB71_10:
	shrq	$3, %rcx
	jmp	.LBB71_15
.LBB71_8:
	xorl	%ecx, %ecx
	jmp	.LBB71_15
.LBB71_11:
	movzbl	-3(%rax), %ecx
	jmp	.LBB71_15
.LBB71_12:
	movzwl	-5(%rax), %ecx
	jmp	.LBB71_15
.LBB71_13:
	movl	-9(%rax), %ecx
	jmp	.LBB71_15
.LBB71_14:
	movq	-17(%rax), %rcx
.LBB71_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB71_16:
	movq	%rcx, (%r14)
.LBB71_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end71:
	.size	RM_StringDMA, .Lfunc_end71-RM_StringDMA
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI71_0:
	.quad	.LBB71_10
	.quad	.LBB71_11
	.quad	.LBB71_12
	.quad	.LBB71_13
	.quad	.LBB71_14
                                        # -- End function
	.text
	.globl	RM_StringTruncate       # -- Begin function RM_StringTruncate
	.p2align	4, 0x90
	.type	RM_StringTruncate,@function
RM_StringTruncate:                      # @RM_StringTruncate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB72_32
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	24(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB72_3
# %bb.2:
	testb	$15, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB72_32
.LBB72_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870912, %r14        # imm = 0x20000000
	ja	.LBB72_32
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB72_6
# %bb.5:
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB72_33
.LBB72_6:
	testq	%rdx, %rdx
	je	.LBB72_7
# %bb.8:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbUnshareStringValue
	movq	%rax, 24(%rbx)
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB72_9
# %bb.10:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI72_0(,%rcx,8)
.LBB72_11:
	shrq	$3, %rax
	jmp	.LBB72_16
.LBB72_7:
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	sdsnewlen
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r14
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rax, %rdx
	callq	setKey
	movq	%r14, 24(%rbx)
	movq	%r14, %rdi
	callq	decrRefCount
	jmp	.LBB72_31
.LBB72_9:
	xorl	%eax, %eax
	jmp	.LBB72_16
.LBB72_12:
	movzbl	-3(%rdi), %eax
	jmp	.LBB72_16
.LBB72_13:
	movzwl	-5(%rdi), %eax
	jmp	.LBB72_16
.LBB72_14:
	movl	-9(%rdi), %eax
	jmp	.LBB72_16
.LBB72_15:
	movq	-17(%rdi), %rax
.LBB72_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jae	.LBB72_18
# %bb.17:
	movq	%r14, %rsi
	callq	sdsgrowzero
.LBB72_29:
	movq	24(%rbx), %rcx
	movq	%rax, 8(%rcx)
.LBB72_30:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB72_31
.LBB72_18:
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB72_31
# %bb.19:
	addq	$-1, %r14
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	sdsrange
	movq	24(%rbx), %rax
	movq	8(%rax), %rdi
	movb	-1(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %al
	addb	$-1, %al
	cmpb	$3, %al
	ja	.LBB72_24
# %bb.20:
	movzbl	%al, %eax
	jmpq	*.LJTI72_1(,%rax,8)
.LBB72_25:
	movzbl	-3(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%rdi), %ecx
	jmp	.LBB72_26
.LBB72_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB72_30
.LBB72_21:
	movzwl	-5(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	-3(%rdi), %ecx
	jmp	.LBB72_26
.LBB72_22:
	movl	-9(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-5(%rdi), %ecx
	subl	%eax, %ecx
	jmp	.LBB72_27
.LBB72_23:
	movq	-17(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-9(%rdi), %rcx
.LBB72_26:
	subq	%rax, %rcx
.LBB72_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB72_31
# %bb.28:
	callq	sdsRemoveFreeSpace
	jmp	.LBB72_29
.LBB72_31:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB72_32:
	movl	$42, __A_VARIABLE(%rip)
.LBB72_33:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end72:
	.size	RM_StringTruncate, .Lfunc_end72-RM_StringTruncate
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI72_0:
	.quad	.LBB72_11
	.quad	.LBB72_12
	.quad	.LBB72_13
	.quad	.LBB72_14
	.quad	.LBB72_15
.LJTI72_1:
	.quad	.LBB72_25
	.quad	.LBB72_21
	.quad	.LBB72_22
	.quad	.LBB72_23
                                        # -- End function
	.text
	.globl	RM_ListPush             # -- Begin function RM_ListPush
	.p2align	4, 0x90
	.type	RM_ListPush,@function
RM_ListPush:                            # @RM_ListPush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB73_5
# %bb.1:
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	24(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB73_3
# %bb.2:
	movl	(%r12), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$1, %ecx
	je	.LBB73_4
	jmp	.LBB73_6
.LBB73_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createQuicklistObject
	movq	%rax, %r12
	movq	8(%rax), %rdi
	movl	server+2864(%rip), %esi
	movl	server+2868(%rip), %edx
	callq	quicklistSetOptions
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%r12, %rdx
	callq	dbAdd
	movq	%r12, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB73_4:
	negl	%r15d
	sbbl	%edx, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	listTypePush
	xorl	%eax, %eax
.LBB73_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB73_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	RM_ListPush, .Lfunc_end73-RM_ListPush
                                        # -- End function
	.globl	RM_ListPop              # -- Begin function RM_ListPop
	.p2align	4, 0x90
	.type	RM_ListPop,@function
RM_ListPop:                             # @RM_ListPop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_1
# %bb.2:
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB74_1
# %bb.3:
	movl	(%rdi), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB74_1
# %bb.4:
	negl	%esi
	sbbl	%esi, %esi
	callq	listTypePop
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	getDecodedObject
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	moduleDelKeyIfEmpty
	movq	(%rbx), %rbx
	testb	$2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB74_13
# %bb.5:
	movl	44(%rbx), %ecx
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB74_11
# %bb.6:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB74_8
# %bb.7:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB74_8:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB74_12
.LBB74_1:
	xorl	%r14d, %r14d
.LBB74_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB74_11:
	movq	32(%rbx), %rax
.LBB74_12:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB74_13:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB74_14
.Lfunc_end74:
	.size	RM_ListPop, .Lfunc_end74-RM_ListPop
                                        # -- End function
	.globl	RM_ZsetAddFlagsToCoreFlags # -- Begin function RM_ZsetAddFlagsToCoreFlags
	.p2align	4, 0x90
	.type	RM_ZsetAddFlagsToCoreFlags,@function
RM_ZsetAddFlagsToCoreFlags:             # @RM_ZsetAddFlagsToCoreFlags
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dil
	je	.LBB75_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB75_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dil
	je	.LBB75_4
# %bb.3:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB75_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end75:
	.size	RM_ZsetAddFlagsToCoreFlags, .Lfunc_end75-RM_ZsetAddFlagsToCoreFlags
                                        # -- End function
	.globl	RM_ZsetAddFlagsFromCoreFlags # -- Begin function RM_ZsetAddFlagsFromCoreFlags
	.p2align	4, 0x90
	.type	RM_ZsetAddFlagsFromCoreFlags,@function
RM_ZsetAddFlagsFromCoreFlags:           # @RM_ZsetAddFlagsFromCoreFlags
# %bb.0:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %dil
	je	.LBB76_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB76_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %dil
	je	.LBB76_4
# %bb.3:
	orl	$8, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB76_4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dil
	je	.LBB76_6
# %bb.5:
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB76_6:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end76:
	.size	RM_ZsetAddFlagsFromCoreFlags, .Lfunc_end76-RM_ZsetAddFlagsFromCoreFlags
                                        # -- End function
	.globl	RM_ZsetAdd              # -- Begin function RM_ZsetAdd
	.p2align	4, 0x90
	.type	RM_ZsetAdd,@function
RM_ZsetAdd:                             # @RM_ZsetAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	$0, -36(%rbp)
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB77_2
.LBB77_22:
	movl	$1, %ebx
.LBB77_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB77_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB77_2:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	24(%rdi), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB77_4
# %bb.3:
	movl	(%r12), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$3, %eax
	je	.LBB77_5
	jmp	.LBB77_24
.LBB77_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	%xmm0, -48(%rbp)        # 8-byte Spill
	callq	createZsetZiplistObject
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movsd	-48(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%r12, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB77_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB77_11
# %bb.6:
	movl	(%r14), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB77_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB77_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB77_10
# %bb.9:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB77_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB77_11:
	movq	8(%r15), %rsi
	xorl	%ebx, %ebx
	leaq	-36(%rbp), %rdx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	callq	zsetAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB77_20
# %bb.12:
	testq	%r14, %r14
	je	.LBB77_23
# %bb.13:
	movl	-36(%rbp), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %cl
	je	.LBB77_15
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB77_15:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %cl
	je	.LBB77_17
# %bb.16:
	orl	$8, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB77_17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	je	.LBB77_19
# %bb.18:
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB77_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB77_23
.LBB77_20:
	testq	%r14, %r14
	je	.LBB77_22
# %bb.21:
	movl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB77_22
.Lfunc_end77:
	.size	RM_ZsetAdd, .Lfunc_end77-RM_ZsetAdd
                                        # -- End function
	.globl	RM_ZsetIncrby           # -- Begin function RM_ZsetIncrby
	.p2align	4, 0x90
	.type	RM_ZsetIncrby,@function
RM_ZsetIncrby:                          # @RM_ZsetIncrby
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	$0, -44(%rbp)
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	je	.LBB78_25
# %bb.1:
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	24(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB78_3
# %bb.2:
	movl	(%r13), %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$3, %edx
	je	.LBB78_4
	jmp	.LBB78_26
.LBB78_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movsd	%xmm0, -56(%rbp)        # 8-byte Spill
	callq	createZsetZiplistObject
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%r13, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB78_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB78_5
# %bb.6:
	movl	(%r12), %edx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB78_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB78_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB78_10
# %bb.9:
	orl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB78_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_11
.LBB78_5:
	xorl	%eax, %eax
.LBB78_11:
	orl	$1, %eax
	movl	%eax, -44(%rbp)
	movq	8(%r15), %rsi
	leaq	-44(%rbp), %rdx
	movq	%r13, %rdi
	callq	zsetAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB78_12
# %bb.14:
	testq	%r12, %r12
	je	.LBB78_24
# %bb.15:
	testb	$16, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB78_16
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %cl
	je	.LBB78_19
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
.LBB78_19:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %cl
	je	.LBB78_21
# %bb.20:
	orl	$8, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB78_21:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	je	.LBB78_23
# %bb.22:
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB78_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r12)
.LBB78_24:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB78_25
.LBB78_12:
	testq	%r12, %r12
	je	.LBB78_25
# %bb.13:
	movl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB78_25
.LBB78_16:
	movl	$0, (%r12)
.LBB78_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
.LBB78_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	RM_ZsetIncrby, .Lfunc_end78-RM_ZsetIncrby
                                        # -- End function
	.globl	RM_ZsetRem              # -- Begin function RM_ZsetRem
	.p2align	4, 0x90
	.type	RM_ZsetRem,@function
RM_ZsetRem:                             # @RM_ZsetRem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB79_10
# %bb.1:
	movq	%rdx, %rbx
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB79_2
# %bb.5:
	movl	(%rdi), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$3, %ecx
	jne	.LBB79_11
# %bb.6:
	movq	8(%rsi), %rsi
	callq	zsetDel
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB79_3
# %bb.7:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_10
# %bb.8:
	movl	$1, (%rbx)
	jmp	.LBB79_9
.LBB79_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_3:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB79_10
# %bb.4:
	movl	$0, (%rbx)
.LBB79_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB79_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end79:
	.size	RM_ZsetRem, .Lfunc_end79-RM_ZsetRem
                                        # -- End function
	.globl	RM_ZsetScore            # -- Begin function RM_ZsetScore
	.p2align	4, 0x90
	.type	RM_ZsetScore,@function
RM_ZsetScore:                           # @RM_ZsetScore
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	24(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB80_1
# %bb.2:
	movl	(%rdi), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB80_1
# %bb.3:
	movq	8(%rsi), %rsi
	callq	zsetScore
	movl	%eax, %ecx
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB80_4
.LBB80_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB80_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end80:
	.size	RM_ZsetScore, .Lfunc_end80-RM_ZsetScore
                                        # -- End function
	.globl	RM_ZsetRangeEndReached  # -- Begin function RM_ZsetRangeEndReached
	.p2align	4, 0x90
	.type	RM_ZsetRangeEndReached,@function
RM_ZsetRangeEndReached:                 # @RM_ZsetRangeEndReached
# %bb.0:
	movl	112(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end81:
	.size	RM_ZsetRangeEndReached, .Lfunc_end81-RM_ZsetRangeEndReached
                                        # -- End function
	.globl	zsetInitScoreRange      # -- Begin function zsetInitScoreRange
	.p2align	4, 0x90
	.type	zsetInitScoreRange,@function
zsetInitScoreRange:                     # @zsetInitScoreRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%ecx, %r14d
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testq	%rax, %rax
	je	.LBB82_10
# %bb.1:
	movl	%edx, %r15d
	movl	(%rax), %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB82_10
# %bb.2:
	movl	%esi, %r12d
	movq	%rdi, %rbx
	cmpl	$1, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB82_4
# %bb.3:
	leaq	72(%rbx), %rdi
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	zslFreeLexRange
	movsd	-40(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rax
.LBB82_4:
	movq	$0, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, 44(%rbx)
	movl	$0, 112(%rbx)
	leaq	48(%rbx), %rsi
	movsd	%xmm0, 48(%rbx)
	movsd	%xmm1, 56(%rbx)
	movl	%r12d, 64(%rbx)
	movl	%r15d, 68(%rbx)
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB82_11
# %bb.5:
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB82_7
# %bb.6:
	callq	zzlFirstInRange
	jmp	.LBB82_8
.LBB82_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB82_15
# %bb.12:
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB82_14
# %bb.13:
	callq	zslFirstInRange
	jmp	.LBB82_8
.LBB82_7:
	callq	zzlLastInRange
	jmp	.LBB82_8
.LBB82_14:
	callq	zslLastInRange
.LBB82_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB82_10
# %bb.9:
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB82_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB82_15:
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %edx
	movl	$2007, %esi             # imm = 0x7D7
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end82:
	.size	zsetInitScoreRange, .Lfunc_end82-zsetInitScoreRange
                                        # -- End function
	.globl	RM_ZsetFirstInScoreRange # -- Begin function RM_ZsetFirstInScoreRange
	.p2align	4, 0x90
	.type	RM_ZsetFirstInScoreRange,@function
RM_ZsetFirstInScoreRange:               # @RM_ZsetFirstInScoreRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %ecx
	callq	zsetInitScoreRange
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end83:
	.size	RM_ZsetFirstInScoreRange, .Lfunc_end83-RM_ZsetFirstInScoreRange
                                        # -- End function
	.globl	RM_ZsetLastInScoreRange # -- Begin function RM_ZsetLastInScoreRange
	.p2align	4, 0x90
	.type	RM_ZsetLastInScoreRange,@function
RM_ZsetLastInScoreRange:                # @RM_ZsetLastInScoreRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	zsetInitScoreRange
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end84:
	.size	RM_ZsetLastInScoreRange, .Lfunc_end84-RM_ZsetLastInScoreRange
                                        # -- End function
	.globl	zsetInitLexRange        # -- Begin function zsetInitLexRange
	.p2align	4, 0x90
	.type	zsetInitLexRange,@function
zsetInitLexRange:                       # @zsetInitLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r14d
	movq	24(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rcx, %rcx
	je	.LBB85_13
# %bb.1:
	movl	(%rcx), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB85_13
# %bb.2:
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	leaq	72(%rdi), %r15
	cmpl	$1, 44(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB85_4
# %bb.3:
	movq	%r15, %rdi
	callq	zslFreeLexRange
	movl	$42, __A_VARIABLE(%rip)
.LBB85_4:
	movl	$0, 44(%rbx)
	movq	$0, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 112(%rbx)
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	zslParseLexRange
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB85_5
# %bb.6:
	movl	$1, 44(%rbx)
	movq	24(%rbx), %rax
	movl	(%rax), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB85_14
# %bb.7:
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	testl	%r14d, %r14d
	je	.LBB85_9
# %bb.8:
	callq	zzlFirstInLexRange
	jmp	.LBB85_10
.LBB85_5:
	movl	$1, %eax
	jmp	.LBB85_12
.LBB85_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB85_18
# %bb.15:
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rsi
	testl	%r14d, %r14d
	je	.LBB85_17
# %bb.16:
	callq	zslFirstInLexRange
	jmp	.LBB85_10
.LBB85_9:
	callq	zzlLastInLexRange
	jmp	.LBB85_10
.LBB85_17:
	callq	zslLastInLexRange
.LBB85_10:
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 104(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB85_12
# %bb.11:
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB85_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB85_13:
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
.LBB85_18:
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %edx
	movl	$2071, %esi             # imm = 0x817
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end85:
	.size	zsetInitLexRange, .Lfunc_end85-zsetInitLexRange
                                        # -- End function
	.globl	RM_ZsetFirstInLexRange  # -- Begin function RM_ZsetFirstInLexRange
	.p2align	4, 0x90
	.type	RM_ZsetFirstInLexRange,@function
RM_ZsetFirstInLexRange:                 # @RM_ZsetFirstInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %ecx
	callq	zsetInitLexRange
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end86:
	.size	RM_ZsetFirstInLexRange, .Lfunc_end86-RM_ZsetFirstInLexRange
                                        # -- End function
	.globl	RM_ZsetLastInLexRange   # -- Begin function RM_ZsetLastInLexRange
	.p2align	4, 0x90
	.type	RM_ZsetLastInLexRange,@function
RM_ZsetLastInLexRange:                  # @RM_ZsetLastInLexRange
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	zsetInitLexRange
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end87:
	.size	RM_ZsetLastInLexRange, .Lfunc_end87-RM_ZsetLastInLexRange
                                        # -- End function
	.globl	RM_ZsetRangeCurrentElement # -- Begin function RM_ZsetRangeCurrentElement
	.p2align	4, 0x90
	.type	RM_ZsetRangeCurrentElement,@function
RM_ZsetRangeCurrentElement:             # @RM_ZsetRangeCurrentElement
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	104(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB88_1
# %bb.2:
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	24(%rdi), %rax
	movl	(%rax), %eax
	shrl	$4, %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB88_6
# %bb.3:
	movq	%rbx, %rdi
	callq	ziplistGetObject
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB88_5
# %bb.4:
	movq	24(%r15), %rax
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %rdi
	callq	zzlGetScore
	movsd	%xmm0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB88_5:
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	createObject
	jmp	.LBB88_18
.LBB88_1:
	xorl	%r14d, %r14d
	jmp	.LBB88_26
.LBB88_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jne	.LBB88_27
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB88_9
# %bb.8:
	movq	8(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB88_9:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB88_10
# %bb.11:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI88_0(,%rax,8)
.LBB88_12:
	shrq	$3, %rsi
	jmp	.LBB88_17
.LBB88_16:
	movq	-17(%rdi), %rsi
	jmp	.LBB88_17
.LBB88_14:
	movzwl	-5(%rdi), %esi
	jmp	.LBB88_17
.LBB88_15:
	movl	-9(%rdi), %esi
	jmp	.LBB88_17
.LBB88_13:
	movzbl	-3(%rdi), %esi
	jmp	.LBB88_17
.LBB88_10:
	xorl	%esi, %esi
.LBB88_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
.LBB88_18:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rbx
	testb	$2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB88_25
# %bb.19:
	movl	44(%rbx), %ecx
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB88_20
# %bb.21:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB88_23
# %bb.22:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB88_23:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB88_24
.LBB88_20:
	movq	32(%rbx), %rax
.LBB88_24:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB88_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB88_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB88_27:
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %edx
	movl	$2121, %esi             # imm = 0x849
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end88:
	.size	RM_ZsetRangeCurrentElement, .Lfunc_end88-RM_ZsetRangeCurrentElement
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI88_0:
	.quad	.LBB88_12
	.quad	.LBB88_13
	.quad	.LBB88_14
	.quad	.LBB88_15
	.quad	.LBB88_16
                                        # -- End function
	.text
	.globl	RM_ZsetRangeNext        # -- Begin function RM_ZsetRangeNext
	.p2align	4, 0x90
	.type	RM_ZsetRangeNext,@function
RM_ZsetRangeNext:                       # @RM_ZsetRangeNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	44(%rdi), %eax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB89_22
# %bb.1:
	movq	%rdi, %rbx
	movq	104(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB89_22
# %bb.2:
	movq	24(%rbx), %rdx
	movl	(%rdx), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB89_8
# %bb.3:
	movq	8(%rdx), %r12
	movq	%r12, %rdi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB89_15
# %bb.4:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	ziplistNext
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB89_20
# %bb.5:
	movq	%rax, %r15
	movl	44(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB89_16
# %bb.6:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ziplistNext
	movq	%rax, %rdi
	callq	zzlGetScore
	leaq	48(%rbx), %rdi
	callq	zslValueLteMax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB89_23
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB89_19
.LBB89_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB89_24
# %bb.9:
	movq	24(%rsi), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB89_20
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB89_13
# %bb.11:
	movsd	8(%r15), %xmm0          # xmm0 = mem[0],zero
	leaq	48(%rbx), %rdi
	callq	zslValueLteMax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB89_20
# %bb.12:
	movl	44(%rbx), %eax
.LBB89_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB89_19
# %bb.14:
	movq	(%r15), %rdi
	leaq	72(%rbx), %rsi
	callq	zslLexValueLteMax
	jmp	.LBB89_18
.LBB89_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB89_20
.LBB89_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB89_19
# %bb.17:
	leaq	72(%rbx), %rsi
	movq	%r15, %rdi
	callq	zzlLexValueLteMax
.LBB89_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB89_20
.LBB89_19:
	movq	%r15, 104(%rbx)
	movl	$1, %r14d
	jmp	.LBB89_21
.LBB89_20:
	movl	$1, 112(%rbx)
.LBB89_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB89_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB89_23:
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB89_21
.LBB89_24:
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %edx
	movl	$2186, %esi             # imm = 0x88A
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end89:
	.size	RM_ZsetRangeNext, .Lfunc_end89-RM_ZsetRangeNext
                                        # -- End function
	.globl	RM_ZsetRangePrev        # -- Begin function RM_ZsetRangePrev
	.p2align	4, 0x90
	.type	RM_ZsetRangePrev,@function
RM_ZsetRangePrev:                       # @RM_ZsetRangePrev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	44(%rdi), %eax
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB90_22
# %bb.1:
	movq	%rdi, %rbx
	movq	104(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB90_22
# %bb.2:
	movq	24(%rbx), %rdx
	movl	(%rdx), %ecx
	shrl	$4, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %ecx
	jne	.LBB90_8
# %bb.3:
	movq	8(%rdx), %r12
	movq	%r12, %rdi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB90_15
# %bb.4:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	ziplistPrev
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB90_20
# %bb.5:
	movq	%rax, %r15
	movl	44(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB90_16
# %bb.6:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	ziplistNext
	movq	%rax, %rdi
	callq	zzlGetScore
	leaq	48(%rbx), %rdi
	callq	zslValueGteMin
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB90_23
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB90_19
.LBB90_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jne	.LBB90_24
# %bb.9:
	movq	16(%rsi), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB90_20
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB90_13
# %bb.11:
	movsd	8(%r15), %xmm0          # xmm0 = mem[0],zero
	leaq	48(%rbx), %rdi
	callq	zslValueGteMin
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB90_20
# %bb.12:
	movl	44(%rbx), %eax
.LBB90_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB90_19
# %bb.14:
	movq	(%r15), %rdi
	leaq	72(%rbx), %rsi
	callq	zslLexValueGteMin
	jmp	.LBB90_18
.LBB90_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB90_20
.LBB90_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB90_19
# %bb.17:
	leaq	72(%rbx), %rsi
	movq	%r15, %rdi
	callq	zzlLexValueGteMin
.LBB90_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB90_20
.LBB90_19:
	movq	%r15, 104(%rbx)
	movl	$1, %r14d
	jmp	.LBB90_21
.LBB90_20:
	movl	$1, 112(%rbx)
.LBB90_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB90_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB90_23:
	movl	$1, 112(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB90_21
.LBB90_24:
	movl	$.L.str.24, %edi
	movl	$.L.str.25, %edx
	movl	$2249, %esi             # imm = 0x8C9
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end90:
	.size	RM_ZsetRangePrev, .Lfunc_end90-RM_ZsetRangePrev
                                        # -- End function
	.globl	RM_HashSet              # -- Begin function RM_HashSet
	.p2align	4, 0x90
	.type	RM_HashSet,@function
RM_HashSet:                             # @RM_HashSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	movl	%esi, %r13d
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB91_2
# %bb.1:
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm1, -208(%rbp)
	movaps	%xmm2, -192(%rbp)
	movaps	%xmm3, -176(%rbp)
	movaps	%xmm4, -160(%rbp)
	movaps	%xmm5, -144(%rbp)
	movaps	%xmm6, -128(%rbp)
	movaps	%xmm7, -112(%rbp)
.LBB91_2:
	movq	%rdx, -256(%rbp)
	movq	%rcx, -248(%rbp)
	movq	%r8, -240(%rbp)
	movq	%r9, -232(%rbp)
	xorl	%r12d, %r12d
	testb	$2, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB91_40
# %bb.3:
	movq	24(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB91_5
# %bb.4:
	movl	(%rax), %eax
	andl	$15, %eax
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB91_6
	jmp	.LBB91_41
.LBB91_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createHashObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rdi
	movq	16(%r14), %rsi
	movq	%rax, %rdx
	callq	dbAdd
	movq	%rbx, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_6:
	leaq	-272(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movq	%r14, -80(%rbp)         # 8-byte Spill
	jmp	.LBB91_9
	.p2align	4, 0x90
.LBB91_7:                               #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB91_8:                               #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_9:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	je	.LBB91_12
# %bb.10:                               #   in Loop: Header=BB91_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB91_14
# %bb.11:                               #   in Loop: Header=BB91_9 Depth=1
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB91_15
	.p2align	4, 0x90
.LBB91_12:                              #   in Loop: Header=BB91_9 Depth=1
	cmpl	$40, %eax
	ja	.LBB91_17
# %bb.13:                               #   in Loop: Header=BB91_9 Depth=1
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB91_18
	.p2align	4, 0x90
.LBB91_14:                              #   in Loop: Header=BB91_9 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
.LBB91_15:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB91_38
# %bb.16:                               #   in Loop: Header=BB91_9 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	createRawStringObject
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax
	jmp	.LBB91_19
	.p2align	4, 0x90
.LBB91_17:                              #   in Loop: Header=BB91_9 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -56(%rbp)
.LBB91_18:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB91_39
.LBB91_19:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$40, %eax
	ja	.LBB91_21
# %bb.20:                               #   in Loop: Header=BB91_9 Depth=1
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB91_22
	.p2align	4, 0x90
.LBB91_21:                              #   in Loop: Header=BB91_9 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
.LBB91_22:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %r13b
	je	.LBB91_30
# %bb.23:                               #   in Loop: Header=BB91_9 Depth=1
	movq	24(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	hashTypeExists
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r13b
	je	.LBB91_25
# %bb.24:                               #   in Loop: Header=BB91_9 Depth=1
	testl	%eax, %eax
	je	.LBB91_27
.LBB91_25:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB91_29
# %bb.26:                               #   in Loop: Header=BB91_9 Depth=1
	testl	%eax, %eax
	je	.LBB91_29
.LBB91_27:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	je	.LBB91_7
# %bb.28:                               #   in Loop: Header=BB91_9 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB91_7
.LBB91_29:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB91_30:                              #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r15
	je	.LBB91_36
# %bb.31:                               #   in Loop: Header=BB91_9 Depth=1
	movl	%r12d, -68(%rbp)        # 4-byte Spill
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r14d
	testb	$4, %r13b
	je	.LBB91_33
# %bb.32:                               #   in Loop: Header=BB91_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB91_33:                              #   in Loop: Header=BB91_9 Depth=1
	movq	%rbx, -96(%rbp)
	movq	%r15, -88(%rbp)
	movq	-80(%rbp), %r13         # 8-byte Reload
	movq	24(%r13), %rdi
	leaq	-96(%rbp), %rsi
	xorl	%edx, %edx
	movl	$1, %ecx
	callq	hashTypeTryConversion
	movq	24(%r13), %rdi
	movq	8(%rbx), %rsi
	movq	8(%r15), %rdx
	movl	%r12d, %ecx
	callq	hashTypeSet
	movl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r13d
	testb	$4, %r13b
	je	.LBB91_35
# %bb.34:                               #   in Loop: Header=BB91_9 Depth=1
	movq	$0, 8(%rbx)
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB91_35:                              #   in Loop: Header=BB91_9 Depth=1
	movl	-68(%rbp), %r14d        # 4-byte Reload
	addl	%r12d, %r14d
	movl	%r14d, %r12d
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB91_8
.LBB91_36:                              #   in Loop: Header=BB91_9 Depth=1
	movq	24(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	hashTypeDelete
	addl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r13b
	je	.LBB91_8
# %bb.37:                               #   in Loop: Header=BB91_9 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB91_7
.LBB91_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	moduleDelKeyIfEmpty
.LBB91_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB91_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end91:
	.size	RM_HashSet, .Lfunc_end91-RM_HashSet
                                        # -- End function
	.globl	RM_HashGet              # -- Begin function RM_HashGet
	.p2align	4, 0x90
	.type	RM_HashGet,@function
RM_HashGet:                             # @RM_HashGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movl	%esi, %r15d
	movq	%rdi, %r13
	testb	%al, %al
	je	.LBB92_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB92_2:
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	movq	24(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB92_4
# %bb.3:
	movl	(%rax), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$4, %ecx
	jne	.LBB92_43
.LBB92_4:
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -64(%rbp)
	jmp	.LBB92_5
	.p2align	4, 0x90
.LBB92_40:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB92_5:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax
	movslq	%eax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	je	.LBB92_11
# %bb.6:                                #   in Loop: Header=BB92_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB92_8
# %bb.7:                                #   in Loop: Header=BB92_5 Depth=1
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB92_9
	.p2align	4, 0x90
.LBB92_11:                              #   in Loop: Header=BB92_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB92_13
# %bb.12:                               #   in Loop: Header=BB92_5 Depth=1
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB92_14
	.p2align	4, 0x90
.LBB92_8:                               #   in Loop: Header=BB92_5 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
.LBB92_9:                               #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB92_41
# %bb.10:                               #   in Loop: Header=BB92_5 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	createRawStringObject
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-64(%rbp), %eax
	jmp	.LBB92_15
	.p2align	4, 0x90
.LBB92_13:                              #   in Loop: Header=BB92_5 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, -56(%rbp)
.LBB92_14:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB92_42
.LBB92_15:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r15b
	jne	.LBB92_16
# %bb.22:                               #   in Loop: Header=BB92_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB92_24
# %bb.23:                               #   in Loop: Header=BB92_5 Depth=1
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB92_25
	.p2align	4, 0x90
.LBB92_16:                              #   in Loop: Header=BB92_5 Depth=1
	cmpl	$40, %eax
	ja	.LBB92_18
# %bb.17:                               #   in Loop: Header=BB92_5 Depth=1
	movslq	%eax, %rcx
	addq	-48(%rbp), %rcx
	addl	$8, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB92_19
	.p2align	4, 0x90
.LBB92_24:                              #   in Loop: Header=BB92_5 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
.LBB92_25:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movq	24(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB92_36
# %bb.26:                               #   in Loop: Header=BB92_5 Depth=1
	movq	8(%r14), %rsi
	callq	hashTypeGetValueObject
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB92_37
# %bb.27:                               #   in Loop: Header=BB92_5 Depth=1
	movq	%rax, %rdi
	callq	getDecodedObject
	movq	%rax, %r12
	movq	(%rbx), %rdi
	callq	decrRefCount
	movq	%r12, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB92_38
# %bb.28:                               #   in Loop: Header=BB92_5 Depth=1
	movq	%r13, %rbx
	movq	(%r13), %r13
	testb	$2, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB92_35
# %bb.29:                               #   in Loop: Header=BB92_5 Depth=1
	movl	44(%r13), %ecx
	cmpl	40(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB92_30
# %bb.31:                               #   in Loop: Header=BB92_5 Depth=1
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB92_33
# %bb.32:                               #   in Loop: Header=BB92_5 Depth=1
	movl	$16, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB92_33:                              #   in Loop: Header=BB92_5 Depth=1
	movq	32(%r13), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%r13), %ecx
	jmp	.LBB92_34
	.p2align	4, 0x90
.LBB92_18:                              #   in Loop: Header=BB92_5 Depth=1
	movq	-56(%rbp), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, -56(%rbp)
.LBB92_19:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rbx
	movq	24(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB92_21
# %bb.20:                               #   in Loop: Header=BB92_5 Depth=1
	movq	8(%r14), %rsi
	callq	hashTypeExists
	movl	%eax, (%rbx)
	jmp	.LBB92_37
.LBB92_36:                              #   in Loop: Header=BB92_5 Depth=1
	movq	$0, (%rbx)
	jmp	.LBB92_37
.LBB92_21:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$0, (%rbx)
	jmp	.LBB92_37
.LBB92_30:                              #   in Loop: Header=BB92_5 Depth=1
	movq	32(%r13), %rax
.LBB92_34:                              #   in Loop: Header=BB92_5 Depth=1
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$1, 8(%rax,%rdx)
	movq	%r12, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB92_35:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	.p2align	4, 0x90
.LBB92_37:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB92_38:                              #   in Loop: Header=BB92_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	je	.LBB92_40
# %bb.39:                               #   in Loop: Header=BB92_5 Depth=1
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB92_40
.LBB92_41:
	movl	$42, __A_VARIABLE(%rip)
.LBB92_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB92_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end92:
	.size	RM_HashGet, .Lfunc_end92-RM_HashGet
                                        # -- End function
	.globl	moduleCreateCallReplyFromProto # -- Begin function moduleCreateCallReplyFromProto
	.p2align	4, 0x90
	.type	moduleCreateCallReplyFromProto,@function
moduleCreateCallReplyFromProto:         # @moduleCreateCallReplyFromProto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$48, %edi
	callq	zmalloc
	movq	%rbx, (%rax)
	movq	%r14, 24(%rax)
	movzbl	-1(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ebx
	andb	$7, %bl
	xorl	%ecx, %ecx
	cmpb	$4, %bl
	ja	.LBB93_1
# %bb.2:
	movl	%edx, %esi
	andl	$7, %esi
	jmpq	*.LJTI93_0(,%rsi,8)
.LBB93_3:
	shrq	$3, %rdx
	jmp	.LBB93_8
.LBB93_1:
	xorl	%edx, %edx
	jmp	.LBB93_8
.LBB93_4:
	movzbl	-3(%r14), %edx
	jmp	.LBB93_8
.LBB93_5:
	movzwl	-5(%r14), %edx
	jmp	.LBB93_8
.LBB93_6:
	movl	-9(%r14), %edx
	jmp	.LBB93_8
.LBB93_7:
	movq	-17(%r14), %rdx
.LBB93_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, 32(%rax)
	movl	$1, 12(%rax)
	movsbl	(%r14), %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-36, %edx
	cmpl	$22, %edx
	ja	.LBB93_13
# %bb.9:
	jmpq	*.LJTI93_1(,%rdx,8)
.LBB93_12:
	movl	$3, %ecx
	jmp	.LBB93_14
.LBB93_13:
	movl	$-1, %ecx
	jmp	.LBB93_14
.LBB93_10:
	movl	$1, %ecx
	jmp	.LBB93_14
.LBB93_11:
	movl	$2, %ecx
.LBB93_14:
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$42, %cl
	je	.LBB93_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %cl
	jne	.LBB93_18
.LBB93_16:
	cmpb	$45, 1(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB93_18
# %bb.17:
	movl	$4, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB93_18:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end93:
	.size	moduleCreateCallReplyFromProto, .Lfunc_end93-moduleCreateCallReplyFromProto
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI93_0:
	.quad	.LBB93_3
	.quad	.LBB93_4
	.quad	.LBB93_5
	.quad	.LBB93_6
	.quad	.LBB93_7
.LJTI93_1:
	.quad	.LBB93_14
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_12
	.quad	.LBB93_14
	.quad	.LBB93_13
	.quad	.LBB93_10
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_13
	.quad	.LBB93_11
                                        # -- End function
	.text
	.globl	moduleParseCallReply    # -- Begin function moduleParseCallReply
	.p2align	4, 0x90
	.type	moduleParseCallReply,@function
moduleParseCallReply:                   # @moduleParseCallReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	12(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB94_13
# %bb.1:
	movq	%rdi, %rbx
	andl	$-2, %eax
	movl	%eax, 12(%rdi)
	movq	24(%rdi), %r12
	movsbl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-36, %eax
	cmpl	$22, %eax
	ja	.LBB94_13
# %bb.2:
	jmpq	*.LJTI94_0(,%rax,8)
.LBB94_3:
	leaq	1(%r12), %r14
	movq	%r14, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%r14, 40(%rbx)
	subq	%r12, %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 16(%rbx)
	addq	$2, %rax
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	cmpb	$43, (%r12)
	setne	%al
	jmp	.LBB94_10
.LBB94_4:
	leaq	1(%r12), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r14
	movq	%rax, %r13
	subq	%r12, %r13
	leaq	-1(%r13), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	callq	string2ll
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB94_8
# %bb.5:
	addq	$2, %r14
	movq	%r14, 40(%rbx)
	movq	%rax, 16(%rbx)
	addq	%rax, %r13
	addq	$4, %r13
	xorl	%eax, %eax
	jmp	.LBB94_9
.LBB94_6:
	movq	%rbx, %rdi
	callq	moduleParseCallReply_Array
	jmp	.LBB94_12
.LBB94_7:
	leaq	1(%r12), %r14
	movq	%r14, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	subq	%r12, %r15
	leaq	-1(%r15), %rsi
	leaq	40(%rbx), %rdx
	movq	%r14, %rdi
	callq	string2ll
	addq	$2, %r15
	movq	%r15, 32(%rbx)
	movl	$2, 8(%rbx)
	jmp	.LBB94_11
.LBB94_8:
	addq	$2, %r13
	movl	$4, %eax
.LBB94_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, 32(%rbx)
.LBB94_10:
	movl	%eax, 8(%rbx)
.LBB94_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB94_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB94_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end94:
	.size	moduleParseCallReply, .Lfunc_end94-moduleParseCallReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI94_0:
	.quad	.LBB94_4
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_6
	.quad	.LBB94_3
	.quad	.LBB94_13
	.quad	.LBB94_3
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_13
	.quad	.LBB94_7
                                        # -- End function
	.text
	.globl	moduleParseCallReply_Int # -- Begin function moduleParseCallReply_Int
	.p2align	4, 0x90
	.type	moduleParseCallReply_Int,@function
moduleParseCallReply_Int:               # @moduleParseCallReply_Int
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movq	24(%rdi), %r12
	leaq	1(%r12), %r14
	movq	%r14, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %rbx
	subq	%r12, %rbx
	leaq	-1(%rbx), %rsi
	leaq	40(%r15), %rdx
	movq	%r14, %rdi
	callq	string2ll
	addq	$2, %rbx
	movq	%rbx, 32(%r15)
	movl	$2, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end95:
	.size	moduleParseCallReply_Int, .Lfunc_end95-moduleParseCallReply_Int
                                        # -- End function
	.globl	moduleParseCallReply_BulkString # -- Begin function moduleParseCallReply_BulkString
	.p2align	4, 0x90
	.type	moduleParseCallReply_BulkString,@function
moduleParseCallReply_BulkString:        # @moduleParseCallReply_BulkString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	24(%rdi), %r13
	leaq	1(%r13), %r15
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r12
	movq	%rax, %rbx
	subq	%r13, %rbx
	leaq	-1(%rbx), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	callq	string2ll
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB96_1
# %bb.2:
	addq	$2, %r12
	movq	%r12, 40(%r14)
	movq	%rax, 16(%r14)
	addq	%rax, %rbx
	addq	$4, %rbx
	xorl	%eax, %eax
	jmp	.LBB96_3
.LBB96_1:
	addq	$2, %rbx
	movl	$4, %eax
.LBB96_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, 32(%r14)
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	moduleParseCallReply_BulkString, .Lfunc_end96-moduleParseCallReply_BulkString
                                        # -- End function
	.globl	moduleParseCallReply_SimpleString # -- Begin function moduleParseCallReply_SimpleString
	.p2align	4, 0x90
	.type	moduleParseCallReply_SimpleString,@function
moduleParseCallReply_SimpleString:      # @moduleParseCallReply_SimpleString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	24(%rdi), %r15
	leaq	1(%r15), %r14
	movq	%r14, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%r14, 40(%rbx)
	subq	%r15, %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, 16(%rbx)
	addq	$2, %rax
	movq	%rax, 32(%rbx)
	xorl	%eax, %eax
	cmpb	$43, (%r15)
	setne	%al
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end97:
	.size	moduleParseCallReply_SimpleString, .Lfunc_end97-moduleParseCallReply_SimpleString
                                        # -- End function
	.globl	moduleParseCallReply_Array # -- Begin function moduleParseCallReply_Array
	.p2align	4, 0x90
	.type	moduleParseCallReply_Array,@function
moduleParseCallReply_Array:             # @moduleParseCallReply_Array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	24(%rdi), %r12
	leaq	1(%r12), %rbx
	movq	%rbx, %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r15
	movq	%r12, %rsi
	notq	%rsi
	addq	%rax, %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	callq	string2ll
	addq	$2, %r15
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB98_1
# %bb.2:
	shlq	$4, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, 40(%r14)
	movq	-48(%rbp), %rax
	movq	%rax, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %ecx
	testq	%rax, %rax
	jle	.LBB98_6
# %bb.3:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	$1, %r13d
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB98_4:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rbx,%r12), %rdi
	movl	$3, 12(%rbx,%r12)
	movq	%r15, 24(%rbx,%r12)
	movq	(%r14), %rax
	movq	%rax, (%rbx,%r12)
	callq	moduleParseCallReply
	addq	32(%rbx,%r12), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB98_5
# %bb.7:                                #   in Loop: Header=BB98_4 Depth=1
	movq	40(%r14), %rbx
	addq	$1, %r13
	addq	$48, %r12
	jmp	.LBB98_4
.LBB98_1:
	movl	$4, %ecx
	jmp	.LBB98_6
.LBB98_5:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$3, %ecx
.LBB98_6:
	subq	%r12, %r15
	movq	%r15, 32(%r14)
	movl	%ecx, 8(%r14)
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
.Lfunc_end98:
	.size	moduleParseCallReply_Array, .Lfunc_end98-moduleParseCallReply_Array
                                        # -- End function
	.globl	RM_FreeCallReply_Rec    # -- Begin function RM_FreeCallReply_Rec
	.p2align	4, 0x90
	.type	RM_FreeCallReply_Rec,@function
RM_FreeCallReply_Rec:                   # @RM_FreeCallReply_Rec
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%rdi), %eax
	testl	%esi, %esi
	jne	.LBB99_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB99_12
.LBB99_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB99_8
# %bb.3:
	cmpl	$3, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB99_8
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%r14)
	movq	40(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB99_7
# %bb.5:                                # %.preheader
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB99_6:                               # =>This Inner Loop Header: Depth=1
	addq	%r15, %rdi
	movl	$1, %esi
	callq	RM_FreeCallReply_Rec
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r14), %rdi
	addq	$48, %r15
	cmpq	16(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB99_6
.LBB99_7:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	12(%r14), %eax
.LBB99_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB99_12
# %bb.9:
	movq	24(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB99_11
# %bb.10:
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
.LBB99_11:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB99_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end99:
	.size	RM_FreeCallReply_Rec, .Lfunc_end99-RM_FreeCallReply_Rec
                                        # -- End function
	.globl	RM_CallReplyType        # -- Begin function RM_CallReplyType
	.p2align	4, 0x90
	.type	RM_CallReplyType,@function
RM_CallReplyType:                       # @RM_CallReplyType
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB100_1
# %bb.2:
	movl	8(%rdi), %eax
	jmp	.LBB100_3
.LBB100_1:
	movl	$-1, %eax
.LBB100_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end100:
	.size	RM_CallReplyType, .Lfunc_end100-RM_CallReplyType
                                        # -- End function
	.globl	RM_CallReplyLength      # -- Begin function RM_CallReplyLength
	.p2align	4, 0x90
	.type	RM_CallReplyLength,@function
RM_CallReplyLength:                     # @RM_CallReplyLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	moduleParseCallReply
	movl	8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$3, %ecx
	ja	.LBB101_3
# %bb.1:
	cmpl	$2, %ecx
	je	.LBB101_3
# %bb.2:
	movq	16(%rbx), %rax
.LBB101_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end101:
	.size	RM_CallReplyLength, .Lfunc_end101-RM_CallReplyLength
                                        # -- End function
	.globl	RM_CallReplyArrayElement # -- Begin function RM_CallReplyArrayElement
	.p2align	4, 0x90
	.type	RM_CallReplyArrayElement,@function
RM_CallReplyArrayElement:               # @RM_CallReplyArrayElement
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	moduleParseCallReply
	cmpl	$3, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB102_4
# %bb.1:
	cmpq	%r14, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB102_4
# %bb.2:
	leaq	(%r14,%r14,2), %rax
	shlq	$4, %rax
	addq	40(%rbx), %rax
	jmp	.LBB102_5
.LBB102_4:
	xorl	%eax, %eax
.LBB102_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end102:
	.size	RM_CallReplyArrayElement, .Lfunc_end102-RM_CallReplyArrayElement
                                        # -- End function
	.globl	RM_CallReplyInteger     # -- Begin function RM_CallReplyInteger
	.p2align	4, 0x90
	.type	RM_CallReplyInteger,@function
RM_CallReplyInteger:                    # @RM_CallReplyInteger
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	moduleParseCallReply
	cmpl	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB103_1
# %bb.2:
	movq	40(%rbx), %rax
	jmp	.LBB103_3
.LBB103_1:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
.LBB103_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end103:
	.size	RM_CallReplyInteger, .Lfunc_end103-RM_CallReplyInteger
                                        # -- End function
	.globl	RM_CallReplyStringPtr   # -- Begin function RM_CallReplyStringPtr
	.p2align	4, 0x90
	.type	RM_CallReplyStringPtr,@function
RM_CallReplyStringPtr:                  # @RM_CallReplyStringPtr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	moduleParseCallReply
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB104_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB104_2
.LBB104_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB104_5
# %bb.4:
	movq	16(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB104_5:
	movq	40(%rbx), %rax
	jmp	.LBB104_6
.LBB104_2:
	xorl	%eax, %eax
.LBB104_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end104:
	.size	RM_CallReplyStringPtr, .Lfunc_end104-RM_CallReplyStringPtr
                                        # -- End function
	.globl	RM_CreateStringFromCallReply # -- Begin function RM_CreateStringFromCallReply
	.p2align	4, 0x90
	.type	RM_CreateStringFromCallReply,@function
RM_CreateStringFromCallReply:           # @RM_CreateStringFromCallReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	callq	moduleParseCallReply
	movl	8(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jae	.LBB105_1
# %bb.5:
	movq	40(%rbx), %rsi
	movq	(%rbx), %rdi
	movq	16(%rbx), %rdx
	jmp	.LBB105_3
.LBB105_1:
	jne	.LBB105_4
# %bb.2:
	movq	40(%rbx), %rdx
	leaq	-80(%rbp), %r14
	movl	$64, %esi
	movq	%r14, %rdi
	callq	ll2string
	movq	(%rbx), %rdi
	movslq	%eax, %rdx
	movq	%r14, %rsi
.LBB105_3:
	callq	RM_CreateString
.LBB105_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end105:
	.size	RM_CreateStringFromCallReply, .Lfunc_end105-RM_CreateStringFromCallReply
                                        # -- End function
	.globl	RM_Call                 # -- Begin function RM_Call
	.p2align	4, 0x90
	.type	RM_Call,@function
RM_Call:                                # @RM_Call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB106_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB106_2:
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -64(%rbp)
	movl	$-1, %edi
	callq	createClient
	movq	%rax, %r12
	leaq	-40(%rbp), %rdx
	leaq	-36(%rbp), %rcx
	leaq	-64(%rbp), %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	moduleCreateArgvFromUserFormat
	movl	-36(%rbp), %r15d
	orb	$8, 163(%r12)
	movq	16(%r14), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%r12)
	movq	%rax, 72(%r12)
	movl	-40(%rbp), %ebx
	movl	%ebx, 64(%r12)
	movq	8(%r14), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB106_4
# %bb.3:
	addl	$1, 56(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB106_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB106_12
# %bb.5:
	movq	%r12, %rdi
	callq	moduleCallCommandFilters
	movq	72(%r12), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	lookupCommand
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB106_9
# %bb.6:
	movq	%rax, 88(%r12)
	movq	%rax, 80(%r12)
	movl	16(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jle	.LBB106_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %ecx
	jne	.LBB106_9
.LBB106_8:
	negl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jge	.LBB106_16
.LBB106_9:
	callq	__errno
	movl	$22, (%rax)
.LBB106_10:
	xorl	%r15d, %r15d
.LBB106_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB106_13
.LBB106_12:
	xorl	%r15d, %r15d
.LBB106_13:
	movq	8(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB106_15
# %bb.14:
	addl	$-1, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB106_15:
	movq	%r12, %rdi
	callq	freeClient
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB106_16:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB106_20
# %bb.17:
	movq	16(%r14), %rcx
	testb	$2, 160(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB106_20
# %bb.18:
	movl	$-131585, %edx          # imm = 0xFFFDFDFF
	andl	160(%r12), %edx
	movl	%edx, 160(%r12)
	movl	$131584, %esi           # imm = 0x20200
	andl	160(%rcx), %esi
	orl	%edx, %esi
	movl	%esi, 160(%r12)
	movq	72(%r12), %rdx
	movl	64(%r12), %ecx
	movq	%r12, %rdi
	movq	%rax, %rsi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	getNodeByQuery
	movq	server+2944(%rip), %rcx
	cmpq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB106_20
# %bb.19:
	callq	__errno
	movl	$1, (%rax)
	jmp	.LBB106_10
.LBB106_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %esi
	testb	$1, %r15b
	je	.LBB106_26
# %bb.21:
	movq	16(%r14), %rdi
	testl	$264, 160(%rdi)         # imm = 0x108
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB106_25
# %bb.22:
	movl	48(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB106_25
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB106_25
# %bb.24:
	callq	execCommandPropagateMulti
	orb	$1, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB106_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$15, %esi
.LBB106_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	call
	movq	%r12, %rdi
	addq	$532, %rdi              # imm = 0x214
	movslq	528(%r12), %rsi
	callq	sdsnewlen
	movq	%rax, %rbx
	movl	$0, 528(%r12)
	.p2align	4, 0x90
.LBB106_27:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	112(%r12), %rax
	cmpq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB106_29
# %bb.28:                               #   in Loop: Header=BB106_27 Depth=1
	movq	(%rax), %rax
	movq	16(%rax), %rsi
	movq	8(%rsi), %rdx
	addq	$16, %rsi
	movq	%rbx, %rdi
	callq	sdscatlen
	movq	%rax, %rbx
	movq	112(%r12), %rdi
	movq	(%rdi), %rsi
	callq	listDelNode
	jmp	.LBB106_27
.LBB106_29:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	moduleCreateCallReplyFromProto
	movq	%rax, %r15
	testb	$2, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB106_36
# %bb.30:
	movl	44(%r14), %ecx
	cmpl	40(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB106_34
# %bb.31:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB106_33
# %bb.32:
	movl	$16, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB106_33:
	movq	32(%r14), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%r14), %ecx
	jmp	.LBB106_35
.LBB106_34:
	movq	32(%r14), %rax
.LBB106_35:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$2, 8(%rax,%rdx)
	movq	%r15, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB106_36:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB106_11
.Lfunc_end106:
	.size	RM_Call, .Lfunc_end106-RM_Call
                                        # -- End function
	.globl	moduleCallCommandFilters # -- Begin function moduleCallCommandFilters
	.p2align	4, 0x90
	.type	moduleCallCommandFilters,@function
moduleCallCommandFilters:               # @moduleCallCommandFilters
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r14
	movq	moduleCommandFilters(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB107_9
# %bb.1:
	leaq	-64(%rbp), %r15
	movq	%r15, %rsi
	callq	listRewind
	movq	72(%r14), %r12
	movq	%r12, -48(%rbp)
	movl	64(%r14), %ebx
	movl	%ebx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB107_8
# %bb.2:                                # %.preheader
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %rbx
	jmp	.LBB107_3
	.p2align	4, 0x90
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	movq	%r15, %rdi
	callq	*8(%rax)
.LBB107_6:                              #   in Loop: Header=BB107_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB107_7
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	testb	$1, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB107_5
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	movq	(%rax), %rcx
	cmpl	$0, 56(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB107_6
	jmp	.LBB107_5
.LBB107_7:
	movq	-48(%rbp), %r12
	movl	-40(%rbp), %ebx
.LBB107_8:
	movq	%r12, 72(%r14)
	movl	%ebx, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB107_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end107:
	.size	moduleCallCommandFilters, .Lfunc_end107-moduleCallCommandFilters
                                        # -- End function
	.globl	RM_CallReplyProto       # -- Begin function RM_CallReplyProto
	.p2align	4, 0x90
	.type	RM_CallReplyProto,@function
RM_CallReplyProto:                      # @RM_CallReplyProto
# %bb.0:
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB108_10
# %bb.1:
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB108_2
# %bb.3:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI108_0(,%rdx,8)
.LBB108_4:
	shrq	$3, %rcx
	jmp	.LBB108_9
.LBB108_2:
	xorl	%ecx, %ecx
	jmp	.LBB108_9
.LBB108_5:
	movzbl	-3(%rax), %ecx
	jmp	.LBB108_9
.LBB108_6:
	movzwl	-5(%rax), %ecx
	jmp	.LBB108_9
.LBB108_7:
	movl	-9(%rax), %ecx
	jmp	.LBB108_9
.LBB108_8:
	movq	-17(%rax), %rcx
.LBB108_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB108_10:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end108:
	.size	RM_CallReplyProto, .Lfunc_end108-RM_CallReplyProto
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI108_0:
	.quad	.LBB108_4
	.quad	.LBB108_5
	.quad	.LBB108_6
	.quad	.LBB108_7
	.quad	.LBB108_8
                                        # -- End function
	.text
	.globl	moduleTypeEncodeId      # -- Begin function moduleTypeEncodeId
	.p2align	4, 0x90
	.type	moduleTypeEncodeId,@function
moduleTypeEncodeId:                     # @moduleTypeEncodeId
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r12
	movq	ModuleTypeNameCharSet(%rip), %rbx
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rax
	jne	.LBB109_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1023, %r14d            # imm = 0x3FF
	jbe	.LBB109_4
# %bb.3:
	xorl	%ecx, %ecx
	jmp	.LBB109_9
.LBB109_1:
	xorl	%ecx, %ecx
	jmp	.LBB109_8
.LBB109_4:
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB109_6
# %bb.5:
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	1(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB109_6
# %bb.10:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	2(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -80(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB109_6
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	3(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB109_6
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	4(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -64(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB109_6
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	5(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB109_6
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	6(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)         # 8-byte Spill
	testq	%rax, %rax
	je	.LBB109_6
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	7(%r12), %esi
	movq	%rbx, %rdi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB109_6
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	8(%r12), %esi
	movq	%rbx, %rdi
	movq	%rax, %r12
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB109_6
# %bb.17:
	movq	%r12, %rsi
	subq	%rbx, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	subq	%rbx, %rdi
	movq	-56(%rbp), %r9          # 8-byte Reload
	subq	%rbx, %r9
	movq	-64(%rbp), %r8          # 8-byte Reload
	subl	%ebx, %r8d
	movq	-72(%rbp), %rdx         # 8-byte Reload
	subl	%ebx, %edx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	subl	%ebx, %ecx
	subl	%ebx, %r13d
	subl	%ebx, %r15d
	shll	$6, %r13d
	shll	$12, %r15d
	orl	%r13d, %r15d
	orl	%ecx, %r15d
	shll	$12, %r15d
	shll	$6, %edx
	orl	%r8d, %edx
	orl	%r15d, %edx
	subq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$34, %rdx
	shlq	$28, %r9
	shlq	$22, %rdi
	orq	%r9, %rdi
	shlq	$16, %rsi
	orq	%rdi, %rsi
	shlq	$10, %rax
	orq	%rsi, %rax
	movslq	%r14d, %rcx
	orq	%rax, %rcx
	orq	%rdx, %rcx
	jmp	.LBB109_7
.LBB109_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB109_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB109_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB109_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end109:
	.size	moduleTypeEncodeId, .Lfunc_end109-moduleTypeEncodeId
                                        # -- End function
	.globl	moduleTypeLookupModuleByName # -- Begin function moduleTypeLookupModuleByName
	.p2align	4, 0x90
	.type	moduleTypeLookupModuleByName,@function
moduleTypeLookupModuleByName:           # @moduleTypeLookupModuleByName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r12
	movq	modules(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB110_8
# %bb.1:
	leaq	-48(%rbp), %r15
	jmp	.LBB110_2
	.p2align	4, 0x90
.LBB110_7:                              #   in Loop: Header=BB110_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB110_8
.LBB110_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB110_3 Depth 2
	movq	8(%rax), %rax
	movq	24(%rax), %rdi
	movq	%r15, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB110_3:                              #   Parent Loop BB110_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB110_7
# %bb.4:                                #   in Loop: Header=BB110_3 Depth=2
	movq	16(%rax), %rbx
	leaq	84(%rbx), %rsi
	movl	$10, %edx
	movq	%r12, %rdi
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB110_5
# %bb.6:                                #   in Loop: Header=BB110_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB110_3
.LBB110_5:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB110_9
.LBB110_8:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	xorl	%ebx, %ebx
.LBB110_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end110:
	.size	moduleTypeLookupModuleByName, .Lfunc_end110-moduleTypeLookupModuleByName
                                        # -- End function
	.globl	moduleTypeLookupModuleByID # -- Begin function moduleTypeLookupModuleByID
	.p2align	4, 0x90
	.type	moduleTypeLookupModuleByID,@function
moduleTypeLookupModuleByID:             # @moduleTypeLookupModuleByID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	moduleTypeLookupModuleByID.cache+8(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %r13b
	testq	%rbx, %rbx
	je	.LBB111_1
# %bb.2:
	cmpq	%r14, moduleTypeLookupModuleByID.cache(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB111_17
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	moduleTypeLookupModuleByID.cache+24(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB111_4
# %bb.18:
	cmpq	%r14, moduleTypeLookupModuleByID.cache+16(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB111_17
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	moduleTypeLookupModuleByID.cache+40(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB111_20
# %bb.21:
	cmpq	%r14, moduleTypeLookupModuleByID.cache+32(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB111_17
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB111_6
.LBB111_1:
	xorl	%eax, %eax
	jmp	.LBB111_5
.LBB111_4:
	movl	$1, %eax
	jmp	.LBB111_5
.LBB111_20:
	movl	$2, %eax
.LBB111_5:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB111_6:
	movq	modules(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB111_7
# %bb.8:
	leaq	-64(%rbp), %r12
	.p2align	4, 0x90
.LBB111_9:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB111_10 Depth 2
	movq	8(%rax), %rax
	movq	24(%rax), %rdi
	movq	%r12, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB111_10:                             #   Parent Loop BB111_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB111_11
# %bb.12:                               #   in Loop: Header=BB111_10 Depth=2
	movq	16(%rax), %rbx
	movq	(%rbx), %rax
	xorq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1023, %rax             # imm = 0x3FF
	ja	.LBB111_10
	jmp	.LBB111_13
	.p2align	4, 0x90
.LBB111_11:                             #   in Loop: Header=BB111_9 Depth=1
	xorl	%ebx, %ebx
.LBB111_13:                             #   in Loop: Header=BB111_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB111_15
# %bb.14:                               #   in Loop: Header=BB111_9 Depth=1
	testq	%rax, %rax
	jne	.LBB111_9
	jmp	.LBB111_15
.LBB111_7:
	xorl	%ebx, %ebx
.LBB111_15:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	testq	%rbx, %rbx
	sete	%al
	xorb	$1, %r13b
	movl	$42, __A_VARIABLE(%rip)
	orb	%al, %r13b
	jne	.LBB111_17
# %bb.16:
	movq	-48(%rbp), %rax         # 8-byte Reload
	shlq	$4, %rax
	movq	%r14, moduleTypeLookupModuleByID.cache(%rax)
	movq	%rbx, moduleTypeLookupModuleByID.cache+8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB111_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end111:
	.size	moduleTypeLookupModuleByID, .Lfunc_end111-moduleTypeLookupModuleByID
                                        # -- End function
	.globl	moduleTypeNameByID      # -- Begin function moduleTypeNameByID
	.p2align	4, 0x90
	.type	moduleTypeNameByID,@function
moduleTypeNameByID:                     # @moduleTypeNameByID
# %bb.0:
	movq	ModuleTypeNameCharSet(%rip), %rax
	movb	$0, 9(%rdi)
	movl	%esi, %ecx
	shrl	$10, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax,%rcx), %cl
	movb	%cl, 8(%rdi)
	movl	%esi, %ecx
	shrl	$16, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax,%rcx), %cl
	movb	%cl, 7(%rdi)
	movl	%esi, %ecx
	shrl	$22, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax,%rcx), %cl
	movb	%cl, 6(%rdi)
	movq	%rsi, %rcx
	shrq	$28, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ecx
	movb	(%rax,%rcx), %cl
	movb	%cl, 5(%rdi)
	movq	%rsi, %rcx
	shrq	$34, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ecx
	movb	(%rax,%rcx), %cl
	movb	%cl, 4(%rdi)
	movq	%rsi, %rcx
	shrq	$40, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ecx
	movb	(%rax,%rcx), %cl
	movb	%cl, 3(%rdi)
	movq	%rsi, %rcx
	shrq	$46, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ecx
	movb	(%rax,%rcx), %cl
	movb	%cl, 2(%rdi)
	movq	%rsi, %rcx
	shrq	$52, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$63, %ecx
	movb	(%rax,%rcx), %cl
	movb	%cl, 1(%rdi)
	shrq	$58, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax,%rsi), %al
	movb	%al, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end112:
	.size	moduleTypeNameByID, .Lfunc_end112-moduleTypeNameByID
                                        # -- End function
	.globl	RM_CreateDataType       # -- Begin function RM_CreateDataType
	.p2align	4, 0x90
	.type	RM_CreateDataType,@function
RM_CreateDataType:                      # @RM_CreateDataType
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	moduleTypeEncodeId
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB113_3
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	moduleTypeLookupModuleByName
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB113_4
.LBB113_3:
	xorl	%r13d, %r13d
	jmp	.LBB113_10
.LBB113_4:
	cmpq	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB113_8
# %bb.5:
	movl	$96, %edi
	callq	zcalloc
	movq	%rax, %r13
	movq	%rbx, (%rax)
	movq	8(%r14), %rax
	movq	%rax, 8(%r13)
	movups	8(%r12), %xmm0
	movups	%xmm0, 16(%r13)
	movups	24(%r12), %xmm0
	movups	%xmm0, 32(%r13)
	movups	40(%r12), %xmm0
	movups	%xmm0, 48(%r13)
	cmpq	$2, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB113_7
# %bb.6:
	movups	56(%r12), %xmm0
	movups	%xmm0, 64(%r13)
	movl	72(%r12), %eax
	movl	%eax, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB113_7:
	movq	%r13, %rdi
	addq	$84, %rdi
	movl	$10, %edx
	movq	%r15, %rsi
	callq	memcpy
	movq	8(%r14), %rax
	movq	24(%rax), %rdi
	movq	%r13, %rsi
	callq	listAddNodeTail
	jmp	.LBB113_9
.LBB113_8:
	xorl	%r13d, %r13d
.LBB113_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB113_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end113:
	.size	RM_CreateDataType, .Lfunc_end113-RM_CreateDataType
                                        # -- End function
	.globl	RM_ModuleTypeSetValue   # -- Begin function RM_ModuleTypeSetValue
	.p2align	4, 0x90
	.type	RM_ModuleTypeSetValue,@function
RM_ModuleTypeSetValue:                  # @RM_ModuleTypeSetValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testb	$2, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB114_5
# %bb.1:
	movq	%rdi, %rbx
	cmpq	$0, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB114_5
# %bb.2:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB114_4
# %bb.3:
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	callq	dbDelete
	movq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB114_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	createModuleObject
	movq	%rax, %r14
	movq	8(%rbx), %rdi
	movq	16(%rbx), %rsi
	movq	%rax, %rdx
	callq	setKey
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%r14, 24(%rbx)
	xorl	%eax, %eax
.LBB114_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end114:
	.size	RM_ModuleTypeSetValue, .Lfunc_end114-RM_ModuleTypeSetValue
                                        # -- End function
	.globl	RM_ModuleTypeGetType    # -- Begin function RM_ModuleTypeGetType
	.p2align	4, 0x90
	.type	RM_ModuleTypeGetType,@function
RM_ModuleTypeGetType:                   # @RM_ModuleTypeGetType
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB115_6
# %bb.1:
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB115_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$15, %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %cl
	jne	.LBB115_6
# %bb.3:
	movq	8(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB115_7
.LBB115_6:
	xorl	%eax, %eax
.LBB115_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end115:
	.size	RM_ModuleTypeGetType, .Lfunc_end115-RM_ModuleTypeGetType
                                        # -- End function
	.globl	RM_ModuleTypeGetValue   # -- Begin function RM_ModuleTypeGetValue
	.p2align	4, 0x90
	.type	RM_ModuleTypeGetValue,@function
RM_ModuleTypeGetValue:                  # @RM_ModuleTypeGetValue
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB116_6
# %bb.1:
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB116_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	andb	$15, %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$5, %cl
	jne	.LBB116_6
# %bb.3:
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB116_7
.LBB116_6:
	xorl	%eax, %eax
.LBB116_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end116:
	.size	RM_ModuleTypeGetValue, .Lfunc_end116-RM_ModuleTypeGetValue
                                        # -- End function
	.globl	moduleRDBLoadError      # -- Begin function moduleRDBLoadError
	.p2align	4, 0x90
	.type	moduleRDBLoadError,@function
moduleRDBLoadError:                     # @moduleRDBLoadError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %r8
	movq	16(%rdi), %rcx
	movq	8(%rcx), %rax
	movq	8(%rax), %rdx
	addq	$84, %rcx
	movl	$.L.str.27, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end117:
	.size	moduleRDBLoadError, .Lfunc_end117-moduleRDBLoadError
                                        # -- End function
	.globl	RM_SaveUnsigned         # -- Begin function RM_SaveUnsigned
	.p2align	4, 0x90
	.type	RM_SaveUnsigned,@function
RM_SaveUnsigned:                        # @RM_SaveUnsigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB118_6
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$2, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB118_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB118_4
# %bb.3:
	cltq
	addq	%rax, (%rbx)
	jmp	.LBB118_5
.LBB118_4:
	movl	$1, 24(%rbx)
.LBB118_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB118_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end118:
	.size	RM_SaveUnsigned, .Lfunc_end118-RM_SaveUnsigned
                                        # -- End function
	.globl	RM_LoadUnsigned         # -- Begin function RM_LoadUnsigned
	.p2align	4, 0x90
	.type	RM_LoadUnsigned,@function
RM_LoadUnsigned:                        # @RM_LoadUnsigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB119_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jne	.LBB119_4
.LBB119_2:
	movq	8(%rbx), %rdi
	leaq	-16(%rbp), %rdx
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB119_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB119_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end119:
	.size	RM_LoadUnsigned, .Lfunc_end119-RM_LoadUnsigned
                                        # -- End function
	.globl	RM_SaveSigned           # -- Begin function RM_SaveSigned
	.p2align	4, 0x90
	.type	RM_SaveSigned,@function
RM_SaveSigned:                          # @RM_SaveSigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB120_6
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$2, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB120_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB120_4
# %bb.3:
	cltq
	addq	%rax, (%rbx)
	jmp	.LBB120_5
.LBB120_4:
	movl	$1, 24(%rbx)
.LBB120_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB120_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end120:
	.size	RM_SaveSigned, .Lfunc_end120-RM_SaveSigned
                                        # -- End function
	.globl	RM_LoadSigned           # -- Begin function RM_LoadSigned
	.p2align	4, 0x90
	.type	RM_LoadSigned,@function
RM_LoadSigned:                          # @RM_LoadSigned
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB121_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jne	.LBB121_4
.LBB121_2:
	movq	8(%rbx), %rdi
	leaq	-16(%rbp), %rdx
	xorl	%esi, %esi
	callq	rdbLoadLenByRef
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB121_4
# %bb.3:
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB121_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end121:
	.size	RM_LoadSigned, .Lfunc_end121-RM_LoadSigned
                                        # -- End function
	.globl	RM_SaveString           # -- Begin function RM_SaveString
	.p2align	4, 0x90
	.type	RM_SaveString,@function
RM_SaveString:                          # @RM_SaveString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB122_6
# %bb.1:
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$5, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB122_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	rdbSaveStringObject
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB122_4
# %bb.3:
	addq	%rax, (%rbx)
	jmp	.LBB122_5
.LBB122_4:
	movl	$1, 24(%rbx)
.LBB122_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB122_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end122:
	.size	RM_SaveString, .Lfunc_end122-RM_SaveString
                                        # -- End function
	.globl	RM_SaveStringBuffer     # -- Begin function RM_SaveStringBuffer
	.p2align	4, 0x90
	.type	RM_SaveStringBuffer,@function
RM_SaveStringBuffer:                    # @RM_SaveStringBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB123_6
# %bb.1:
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movl	$5, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB123_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	rdbSaveRawString
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB123_4
# %bb.3:
	addq	%rax, (%rbx)
	jmp	.LBB123_5
.LBB123_4:
	movl	$1, 24(%rbx)
.LBB123_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB123_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end123:
	.size	RM_SaveStringBuffer, .Lfunc_end123-RM_SaveStringBuffer
                                        # -- End function
	.globl	moduleLoadString        # -- Begin function moduleLoadString
	.p2align	4, 0x90
	.type	moduleLoadString,@function
moduleLoadString:                       # @moduleLoadString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB124_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	jne	.LBB124_4
.LBB124_2:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	testl	%r15d, %r15d
	setne	%sil
	addl	%esi, %esi
	movq	%r14, %rdx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB124_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB124_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end124:
	.size	moduleLoadString, .Lfunc_end124-moduleLoadString
                                        # -- End function
	.globl	RM_LoadString           # -- Begin function RM_LoadString
	.p2align	4, 0x90
	.type	RM_LoadString,@function
RM_LoadString:                          # @RM_LoadString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB125_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	jne	.LBB125_4
.LBB125_2:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB125_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB125_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end125:
	.size	RM_LoadString, .Lfunc_end125-RM_LoadString
                                        # -- End function
	.globl	RM_LoadStringBuffer     # -- Begin function RM_LoadStringBuffer
	.p2align	4, 0x90
	.type	RM_LoadStringBuffer,@function
RM_LoadStringBuffer:                    # @RM_LoadStringBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB126_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %rax
	jne	.LBB126_4
.LBB126_2:
	movq	8(%rbx), %rdi
	movl	$2, %esi
	movq	%r14, %rdx
	callq	rdbGenericLoadStringObject
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB126_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB126_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end126:
	.size	RM_LoadStringBuffer, .Lfunc_end126-RM_LoadStringBuffer
                                        # -- End function
	.globl	RM_SaveDouble           # -- Begin function RM_SaveDouble
	.p2align	4, 0x90
	.type	RM_SaveDouble,@function
RM_SaveDouble:                          # @RM_SaveDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB127_6
# %bb.1:
	movq	%rdi, %rbx
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movq	8(%rdi), %rdi
	movl	$4, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB127_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	rdbSaveBinaryDoubleValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB127_4
# %bb.3:
	cltq
	addq	%rax, (%rbx)
	jmp	.LBB127_5
.LBB127_4:
	movl	$1, 24(%rbx)
.LBB127_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB127_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end127:
	.size	RM_SaveDouble, .Lfunc_end127-RM_SaveDouble
                                        # -- End function
	.globl	RM_LoadDouble           # -- Begin function RM_LoadDouble
	.p2align	4, 0x90
	.type	RM_LoadDouble,@function
RM_LoadDouble:                          # @RM_LoadDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB128_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$4, %rax
	jne	.LBB128_4
.LBB128_2:
	movq	8(%rbx), %rdi
	leaq	-16(%rbp), %rsi
	callq	rdbLoadBinaryDoubleValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB128_4
# %bb.3:
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB128_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end128:
	.size	RM_LoadDouble, .Lfunc_end128-RM_LoadDouble
                                        # -- End function
	.globl	RM_SaveFloat            # -- Begin function RM_SaveFloat
	.p2align	4, 0x90
	.type	RM_SaveFloat,@function
RM_SaveFloat:                           # @RM_SaveFloat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$0, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB129_6
# %bb.1:
	movq	%rdi, %rbx
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	movq	8(%rdi), %rdi
	movl	$3, %esi
	callq	rdbSaveLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB129_4
# %bb.2:
	cltq
	addq	%rax, (%rbx)
	movq	8(%rbx), %rdi
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	rdbSaveBinaryFloatValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB129_4
# %bb.3:
	cltq
	addq	%rax, (%rbx)
	jmp	.LBB129_5
.LBB129_4:
	movl	$1, 24(%rbx)
.LBB129_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB129_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end129:
	.size	RM_SaveFloat, .Lfunc_end129-RM_SaveFloat
                                        # -- End function
	.globl	RM_LoadFloat            # -- Begin function RM_LoadFloat
	.p2align	4, 0x90
	.type	RM_LoadFloat,@function
RM_LoadFloat:                           # @RM_LoadFloat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpl	$2, 28(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB130_2
# %bb.1:
	movq	8(%rbx), %rdi
	xorl	%esi, %esi
	callq	rdbLoadLen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	jne	.LBB130_4
.LBB130_2:
	movq	8(%rbx), %rdi
	leaq	-12(%rbp), %rsi
	callq	rdbLoadBinaryFloatValue
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB130_4
# %bb.3:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB130_4:
	movq	%rbx, %rdi
	callq	moduleRDBLoadError
.Lfunc_end130:
	.size	RM_LoadFloat, .Lfunc_end130-RM_LoadFloat
                                        # -- End function
	.globl	rdbSaveModulesAux       # -- Begin function rdbSaveModulesAux
	.p2align	4, 0x90
	.type	rdbSaveModulesAux,@function
rdbSaveModulesAux:                      # @rdbSaveModulesAux
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%esi, %ebx
	movq	%rdi, %r15
	movq	modules(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB131_10
# %bb.1:                                # %.preheader1
	leaq	-56(%rbp), %r13
	jmp	.LBB131_2
	.p2align	4, 0x90
.LBB131_9:                              #   in Loop: Header=BB131_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB131_10
.LBB131_2:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB131_3 Depth 2
	movq	8(%rax), %rax
	movq	24(%rax), %rdi
	movq	%r13, %rsi
	callq	listRewind
	jmp	.LBB131_3
	.p2align	4, 0x90
.LBB131_8:                              #   in Loop: Header=BB131_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB131_3:                              #   Parent Loop BB131_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB131_9
# %bb.4:                                #   in Loop: Header=BB131_3 Depth=2
	movq	16(%rax), %rdx
	cmpq	$0, 72(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB131_8
# %bb.5:                                #   in Loop: Header=BB131_3 Depth=2
	movl	80(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	%ebx, %eax
	je	.LBB131_8
# %bb.6:                                #   in Loop: Header=BB131_3 Depth=2
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	rdbSaveSingleModuleAux
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB131_11
# %bb.7:                                #   in Loop: Header=BB131_3 Depth=2
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB131_8
.LBB131_11:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	jmp	.LBB131_12
.LBB131_10:
	movq	%r14, %rdi
	callq	dictReleaseIterator
.LBB131_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end131:
	.size	rdbSaveModulesAux, .Lfunc_end131-rdbSaveModulesAux
                                        # -- End function
	.globl	RM_DigestAddStringBuffer # -- Begin function RM_DigestAddStringBuffer
	.p2align	4, 0x90
	.type	RM_DigestAddStringBuffer,@function
RM_DigestAddStringBuffer:               # @RM_DigestAddStringBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	mixDigest
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end132:
	.size	RM_DigestAddStringBuffer, .Lfunc_end132-RM_DigestAddStringBuffer
                                        # -- End function
	.globl	RM_DigestAddLongLong    # -- Begin function RM_DigestAddLongLong
	.p2align	4, 0x90
	.type	RM_DigestAddLongLong,@function
RM_DigestAddLongLong:                   # @RM_DigestAddLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	leaq	-48(%rbp), %r14
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	mixDigest
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end133:
	.size	RM_DigestAddLongLong, .Lfunc_end133-RM_DigestAddLongLong
                                        # -- End function
	.globl	RM_DigestEndSequence    # -- Begin function RM_DigestEndSequence
	.p2align	4, 0x90
	.type	RM_DigestEndSequence,@function
RM_DigestEndSequence:                   # @RM_DigestEndSequence
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	addq	$20, %rdi
	movl	$20, %edx
	movq	%rbx, %rsi
	callq	xorDigest
	movl	$20, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end134:
	.size	RM_DigestEndSequence, .Lfunc_end134-RM_DigestEndSequence
                                        # -- End function
	.globl	RM_EmitAOF              # -- Begin function RM_EmitAOF
	.p2align	4, 0x90
	.type	RM_EmitAOF,@function
RM_EmitAOF:                             # @RM_EmitAOF
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %r12
	testb	%al, %al
	je	.LBB135_2
# %bb.1:
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm1, -192(%rbp)
	movaps	%xmm2, -176(%rbp)
	movaps	%xmm3, -160(%rbp)
	movaps	%xmm4, -144(%rbp)
	movaps	%xmm5, -128(%rbp)
	movaps	%xmm6, -112(%rbp)
	movaps	%xmm7, -96(%rbp)
.LBB135_2:
	movq	%rcx, -232(%rbp)
	movq	%r8, -224(%rbp)
	movq	%r9, -216(%rbp)
	cmpl	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB135_21
# %bb.3:
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movq	%r14, %rdi
	callq	lookupCommandByCString
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB135_4
# %bb.6:
	leaq	-256(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -72(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -80(%rbp)
	leaq	-44(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	leaq	-80(%rbp), %r8
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	moduleCreateArgvFromUserFormat
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB135_7
# %bb.8:
	movq	%rax, %r14
	cmpl	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB135_10
# %bb.9:
	movl	-44(%rbp), %ebx
	jmp	.LBB135_12
.LBB135_4:
	movq	16(%r12), %rdx
	addq	$84, %rdx
	movl	$.L.str.28, %esi
	movl	$3, %edi
	movq	%r14, %rcx
	jmp	.LBB135_5
.LBB135_7:
	movq	16(%r12), %rdx
	addq	$84, %rdx
	movl	$.L.str.29, %esi
	movl	$3, %edi
	movq	%r15, %rcx
.LBB135_5:
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, 24(%r12)
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB135_20
.LBB135_10:
	movq	8(%r12), %rdi
	movl	-44(%rbp), %ebx
	movslq	%ebx, %rdx
	movl	$42, %esi
	callq	rioWriteBulkCount
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB135_12
# %bb.11:
	movl	$1, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB135_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB135_19
# %bb.13:
	movslq	%ebx, %r15
	xorl	%ebx, %ebx
	movq	%r14, %r13
	jmp	.LBB135_14
	.p2align	4, 0x90
.LBB135_15:                             #   in Loop: Header=BB135_14 Depth=1
	leaq	(%r14,%rbx,8), %rcx
.LBB135_18:                             #   in Loop: Header=BB135_14 Depth=1
	movq	(%rcx), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r13
	cmpq	%r15, %rbx
	jge	.LBB135_19
.LBB135_14:                             # =>This Inner Loop Header: Depth=1
	cmpl	$0, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB135_15
# %bb.16:                               #   in Loop: Header=BB135_14 Depth=1
	movq	8(%r12), %rdi
	movq	(%r13), %rsi
	callq	rioWriteBulkObject
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	testl	%eax, %eax
	jne	.LBB135_18
# %bb.17:                               #   in Loop: Header=BB135_14 Depth=1
	movl	$1, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rcx
	jmp	.LBB135_18
.LBB135_19:
	movq	%r14, %rdi
	callq	zfree
.LBB135_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB135_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end135:
	.size	RM_EmitAOF, .Lfunc_end135-RM_EmitAOF
                                        # -- End function
	.globl	RM_GetContextFromIO     # -- Begin function RM_GetContextFromIO
	.p2align	4, 0x90
	.type	RM_GetContextFromIO,@function
RM_GetContextFromIO:                    # @RM_GetContextFromIO
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$104, %rsp
	movq	32(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB136_2
# %bb.1:
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -32(%rbp)
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movl	$104, %edi
	callq	zmalloc
	movq	%rax, 32(%rbx)
	movq	$RM_GetApi, (%rax)
	movaps	-32(%rbp), %xmm0
	movups	%xmm0, 88(%rax)
	movaps	-48(%rbp), %xmm0
	movups	%xmm0, 72(%rax)
	movaps	-112(%rbp), %xmm0
	movaps	-96(%rbp), %xmm1
	movaps	-80(%rbp), %xmm2
	movaps	-64(%rbp), %xmm3
	movups	%xmm3, 56(%rax)
	movups	%xmm2, 40(%rax)
	movups	%xmm1, 24(%rax)
	movups	%xmm0, 8(%rax)
	movq	16(%rbx), %rcx
	movq	32(%rbx), %rax
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	$0, 16(%rax)
.LBB136_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end136:
	.size	RM_GetContextFromIO, .Lfunc_end136-RM_GetContextFromIO
                                        # -- End function
	.globl	RM_GetKeyNameFromIO     # -- Begin function RM_GetKeyNameFromIO
	.p2align	4, 0x90
	.type	RM_GetKeyNameFromIO,@function
RM_GetKeyNameFromIO:                    # @RM_GetKeyNameFromIO
# %bb.0:
	movq	40(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end137:
	.size	RM_GetKeyNameFromIO, .Lfunc_end137-RM_GetKeyNameFromIO
                                        # -- End function
	.globl	RM_LogRaw               # -- Begin function RM_LogRaw
	.p2align	4, 0x90
	.type	RM_LogRaw,@function
RM_LogRaw:                              # @RM_LogRaw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$.L.str.30, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB138_1
# %bb.2:
	movl	$.L.str.31, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB138_3
# %bb.4:
	movl	$.L.str.32, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB138_5
# %bb.6:
	movl	$.L.str.33, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %r13d
	addl	$1, %r13d
	jmp	.LBB138_7
.LBB138_1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB138_7
.LBB138_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB138_7
.LBB138_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r13d
.LBB138_7:
	cmpl	server+1728(%rip), %r13d
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB138_12
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB138_9
# %bb.10:
	movq	8(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB138_11
.LBB138_9:
	movl	$.L.str.35, %ecx
.LBB138_11:
	leaq	-1072(%rbp), %r12
	movl	$1024, %ebx             # imm = 0x400
	movl	$1024, %esi             # imm = 0x400
	movl	$.L.str.34, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %rdi
	addq	$-1072, %rdi            # imm = 0xFBD0
	subq	%rax, %rbx
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	vsnprintf
	movl	%r13d, %edi
	movq	%r12, %rsi
	callq	serverLogRaw
.LBB138_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end138:
	.size	RM_LogRaw, .Lfunc_end138-RM_LogRaw
                                        # -- End function
	.globl	RM_Log                  # -- Begin function RM_Log
	.p2align	4, 0x90
	.type	RM_Log,@function
RM_Log:                                 # @RM_Log
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB139_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB139_2:
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB139_3
# %bb.4:
	movq	8(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB139_5
.LBB139_3:
	xorl	%edi, %edi
.LBB139_5:
	leaq	-32(%rbp), %rcx
	callq	RM_LogRaw
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end139:
	.size	RM_Log, .Lfunc_end139-RM_Log
                                        # -- End function
	.globl	RM_LogIOError           # -- Begin function RM_LogIOError
	.p2align	4, 0x90
	.type	RM_LogIOError,@function
RM_LogIOError:                          # @RM_LogIOError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB140_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB140_2:
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430232, %rax     # imm = 0x3000000018
	movq	%rax, -32(%rbp)
	movq	16(%rdi), %rax
	movq	8(%rax), %rdi
	leaq	-32(%rbp), %rcx
	callq	RM_LogRaw
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end140:
	.size	RM_LogIOError, .Lfunc_end140-RM_LogIOError
                                        # -- End function
	.globl	moduleBlockedClientPipeReadable # -- Begin function moduleBlockedClientPipeReadable
	.p2align	4, 0x90
	.type	moduleBlockedClientPipeReadable,@function
moduleBlockedClientPipeReadable:        # @moduleBlockedClientPipeReadable
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end141:
	.size	moduleBlockedClientPipeReadable, .Lfunc_end141-moduleBlockedClientPipeReadable
                                        # -- End function
	.globl	unblockClientFromModule # -- Begin function unblockClientFromModule
	.p2align	4, 0x90
	.type	unblockClientFromModule,@function
unblockClientFromModule:                # @unblockClientFromModule
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, %r14
	movq	472(%rdi), %rbx
	cmpq	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB142_2
# %bb.1:
	xorps	%xmm0, %xmm0
	movups	%xmm0, -40(%rbp)
	movups	%xmm0, -56(%rbp)
	movups	%xmm0, -72(%rbp)
	movups	%xmm0, -88(%rbp)
	movups	%xmm0, -104(%rbp)
	movq	$RM_GetApi, -128(%rbp)
	movq	48(%rbx), %rax
	movq	%rax, -56(%rbp)
	movdqu	(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movdqu	%xmm0, -120(%rbp)
	leaq	-128(%rbp), %r15
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*32(%rbx)
	movq	%r15, %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
.LBB142_2:
	movq	$0, (%rbx)
	movq	%r14, %rdi
	callq	resetClient
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end142:
	.size	unblockClientFromModule, .Lfunc_end142-unblockClientFromModule
                                        # -- End function
	.globl	RM_BlockClient          # -- Begin function RM_BlockClient
	.p2align	4, 0x90
	.type	RM_BlockClient,@function
RM_BlockClient:                         # @RM_BlockClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	16(%rdi), %r14
	movl	160(%r14), %r13d
	movl	$72, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, 472(%r14)
	xorl	%r12d, %r12d
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	testl	$264, %r13d             # imm = 0x108
	movq	%r14, %rax
	cmovneq	%r12, %rax
	movq	%rax, (%rbx)
	movq	8(%r15), %rax
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rbx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%rbx)
	movq	$0, 32(%rbx)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 40(%rbx)
	movq	$0, 48(%rbx)
	movl	$-1, %edi
	callq	createClient
	movq	%rax, 56(%rbx)
	orb	$8, 163(%rax)
	movq	16(%r14), %rax
	movl	40(%rax), %eax
	movl	%eax, 64(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB143_2
# %bb.1:
	callq	mstime
	movq	%rax, %r12
	addq	%r15, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB143_2:
	movq	%r12, 392(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	$264, %eax              # imm = 0x108
	je	.LBB143_4
# %bb.3:
	testl	$256, %eax              # imm = 0x100
	movq	$0, 472(%r14)
	movl	$.L.str.37, %eax
	movl	$.L.str.36, %esi
	cmoveq	%rax, %rsi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB143_5
.LBB143_4:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	blockClient
.LBB143_5:
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
.Lfunc_end143:
	.size	RM_BlockClient, .Lfunc_end143-RM_BlockClient
                                        # -- End function
	.globl	RM_UnblockClient        # -- Begin function RM_UnblockClient
	.p2align	4, 0x90
	.type	RM_UnblockClient,@function
RM_UnblockClient:                       # @RM_UnblockClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_lock
	movq	%r14, 48(%rbx)
	movq	moduleUnblockedClients(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movl	server+212(%rip), %edi
	movl	$.L.str.38, %esi
	movl	$1, %edx
	callq	write
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end144:
	.size	RM_UnblockClient, .Lfunc_end144-RM_UnblockClient
                                        # -- End function
	.globl	RM_AbortBlock           # -- Begin function RM_AbortBlock
	.p2align	4, 0x90
	.type	RM_AbortBlock,@function
RM_AbortBlock:                          # @RM_AbortBlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	$0, 16(%rdi)
	movq	$0, 32(%rdi)
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_lock
	movq	$0, 48(%rbx)
	movq	moduleUnblockedClients(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movl	server+212(%rip), %edi
	movl	$.L.str.38, %esi
	movl	$1, %edx
	callq	write
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end145:
	.size	RM_AbortBlock, .Lfunc_end145-RM_AbortBlock
                                        # -- End function
	.globl	RM_SetDisconnectCallback # -- Begin function RM_SetDisconnectCallback
	.p2align	4, 0x90
	.type	RM_SetDisconnectCallback,@function
RM_SetDisconnectCallback:               # @RM_SetDisconnectCallback
# %bb.0:
	movq	%rsi, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end146:
	.size	RM_SetDisconnectCallback, .Lfunc_end146-RM_SetDisconnectCallback
                                        # -- End function
	.globl	moduleHandleBlockedClients # -- Begin function moduleHandleBlockedClients
	.p2align	4, 0x90
	.type	moduleHandleBlockedClients,@function
moduleHandleBlockedClients:             # @moduleHandleBlockedClients
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	leaq	-41(%rbp), %rbx
	.p2align	4, 0x90
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	movl	server+208(%rip), %edi
	movl	$1, %edx
	movq	%rbx, %rsi
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	je	.LBB147_1
# %bb.2:
	movq	moduleUnblockedClients(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_22
# %bb.3:
	leaq	-128(%rbp), %r13
	leaq	-160(%rbp), %r15
	jmp	.LBB147_4
	.p2align	4, 0x90
.LBB147_19:                             #   in Loop: Header=BB147_4 Depth=1
	movq	%rsi, %rdi
	callq	freeClient
.LBB147_20:                             #   in Loop: Header=BB147_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB147_21:                             #   in Loop: Header=BB147_4 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	movq	moduleUnblockedClients(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_22
.LBB147_4:                              # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %rsi
	movq	16(%rsi), %rbx
	movq	(%rbx), %r12
	callq	listDelNode
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB147_10
# %bb.5:                                #   in Loop: Header=BB147_4 Depth=1
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_10
# %bb.6:                                #   in Loop: Header=BB147_4 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r13)
	movups	%xmm0, 32(%r13)
	movups	%xmm0, 16(%r13)
	movups	%xmm0, (%r13)
	movq	$0, 64(%r13)
	movq	$RM_GetApi, -160(%rbp)
	movl	$8, -112(%rbp)
	movq	48(%rbx), %rax
	movq	%rax, -88(%rbp)
	movdqu	(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movdqu	%xmm0, -152(%rbp)
	movq	%rbx, -136(%rbp)
	movq	72(%r12), %rsi
	movl	64(%r12), %edx
	movq	%r15, %rdi
	callq	*16(%rbx)
	movq	-144(%rbp), %r14
	testl	$256, 160(%r14)         # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB147_9
# %bb.7:                                #   in Loop: Header=BB147_4 Depth=1
	testb	$1, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_9
# %bb.8:                                #   in Loop: Header=BB147_4 Depth=1
	movl	$.L.str.1, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, -56(%rbp)
	movq	server+960(%rip), %rdi
	movq	16(%r14), %rax
	movl	40(%rax), %esi
	leaq	-56(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	alsoPropagate
	movq	-56(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB147_9:                              #   in Loop: Header=BB147_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
.LBB147_10:                             #   in Loop: Header=BB147_4 Depth=1
	cmpq	$0, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_15
# %bb.11:                               #   in Loop: Header=BB147_4 Depth=1
	cmpq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB147_15
# %bb.12:                               #   in Loop: Header=BB147_4 Depth=1
	pxor	%xmm0, %xmm0
	movdqu	%xmm0, 56(%r13)
	movdqu	%xmm0, 40(%r13)
	movdqu	%xmm0, 24(%r13)
	movdqu	%xmm0, 8(%r13)
	movdqu	%xmm0, -8(%r13)
	movdqu	%xmm0, -24(%r13)
	movq	$RM_GetApi, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB147_14
# %bb.13:                               #   in Loop: Header=BB147_4 Depth=1
	movl	$64, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB147_14:                             #   in Loop: Header=BB147_4 Depth=1
	movq	48(%rbx), %rsi
	movq	%rsi, -88(%rbp)
	movdqu	(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movdqu	%xmm0, -152(%rbp)
	movq	%r15, %rdi
	callq	*40(%rbx)
	movq	%r15, %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
.LBB147_15:                             #   in Loop: Header=BB147_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rsi
	testq	%r12, %r12
	je	.LBB147_19
# %bb.16:                               #   in Loop: Header=BB147_4 Depth=1
	movq	%r12, %rdi
	callq	AddReplyFromClient
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rdi
	callq	freeClient
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 32(%rbx)
	movq	%r12, %rdi
	callq	unblockClient
	movq	%r12, %rdi
	callq	clientHasPendingReplies
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB147_21
# %bb.17:                               #   in Loop: Header=BB147_4 Depth=1
	movl	160(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB147_21
# %bb.18:                               #   in Loop: Header=BB147_4 Depth=1
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%r12)
	movq	server+528(%rip), %rdi
	movq	%r12, %rsi
	callq	listAddNodeHead
	jmp	.LBB147_20
.LBB147_22:
	movl	$moduleUnblockedClientsMutex, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end147:
	.size	moduleHandleBlockedClients, .Lfunc_end147-moduleHandleBlockedClients
                                        # -- End function
	.globl	moduleBlockedClientTimedOut # -- Begin function moduleBlockedClientTimedOut
	.p2align	4, 0x90
	.type	moduleBlockedClientTimedOut,@function
moduleBlockedClientTimedOut:            # @moduleBlockedClientTimedOut
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	movq	472(%rdi), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, -72(%rbp)
	movups	%xmm0, -40(%rbp)
	movups	%xmm0, -56(%rbp)
	movups	%xmm0, -88(%rbp)
	movq	$0, -24(%rbp)
	movq	$RM_GetApi, -120(%rbp)
	movl	$16, -72(%rbp)
	movdqu	(%rbx), %xmm0
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movdqu	%xmm0, -112(%rbp)
	movq	%rbx, -96(%rbp)
	movq	72(%rdi), %rsi
	movl	64(%rdi), %edx
	leaq	-120(%rbp), %r14
	movq	%r14, %rdi
	callq	*24(%rbx)
	movq	%r14, %rdi
	callq	moduleFreeContext
	movq	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end148:
	.size	moduleBlockedClientTimedOut, .Lfunc_end148-moduleBlockedClientTimedOut
                                        # -- End function
	.globl	RM_IsBlockedReplyRequest # -- Begin function RM_IsBlockedReplyRequest
	.p2align	4, 0x90
	.type	RM_IsBlockedReplyRequest,@function
RM_IsBlockedReplyRequest:               # @RM_IsBlockedReplyRequest
# %bb.0:
	movl	48(%rdi), %eax
	shrl	$3, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end149:
	.size	RM_IsBlockedReplyRequest, .Lfunc_end149-RM_IsBlockedReplyRequest
                                        # -- End function
	.globl	RM_IsBlockedTimeoutRequest # -- Begin function RM_IsBlockedTimeoutRequest
	.p2align	4, 0x90
	.type	RM_IsBlockedTimeoutRequest,@function
RM_IsBlockedTimeoutRequest:             # @RM_IsBlockedTimeoutRequest
# %bb.0:
	movl	48(%rdi), %eax
	shrl	$4, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end150:
	.size	RM_IsBlockedTimeoutRequest, .Lfunc_end150-RM_IsBlockedTimeoutRequest
                                        # -- End function
	.globl	RM_GetBlockedClientPrivateData # -- Begin function RM_GetBlockedClientPrivateData
	.p2align	4, 0x90
	.type	RM_GetBlockedClientPrivateData,@function
RM_GetBlockedClientPrivateData:         # @RM_GetBlockedClientPrivateData
# %bb.0:
	movq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end151:
	.size	RM_GetBlockedClientPrivateData, .Lfunc_end151-RM_GetBlockedClientPrivateData
                                        # -- End function
	.globl	RM_GetBlockedClientHandle # -- Begin function RM_GetBlockedClientHandle
	.p2align	4, 0x90
	.type	RM_GetBlockedClientHandle,@function
RM_GetBlockedClientHandle:              # @RM_GetBlockedClientHandle
# %bb.0:
	movq	24(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end152:
	.size	RM_GetBlockedClientHandle, .Lfunc_end152-RM_GetBlockedClientHandle
                                        # -- End function
	.globl	RM_BlockedClientDisconnected # -- Begin function RM_BlockedClientDisconnected
	.p2align	4, 0x90
	.type	RM_BlockedClientDisconnected,@function
RM_BlockedClientDisconnected:           # @RM_BlockedClientDisconnected
# %bb.0:
	movl	48(%rdi), %eax
	shrl	$6, %eax
	andl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end153:
	.size	RM_BlockedClientDisconnected, .Lfunc_end153-RM_BlockedClientDisconnected
                                        # -- End function
	.globl	RM_GetThreadSafeContext # -- Begin function RM_GetThreadSafeContext
	.p2align	4, 0x90
	.type	RM_GetThreadSafeContext,@function
RM_GetThreadSafeContext:                # @RM_GetThreadSafeContext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$112, %rsp
	movq	%rdi, %r14
	movl	$104, %edi
	callq	zmalloc
	movq	%rax, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, -32(%rbp)
	movups	%xmm0, -48(%rbp)
	movups	%xmm0, -64(%rbp)
	movups	%xmm0, -80(%rbp)
	movups	%xmm0, -96(%rbp)
	movups	%xmm0, -112(%rbp)
	movq	$RM_GetApi, -120(%rbp)
	leaq	-120(%rbp), %rsi
	movl	$104, %edx
	movq	%rax, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB154_2
# %bb.1:
	movq	%r14, 24(%rbx)
	movq	8(%r14), %rax
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB154_2:
	orb	$32, 48(%rbx)
	movl	$-1, %edi
	callq	createClient
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB154_4
# %bb.3:
	movl	64(%r14), %esi
	movq	%rax, %rdi
	callq	selectDb
	movq	(%r14), %rax
	movq	(%rax), %rax
	movq	16(%rbx), %rcx
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB154_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end154:
	.size	RM_GetThreadSafeContext, .Lfunc_end154-RM_GetThreadSafeContext
                                        # -- End function
	.globl	RM_FreeThreadSafeContext # -- Begin function RM_FreeThreadSafeContext
	.p2align	4, 0x90
	.type	RM_FreeThreadSafeContext,@function
RM_FreeThreadSafeContext:               # @RM_FreeThreadSafeContext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	moduleFreeContext
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end155:
	.size	RM_FreeThreadSafeContext, .Lfunc_end155-RM_FreeThreadSafeContext
                                        # -- End function
	.globl	RM_ThreadSafeContextLock # -- Begin function RM_ThreadSafeContextLock
	.p2align	4, 0x90
	.type	RM_ThreadSafeContextLock,@function
RM_ThreadSafeContextLock:               # @RM_ThreadSafeContextLock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$moduleGIL, %edi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end156:
	.size	RM_ThreadSafeContextLock, .Lfunc_end156-RM_ThreadSafeContextLock
                                        # -- End function
	.globl	moduleAcquireGIL        # -- Begin function moduleAcquireGIL
	.p2align	4, 0x90
	.type	moduleAcquireGIL,@function
moduleAcquireGIL:                       # @moduleAcquireGIL
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$moduleGIL, %edi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end157:
	.size	moduleAcquireGIL, .Lfunc_end157-moduleAcquireGIL
                                        # -- End function
	.globl	RM_ThreadSafeContextUnlock # -- Begin function RM_ThreadSafeContextUnlock
	.p2align	4, 0x90
	.type	RM_ThreadSafeContextUnlock,@function
RM_ThreadSafeContextUnlock:             # @RM_ThreadSafeContextUnlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$moduleGIL, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end158:
	.size	RM_ThreadSafeContextUnlock, .Lfunc_end158-RM_ThreadSafeContextUnlock
                                        # -- End function
	.globl	moduleReleaseGIL        # -- Begin function moduleReleaseGIL
	.p2align	4, 0x90
	.type	moduleReleaseGIL,@function
moduleReleaseGIL:                       # @moduleReleaseGIL
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$moduleGIL, %edi
	callq	pthread_mutex_unlock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end159:
	.size	moduleReleaseGIL, .Lfunc_end159-moduleReleaseGIL
                                        # -- End function
	.globl	RM_SubscribeToKeyspaceEvents # -- Begin function RM_SubscribeToKeyspaceEvents
	.p2align	4, 0x90
	.type	RM_SubscribeToKeyspaceEvents,@function
RM_SubscribeToKeyspaceEvents:           # @RM_SubscribeToKeyspaceEvents
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	zmalloc
	movq	8(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	%r15d, 16(%rax)
	movq	%r14, 8(%rax)
	movl	$0, 20(%rax)
	movq	moduleKeyspaceSubscribers(%rip), %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end160:
	.size	RM_SubscribeToKeyspaceEvents, .Lfunc_end160-RM_SubscribeToKeyspaceEvents
                                        # -- End function
	.globl	moduleNotifyKeyspaceEvent # -- Begin function moduleNotifyKeyspaceEvent
	.p2align	4, 0x90
	.type	moduleNotifyKeyspaceEvent,@function
moduleNotifyKeyspaceEvent:              # @moduleNotifyKeyspaceEvent
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edi, %ebx
	movq	moduleKeyspaceSubscribers(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB161_8
# %bb.1:
	leaq	-80(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB161_7
# %bb.2:
	andl	$-4, %ebx
	leaq	-160(%rbp), %r15
	leaq	-80(%rbp), %r13
	leaq	-184(%rbp), %r14
	jmp	.LBB161_3
	.p2align	4, 0x90
.LBB161_6:                              #   in Loop: Header=BB161_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB161_7
.LBB161_3:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %r12
	movl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	%ebx, %eax
	je	.LBB161_6
# %bb.4:                                #   in Loop: Header=BB161_3 Depth=1
	cmpl	$0, 20(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB161_6
# %bb.5:                                #   in Loop: Header=BB161_3 Depth=1
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%r15)
	movups	%xmm0, 48(%r15)
	movups	%xmm0, 32(%r15)
	movups	%xmm0, 16(%r15)
	movups	%xmm0, (%r15)
	movq	$RM_GetApi, -184(%rbp)
	movq	(%r12), %rax
	movq	%rax, -176(%rbp)
	movq	moduleFreeContextReusedClient(%rip), %rdi
	movq	%rdi, -168(%rbp)
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	selectDb
	movl	$1, 20(%r12)
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	*8(%r12)
	movl	$0, 20(%r12)
	movq	%r14, %rdi
	callq	moduleFreeContext
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB161_6
.LBB161_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB161_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end161:
	.size	moduleNotifyKeyspaceEvent, .Lfunc_end161-moduleNotifyKeyspaceEvent
                                        # -- End function
	.globl	moduleUnsubscribeNotifications # -- Begin function moduleUnsubscribeNotifications
	.p2align	4, 0x90
	.type	moduleUnsubscribeNotifications,@function
moduleUnsubscribeNotifications:         # @moduleUnsubscribeNotifications
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	movq	moduleKeyspaceSubscribers(%rip), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB162_5
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r14
	jmp	.LBB162_2
	.p2align	4, 0x90
.LBB162_4:                              #   in Loop: Header=BB162_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB162_5
.LBB162_2:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpq	%r15, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB162_4
# %bb.3:                                #   in Loop: Header=BB162_2 Depth=1
	movq	moduleKeyspaceSubscribers(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB162_4
.LBB162_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end162:
	.size	moduleUnsubscribeNotifications, .Lfunc_end162-moduleUnsubscribeNotifications
                                        # -- End function
	.globl	moduleCallClusterReceivers # -- Begin function moduleCallClusterReceivers
	.p2align	4, 0x90
	.type	moduleCallClusterReceivers,@function
moduleCallClusterReceivers:             # @moduleCallClusterReceivers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%edx, %eax
	movq	clusterReceivers(,%rax,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB163_5
# %bb.1:                                # %.preheader
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movl	%edx, %r13d
	movq	%rdi, %r12
	.p2align	4, 0x90
.LBB163_2:                              # =>This Inner Loop Header: Depth=1
	cmpq	%rsi, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB163_3
# %bb.4:                                #   in Loop: Header=BB163_2 Depth=1
	movq	24(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB163_2
	jmp	.LBB163_5
.LBB163_3:
	xorps	%xmm0, %xmm0
	movups	%xmm0, -56(%rbp)
	movups	%xmm0, -72(%rbp)
	movups	%xmm0, -88(%rbp)
	movups	%xmm0, -104(%rbp)
	movups	%xmm0, -120(%rbp)
	movq	$RM_GetApi, -144(%rbp)
	movq	16(%rbx), %rax
	movq	%rax, -136(%rbp)
	movq	moduleFreeContextReusedClient(%rip), %rdi
	movq	%rdi, -128(%rbp)
	xorl	%esi, %esi
	callq	selectDb
	movzbl	%r13b, %edx
	leaq	-144(%rbp), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	movl	%r14d, %r8d
	callq	*8(%rbx)
	movq	%r13, %rdi
	callq	moduleFreeContext
.LBB163_5:
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
.Lfunc_end163:
	.size	moduleCallClusterReceivers, .Lfunc_end163-moduleCallClusterReceivers
                                        # -- End function
	.globl	RM_RegisterClusterMessageReceiver # -- Begin function RM_RegisterClusterMessageReceiver
	.p2align	4, 0x90
	.type	RM_RegisterClusterMessageReceiver,@function
RM_RegisterClusterMessageReceiver:      # @RM_RegisterClusterMessageReceiver
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB164_14
# %bb.1:
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	8(%rdi), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	moduleTypeEncodeId
	movq	%rax, %rbx
	movzbl	%r12b, %r12d
	movq	clusterReceivers(,%r12,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB164_10
# %bb.2:
	cmpq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB164_8
# %bb.3:
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	jmp	.LBB164_5
.LBB164_8:
	movq	%rax, %rdx
	.p2align	4, 0x90
.LBB164_9:                              # =>This Inner Loop Header: Depth=1
	movq	24(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB164_10
# %bb.4:                                #   in Loop: Header=BB164_9 Depth=1
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	cmpq	%rbx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB164_9
.LBB164_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB164_7
# %bb.6:
	movq	%r14, 8(%rdi)
	jmp	.LBB164_12
.LBB164_10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB164_13
# %bb.11:
	movl	$32, %edi
	callq	zmalloc
	movq	%rbx, (%rax)
	movq	8(%r15), %rcx
	movq	%rcx, 16(%rax)
	movq	%r14, 8(%rax)
	movq	clusterReceivers(,%r12,8), %rcx
	movq	%rcx, 24(%rax)
	movq	%rax, clusterReceivers(,%r12,8)
	jmp	.LBB164_12
.LBB164_7:
	testq	%rcx, %rcx
	movq	24(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rcx, %rax
	movq	%rdx, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	callq	zfree
.LBB164_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB164_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB164_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end164:
	.size	RM_RegisterClusterMessageReceiver, .Lfunc_end164-RM_RegisterClusterMessageReceiver
                                        # -- End function
	.globl	RM_SendClusterMessage   # -- Begin function RM_SendClusterMessage
	.p2align	4, 0x90
	.type	RM_SendClusterMessage,@function
RM_SendClusterMessage:                  # @RM_SendClusterMessage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB165_1
# %bb.2:
	movl	%r8d, %r14d
	movq	%rcx, %r15
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	8(%rdi), %rax
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	moduleTypeEncodeId
	movzbl	%r12b, %edx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r15, %rcx
	movl	%r14d, %r8d
	callq	clusterSendModuleMessageToTarget
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB165_3
.LBB165_1:
	movl	$1, %eax
.LBB165_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end165:
	.size	RM_SendClusterMessage, .Lfunc_end165-RM_SendClusterMessage
                                        # -- End function
	.globl	RM_GetClusterNodesList  # -- Begin function RM_GetClusterNodesList
	.p2align	4, 0x90
	.type	RM_GetClusterNodesList,@function
RM_GetClusterNodesList:                 # @RM_GetClusterNodesList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	xorl	%r13d, %r13d
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB166_1
# %bb.2:
	movq	%rsi, %r14
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rax
	movq	72(%rax), %rcx
	addq	40(%rax), %rcx
	leaq	(%rcx,%rcx,4), %rax
	leaq	40(,%rax,8), %rdi
	callq	zmalloc
	movq	%rax, %r15
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rdi
	callq	dictGetIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB166_7
# %bb.3:                                # %.preheader
	xorl	%r13d, %r13d
	jmp	.LBB166_4
	.p2align	4, 0x90
.LBB166_6:                              #   in Loop: Header=BB166_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB166_7
.LBB166_4:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rbx
	testb	$96, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB166_6
# %bb.5:                                #   in Loop: Header=BB166_4 Depth=1
	movl	$40, %edi
	callq	zmalloc
	movslq	%r13d, %r13
	movq	%rax, (%r15,%r13,8)
	addq	$8, %rbx
	movl	$40, %edx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addl	$1, %r13d
	jmp	.LBB166_6
.LBB166_7:
	movslq	%r13d, %rax
	movq	%rax, (%r14)
	movq	$0, (%r15,%rax,8)
	movq	%r12, %rdi
	callq	dictReleaseIterator
	jmp	.LBB166_8
.LBB166_1:
	xorl	%r15d, %r15d
.LBB166_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end166:
	.size	RM_GetClusterNodesList, .Lfunc_end166-RM_GetClusterNodesList
                                        # -- End function
	.globl	RM_FreeClusterNodesList # -- Begin function RM_FreeClusterNodesList
	.p2align	4, 0x90
	.type	RM_FreeClusterNodesList,@function
RM_FreeClusterNodesList:                # @RM_FreeClusterNodesList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB167_5
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB167_4
# %bb.2:                                # %.preheader
	leaq	8(%r14), %rbx
	.p2align	4, 0x90
.LBB167_3:                              # =>This Inner Loop Header: Depth=1
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB167_3
.LBB167_4:
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB167_5:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end167:
	.size	RM_FreeClusterNodesList, .Lfunc_end167-RM_FreeClusterNodesList
                                        # -- End function
	.globl	RM_GetMyClusterID       # -- Begin function RM_GetMyClusterID
	.p2align	4, 0x90
	.type	RM_GetMyClusterID,@function
RM_GetMyClusterID:                      # @RM_GetMyClusterID
# %bb.0:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB168_1
# %bb.2:
	movq	server+2944(%rip), %rax
	movq	(%rax), %rax
	addq	$8, %rax
	jmp	.LBB168_3
.LBB168_1:
	xorl	%eax, %eax
.LBB168_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end168:
	.size	RM_GetMyClusterID, .Lfunc_end168-RM_GetMyClusterID
                                        # -- End function
	.globl	RM_GetClusterSize       # -- Begin function RM_GetClusterSize
	.p2align	4, 0x90
	.type	RM_GetClusterSize,@function
RM_GetClusterSize:                      # @RM_GetClusterSize
# %bb.0:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB169_1
# %bb.2:
	movq	server+2944(%rip), %rax
	movq	24(%rax), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	jmp	.LBB169_3
.LBB169_1:
	xorl	%eax, %eax
.LBB169_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end169:
	.size	RM_GetClusterSize, .Lfunc_end169-RM_GetClusterSize
                                        # -- End function
	.globl	RM_GetClusterNodeInfo   # -- Begin function RM_GetClusterNodeInfo
	.p2align	4, 0x90
	.type	RM_GetClusterNodeInfo,@function
RM_GetClusterNodeInfo:                  # @RM_GetClusterNodeInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %rdi
	callq	clusterLookupNode
	movq	%rax, %r13
	testb	$96, 48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB170_1
.LBB170_25:
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
.LBB170_1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB170_3
# %bb.2:
	leaq	8(%r13), %rsi
	movl	$40, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB170_3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB170_9
# %bb.4:
	testb	$1, 48(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB170_7
# %bb.5:
	movq	2128(%r13), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB170_7
# %bb.6:
	addq	$8, %rsi
	movl	$40, %edx
	movq	%r12, %rdi
	callq	memcpy
	jmp	.LBB170_8
.LBB170_7:
	movl	$40, %edx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	memset
.LBB170_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB170_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB170_11
# %bb.10:
	movl	2240(%r13), %eax
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB170_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB170_12
# %bb.13:
	movl	$0, (%r14)
	movl	48(%r13), %edx
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %dl
	je	.LBB170_15
# %bb.14:
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %edx
	movl	$1, %ecx
.LBB170_15:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB170_17
# %bb.16:
	orl	$2, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %edx
.LBB170_17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %dl
	je	.LBB170_19
# %bb.18:
	orl	$4, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %edx
.LBB170_19:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	je	.LBB170_21
# %bb.20:
	orl	$8, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %edx
.LBB170_21:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %dl
	je	.LBB170_23
# %bb.22:
	orl	$16, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %edx
.LBB170_23:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %edx              # imm = 0x200
	je	.LBB170_25
# %bb.24:
	orl	$32, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB170_25
.LBB170_12:
	xorl	%eax, %eax
	jmp	.LBB170_25
.Lfunc_end170:
	.size	RM_GetClusterNodeInfo, .Lfunc_end170-RM_GetClusterNodeInfo
                                        # -- End function
	.globl	RM_SetClusterFlags      # -- Begin function RM_SetClusterFlags
	.p2align	4, 0x90
	.type	RM_SetClusterFlags,@function
RM_SetClusterFlags:                     # @RM_SetClusterFlags
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	je	.LBB171_2
# %bb.1:
	orb	$2, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB171_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %sil
	je	.LBB171_4
# %bb.3:
	orb	$4, server+2984(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB171_4:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end171:
	.size	RM_SetClusterFlags, .Lfunc_end171-RM_SetClusterFlags
                                        # -- End function
	.globl	moduleTimerHandler      # -- Begin function moduleTimerHandler
	.p2align	4, 0x90
	.type	moduleTimerHandler,@function
moduleTimerHandler:                     # @moduleTimerHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
	movq	Timers(%rip), %rsi
	leaq	-632(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	callq	ustime
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB172_4
# %bb.1:
	leaq	-128(%rbp), %r14
	leaq	-152(%rbp), %r12
	leaq	-632(%rbp), %r13
	.p2align	4, 0x90
.LBB172_2:                              # =>This Inner Loop Header: Depth=1
	movq	-616(%rbp), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r15, %rbx
	ja	.LBB172_6
# %bb.3:                                #   in Loop: Header=BB172_2 Depth=1
	movq	-608(%rbp), %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 64(%r14)
	movups	%xmm0, 48(%r14)
	movups	%xmm0, 32(%r14)
	movups	%xmm0, 16(%r14)
	movups	%xmm0, (%r14)
	movq	$RM_GetApi, -152(%rbp)
	movq	(%rbx), %rax
	movq	%rax, -144(%rbp)
	movq	moduleFreeContextReusedClient(%rip), %rdi
	movq	%rdi, -136(%rbp)
	movl	24(%rbx), %esi
	callq	selectDb
	movq	16(%rbx), %rsi
	movq	%r12, %rdi
	callq	*8(%rbx)
	movq	%r12, %rdi
	callq	moduleFreeContext
	movq	Timers(%rip), %rdi
	movq	-616(%rbp), %rsi
	movq	-600(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.39, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%r13, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB172_2
.LBB172_4:
	leaq	-632(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB172_5
.LBB172_6:
	movq	%rbx, %rax
	shrq	$3, %rax
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	mulq	%rcx
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-632(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$999, %rbx              # imm = 0x3E7
	ja	.LBB172_7
.LBB172_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB172_8:
	movq	Timers(%rip), %rdi
	callq	raxSize
	xorl	%ecx, %ecx
	cmpq	$1, %rax
	sbbl	%ecx, %ecx
	orl	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB172_7:
	shrq	$4, %r14
	jmp	.LBB172_8
.Lfunc_end172:
	.size	moduleTimerHandler, .Lfunc_end172-moduleTimerHandler
                                        # -- End function
	.globl	RM_CreateTimer          # -- Begin function RM_CreateTimer
	.p2align	4, 0x90
	.type	RM_CreateTimer,@function
RM_CreateTimer:                         # @RM_CreateTimer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$32, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
	movq	%r13, 8(%r15)
	movq	%r12, 16(%r15)
	movq	16(%rbx), %rax
	movq	16(%rax), %rax
	movl	40(%rax), %eax
	movl	%eax, 24(%r15)
	callq	ustime
	movq	%rax, %r12
	imulq	$1000, %r14, %rbx       # imm = 0x3E8
	leaq	(%rax,%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	callq	intrev64
	movq	%rax, -48(%rbp)
	movq	Timers(%rip), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	raxFind
	cmpq	raxNotFound(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB173_3
# %bb.1:                                # %.preheader
	addq	%r12, %rbx
	addq	$1, %rbx
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB173_2:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	intrev64
	movq	%rax, -48(%rbp)
	movq	Timers(%rip), %rdi
	movl	$8, %edx
	movq	%r12, %rsi
	callq	raxFind
	addq	$1, %rbx
	cmpq	raxNotFound(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB173_2
.LBB173_3:
	movq	Timers(%rip), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	movq	%r15, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	cmpq	$-1, aeTimer(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB173_4
# %bb.5:
	movq	Timers(%rip), %rsi
	leaq	-528(%rbp), %rbx
	movq	%rbx, %rdi
	callq	raxStart
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movq	%rbx, %rdi
	callq	raxNext
	movq	-512(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB173_7
# %bb.6:
	movq	server+72(%rip), %rdi
	movq	aeTimer(%rip), %rsi
	callq	aeDeleteTimeEvent
	movq	$-1, aeTimer(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB173_7:
	leaq	-528(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, aeTimer(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB173_9
	jmp	.LBB173_8
.LBB173_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB173_8:
	movq	server+72(%rip), %rdi
	movl	$moduleTimerHandler, %edx
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	aeCreateTimeEvent
	movq	%rax, aeTimer(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB173_9:
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end173:
	.size	RM_CreateTimer, .Lfunc_end173-RM_CreateTimer
                                        # -- End function
	.globl	RM_StopTimer            # -- Begin function RM_StopTimer
	.p2align	4, 0x90
	.type	RM_StopTimer,@function
RM_StopTimer:                           # @RM_StopTimer
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
	movq	%rsi, -40(%rbp)
	movq	Timers(%rip), %rdi
	leaq	-40(%rbp), %rsi
	movl	$8, %edx
	callq	raxFind
	movl	$1, %r15d
	cmpq	%rax, raxNotFound(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB174_5
# %bb.1:
	movq	%rax, %rbx
	movq	(%rax), %rax
	cmpq	8(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB174_5
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB174_4
# %bb.3:
	movq	16(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB174_4:
	movq	Timers(%rip), %rdi
	xorl	%r15d, %r15d
	leaq	-40(%rbp), %rsi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	%rbx, %rdi
	callq	zfree
.LBB174_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end174:
	.size	RM_StopTimer, .Lfunc_end174-RM_StopTimer
                                        # -- End function
	.globl	RM_GetTimerInfo         # -- Begin function RM_GetTimerInfo
	.p2align	4, 0x90
	.type	RM_GetTimerInfo,@function
RM_GetTimerInfo:                        # @RM_GetTimerInfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rdi, %rbx
	movq	%rsi, -40(%rbp)
	movq	Timers(%rip), %rdi
	leaq	-40(%rbp), %rsi
	movl	$8, %edx
	callq	raxFind
	movq	%rax, %r12
	movl	$1, %eax
	cmpq	%r12, raxNotFound(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB175_6
# %bb.1:
	movq	(%r12), %rcx
	cmpq	8(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB175_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB175_4
# %bb.3:
	movq	-40(%rbp), %rdi
	callq	intrev64
	movq	%rax, %rbx
	callq	ustime
	xorl	%ecx, %ecx
	subq	%rax, %rbx
	cmovsq	%rcx, %rbx
	shrq	$3, %rbx
	movabsq	$2361183241434822607, %rcx # imm = 0x20C49BA5E353F7CF
	movq	%rbx, %rax
	mulq	%rcx
	shrq	$4, %rdx
	movq	%rdx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB175_4:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB175_6
# %bb.5:
	movq	16(%r12), %rcx
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB175_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end175:
	.size	RM_GetTimerInfo, .Lfunc_end175-RM_GetTimerInfo
                                        # -- End function
	.globl	RM_CreateDict           # -- Begin function RM_CreateDict
	.p2align	4, 0x90
	.type	RM_CreateDict,@function
RM_CreateDict:                          # @RM_CreateDict
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$8, %edi
	callq	zmalloc
	movq	%rax, %r14
	callq	raxNew
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB176_9
# %bb.1:
	testb	$2, 48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB176_8
# %bb.2:
	movl	44(%rbx), %ecx
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB176_3
# %bb.4:
	leal	(%rcx,%rcx), %eax
	movl	%eax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	jg	.LBB176_6
# %bb.5:
	movl	$16, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
.LBB176_6:
	movq	32(%rbx), %rdi
	movslq	%eax, %rsi
	shlq	$4, %rsi
	callq	zrealloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	44(%rbx), %ecx
	jmp	.LBB176_7
.LBB176_3:
	movq	32(%rbx), %rax
.LBB176_7:
	movslq	%ecx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movl	$4, 8(%rax,%rdx)
	movq	%r14, (%rax,%rdx)
	addl	$1, %ecx
	movl	%ecx, 44(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB176_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB176_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end176:
	.size	RM_CreateDict, .Lfunc_end176-RM_CreateDict
                                        # -- End function
	.globl	RM_DictSize             # -- Begin function RM_DictSize
	.p2align	4, 0x90
	.type	RM_DictSize,@function
RM_DictSize:                            # @RM_DictSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	callq	raxSize
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end177:
	.size	RM_DictSize, .Lfunc_end177-RM_DictSize
                                        # -- End function
	.globl	RM_DictSetC             # -- Begin function RM_DictSetC
	.p2align	4, 0x90
	.type	RM_DictSetC,@function
RM_DictSetC:                            # @RM_DictSetC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	xorl	%r8d, %r8d
	callq	raxTryInsert
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end178:
	.size	RM_DictSetC, .Lfunc_end178-RM_DictSetC
                                        # -- End function
	.globl	RM_DictReplaceC         # -- Begin function RM_DictReplaceC
	.p2align	4, 0x90
	.type	RM_DictReplaceC,@function
RM_DictReplaceC:                        # @RM_DictReplaceC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	xorl	%r8d, %r8d
	callq	raxInsert
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end179:
	.size	RM_DictReplaceC, .Lfunc_end179-RM_DictReplaceC
                                        # -- End function
	.globl	RM_DictSet              # -- Begin function RM_DictSet
	.p2align	4, 0x90
	.type	RM_DictSet,@function
RM_DictSet:                             # @RM_DictSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB180_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI180_0(,%rax,8)
.LBB180_3:
	shrq	$3, %rdx
	jmp	.LBB180_8
.LBB180_1:
	xorl	%edx, %edx
	jmp	.LBB180_8
.LBB180_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB180_8
.LBB180_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB180_8
.LBB180_6:
	movl	-9(%rsi), %edx
	jmp	.LBB180_8
.LBB180_7:
	movq	-17(%rsi), %rdx
.LBB180_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	xorl	%r8d, %r8d
	callq	raxTryInsert
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end180:
	.size	RM_DictSet, .Lfunc_end180-RM_DictSet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI180_0:
	.quad	.LBB180_3
	.quad	.LBB180_4
	.quad	.LBB180_5
	.quad	.LBB180_6
	.quad	.LBB180_7
                                        # -- End function
	.text
	.globl	RM_DictReplace          # -- Begin function RM_DictReplace
	.p2align	4, 0x90
	.type	RM_DictReplace,@function
RM_DictReplace:                         # @RM_DictReplace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB181_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI181_0(,%rax,8)
.LBB181_3:
	shrq	$3, %rdx
	jmp	.LBB181_8
.LBB181_1:
	xorl	%edx, %edx
	jmp	.LBB181_8
.LBB181_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB181_8
.LBB181_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB181_8
.LBB181_6:
	movl	-9(%rsi), %edx
	jmp	.LBB181_8
.LBB181_7:
	movq	-17(%rsi), %rdx
.LBB181_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	xorl	%r8d, %r8d
	callq	raxInsert
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end181:
	.size	RM_DictReplace, .Lfunc_end181-RM_DictReplace
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI181_0:
	.quad	.LBB181_3
	.quad	.LBB181_4
	.quad	.LBB181_5
	.quad	.LBB181_6
	.quad	.LBB181_7
                                        # -- End function
	.text
	.globl	RM_DictGetC             # -- Begin function RM_DictGetC
	.p2align	4, 0x90
	.type	RM_DictGetC,@function
RM_DictGetC:                            # @RM_DictGetC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	(%rdi), %rdi
	callq	raxFind
	movl	$42, __A_VARIABLE(%rip)
	movq	raxNotFound(%rip), %rdx
	testq	%rbx, %rbx
	je	.LBB182_2
# %bb.1:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	sete	%cl
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB182_2:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	cmovneq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end182:
	.size	RM_DictGetC, .Lfunc_end182-RM_DictGetC
                                        # -- End function
	.globl	RM_DictGet              # -- Begin function RM_DictGet
	.p2align	4, 0x90
	.type	RM_DictGet,@function
RM_DictGet:                             # @RM_DictGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB183_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI183_0(,%rax,8)
.LBB183_3:
	shrq	$3, %rdx
	jmp	.LBB183_8
.LBB183_1:
	xorl	%edx, %edx
	jmp	.LBB183_8
.LBB183_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB183_8
.LBB183_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB183_8
.LBB183_6:
	movl	-9(%rsi), %edx
	jmp	.LBB183_8
.LBB183_7:
	movq	-17(%rsi), %rdx
.LBB183_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	callq	raxFind
	movl	$42, __A_VARIABLE(%rip)
	movq	raxNotFound(%rip), %rdx
	testq	%rbx, %rbx
	je	.LBB183_10
# %bb.9:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	sete	%cl
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB183_10:
	xorl	%ecx, %ecx
	cmpq	%rdx, %rax
	cmovneq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end183:
	.size	RM_DictGet, .Lfunc_end183-RM_DictGet
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI183_0:
	.quad	.LBB183_3
	.quad	.LBB183_4
	.quad	.LBB183_5
	.quad	.LBB183_6
	.quad	.LBB183_7
                                        # -- End function
	.text
	.globl	RM_DictDelC             # -- Begin function RM_DictDelC
	.p2align	4, 0x90
	.type	RM_DictDelC,@function
RM_DictDelC:                            # @RM_DictDelC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	callq	raxRemove
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end184:
	.size	RM_DictDelC, .Lfunc_end184-RM_DictDelC
                                        # -- End function
	.globl	RM_DictDel              # -- Begin function RM_DictDel
	.p2align	4, 0x90
	.type	RM_DictDel,@function
RM_DictDel:                             # @RM_DictDel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	movq	8(%rsi), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB185_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI185_0(,%rax,8)
.LBB185_3:
	shrq	$3, %rdx
	jmp	.LBB185_8
.LBB185_1:
	xorl	%edx, %edx
	jmp	.LBB185_8
.LBB185_4:
	movzbl	-3(%rsi), %edx
	jmp	.LBB185_8
.LBB185_5:
	movzwl	-5(%rsi), %edx
	jmp	.LBB185_8
.LBB185_6:
	movl	-9(%rsi), %edx
	jmp	.LBB185_8
.LBB185_7:
	movq	-17(%rsi), %rdx
.LBB185_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdi), %rdi
	callq	raxRemove
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end185:
	.size	RM_DictDel, .Lfunc_end185-RM_DictDel
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI185_0:
	.quad	.LBB185_3
	.quad	.LBB185_4
	.quad	.LBB185_5
	.quad	.LBB185_6
	.quad	.LBB185_7
                                        # -- End function
	.text
	.globl	RM_DictIteratorStartC   # -- Begin function RM_DictIteratorStartC
	.p2align	4, 0x90
	.type	RM_DictIteratorStartC,@function
RM_DictIteratorStartC:                  # @RM_DictIteratorStartC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movl	$488, %edi              # imm = 0x1E8
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r13, (%rax)
	leaq	8(%rax), %r14
	movq	(%r13), %rsi
	movq	%r14, %rdi
	callq	raxStart
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end186:
	.size	RM_DictIteratorStartC, .Lfunc_end186-RM_DictIteratorStartC
                                        # -- End function
	.globl	RM_DictIteratorStart    # -- Begin function RM_DictIteratorStart
	.p2align	4, 0x90
	.type	RM_DictIteratorStart,@function
RM_DictIteratorStart:                   # @RM_DictIteratorStart
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	8(%rdx), %r15
	movzbl	-1(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB187_1
# %bb.2:
	movl	%r13d, %eax
	andl	$7, %eax
	jmpq	*.LJTI187_0(,%rax,8)
.LBB187_3:
	shrq	$3, %r13
	jmp	.LBB187_8
.LBB187_1:
	xorl	%r13d, %r13d
	jmp	.LBB187_8
.LBB187_4:
	movzbl	-3(%r15), %r13d
	jmp	.LBB187_8
.LBB187_5:
	movzwl	-5(%r15), %r13d
	jmp	.LBB187_8
.LBB187_6:
	movl	-9(%r15), %r13d
	jmp	.LBB187_8
.LBB187_7:
	movq	-17(%r15), %r13
.LBB187_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$488, %edi              # imm = 0x1E8
	callq	zmalloc
	movq	%rax, %rbx
	movq	%r12, (%rax)
	leaq	8(%rax), %r14
	movq	(%r12), %rsi
	movq	%r14, %rdi
	callq	raxStart
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end187:
	.size	RM_DictIteratorStart, .Lfunc_end187-RM_DictIteratorStart
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI187_0:
	.quad	.LBB187_3
	.quad	.LBB187_4
	.quad	.LBB187_5
	.quad	.LBB187_6
	.quad	.LBB187_7
                                        # -- End function
	.text
	.globl	RM_DictIteratorStop     # -- Begin function RM_DictIteratorStop
	.p2align	4, 0x90
	.type	RM_DictIteratorStop,@function
RM_DictIteratorStop:                    # @RM_DictIteratorStop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	addq	$8, %rdi
	callq	raxStop
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end188:
	.size	RM_DictIteratorStop, .Lfunc_end188-RM_DictIteratorStop
                                        # -- End function
	.globl	RM_DictIteratorReseekC  # -- Begin function RM_DictIteratorReseekC
	.p2align	4, 0x90
	.type	RM_DictIteratorReseekC,@function
RM_DictIteratorReseekC:                 # @RM_DictIteratorReseekC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	addq	$8, %rdi
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end189:
	.size	RM_DictIteratorReseekC, .Lfunc_end189-RM_DictIteratorReseekC
                                        # -- End function
	.globl	RM_DictIteratorReseek   # -- Begin function RM_DictIteratorReseek
	.p2align	4, 0x90
	.type	RM_DictIteratorReseek,@function
RM_DictIteratorReseek:                  # @RM_DictIteratorReseek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	8(%rdx), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB190_1
# %bb.2:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI190_0(,%rax,8)
.LBB190_3:
	shrq	$3, %rcx
	jmp	.LBB190_8
.LBB190_1:
	xorl	%ecx, %ecx
	jmp	.LBB190_8
.LBB190_4:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB190_8
.LBB190_5:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB190_8
.LBB190_6:
	movl	-9(%rdx), %ecx
	jmp	.LBB190_8
.LBB190_7:
	movq	-17(%rdx), %rcx
.LBB190_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end190:
	.size	RM_DictIteratorReseek, .Lfunc_end190-RM_DictIteratorReseek
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI190_0:
	.quad	.LBB190_3
	.quad	.LBB190_4
	.quad	.LBB190_5
	.quad	.LBB190_6
	.quad	.LBB190_7
                                        # -- End function
	.text
	.globl	RM_DictNextC            # -- Begin function RM_DictNextC
	.p2align	4, 0x90
	.type	RM_DictNextC,@function
RM_DictNextC:                           # @RM_DictNextC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	addq	$8, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB191_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB191_4
# %bb.3:
	movq	40(%rbx), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB191_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB191_6
# %bb.5:
	movq	32(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB191_6:
	movq	24(%rbx), %rax
	jmp	.LBB191_7
.LBB191_1:
	xorl	%eax, %eax
.LBB191_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end191:
	.size	RM_DictNextC, .Lfunc_end191-RM_DictNextC
                                        # -- End function
	.globl	RM_DictPrevC            # -- Begin function RM_DictPrevC
	.p2align	4, 0x90
	.type	RM_DictPrevC,@function
RM_DictPrevC:                           # @RM_DictPrevC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	addq	$8, %rdi
	callq	raxPrev
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB192_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB192_4
# %bb.3:
	movq	40(%rbx), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB192_4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB192_6
# %bb.5:
	movq	32(%rbx), %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB192_6:
	movq	24(%rbx), %rax
	jmp	.LBB192_7
.LBB192_1:
	xorl	%eax, %eax
.LBB192_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end192:
	.size	RM_DictPrevC, .Lfunc_end192-RM_DictPrevC
                                        # -- End function
	.globl	RM_DictNext             # -- Begin function RM_DictNext
	.p2align	4, 0x90
	.type	RM_DictNext,@function
RM_DictNext:                            # @RM_DictNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	8(%rsi), %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB193_5
# %bb.1:
	movq	40(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB193_3
# %bb.2:
	movq	32(%rbx), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB193_3:
	movq	24(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB193_6
# %bb.4:
	movq	%r14, %rdi
	callq	RM_CreateString
	jmp	.LBB193_7
.LBB193_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB193_6:
	xorl	%eax, %eax
.LBB193_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end193:
	.size	RM_DictNext, .Lfunc_end193-RM_DictNext
                                        # -- End function
	.globl	RM_DictPrev             # -- Begin function RM_DictPrev
	.p2align	4, 0x90
	.type	RM_DictPrev,@function
RM_DictPrev:                            # @RM_DictPrev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	8(%rsi), %rdi
	callq	raxPrev
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB194_5
# %bb.1:
	movq	40(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB194_3
# %bb.2:
	movq	32(%rbx), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB194_3:
	movq	24(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB194_6
# %bb.4:
	movq	%r14, %rdi
	callq	RM_CreateString
	jmp	.LBB194_7
.LBB194_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB194_6:
	xorl	%eax, %eax
.LBB194_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end194:
	.size	RM_DictPrev, .Lfunc_end194-RM_DictPrev
                                        # -- End function
	.globl	RM_DictCompareC         # -- Begin function RM_DictCompareC
	.p2align	4, 0x90
	.type	RM_DictCompareC,@function
RM_DictCompareC:                        # @RM_DictCompareC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	addq	$8, %rbx
	movq	%rbx, %rdi
	callq	raxEOF
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB195_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	raxCompare
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB195_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end195:
	.size	RM_DictCompareC, .Lfunc_end195-RM_DictCompareC
                                        # -- End function
	.globl	RM_DictCompare          # -- Begin function RM_DictCompare
	.p2align	4, 0x90
	.type	RM_DictCompare,@function
RM_DictCompare:                         # @RM_DictCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	addq	$8, %rbx
	movq	%rbx, %rdi
	callq	raxEOF
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.LBB196_10
# %bb.1:
	movq	8(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB196_2
# %bb.3:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI196_0(,%rax,8)
.LBB196_4:
	shrq	$3, %rcx
	jmp	.LBB196_9
.LBB196_2:
	xorl	%ecx, %ecx
	jmp	.LBB196_9
.LBB196_5:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB196_9
.LBB196_6:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB196_9
.LBB196_7:
	movl	-9(%rdx), %ecx
	jmp	.LBB196_9
.LBB196_8:
	movq	-17(%rdx), %rcx
.LBB196_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	raxCompare
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB196_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end196:
	.size	RM_DictCompare, .Lfunc_end196-RM_DictCompare
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI196_0:
	.quad	.LBB196_4
	.quad	.LBB196_5
	.quad	.LBB196_6
	.quad	.LBB196_7
	.quad	.LBB196_8
                                        # -- End function
	.text
	.globl	RM_GetRandomBytes       # -- Begin function RM_GetRandomBytes
	.p2align	4, 0x90
	.type	RM_GetRandomBytes,@function
RM_GetRandomBytes:                      # @RM_GetRandomBytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	getRandomBytes
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end197:
	.size	RM_GetRandomBytes, .Lfunc_end197-RM_GetRandomBytes
                                        # -- End function
	.globl	RM_GetRandomHexChars    # -- Begin function RM_GetRandomHexChars
	.p2align	4, 0x90
	.type	RM_GetRandomHexChars,@function
RM_GetRandomHexChars:                   # @RM_GetRandomHexChars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	getRandomHexChars
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end198:
	.size	RM_GetRandomHexChars, .Lfunc_end198-RM_GetRandomHexChars
                                        # -- End function
	.globl	RM_ExportSharedAPI      # -- Begin function RM_ExportSharedAPI
	.p2align	4, 0x90
	.type	RM_ExportSharedAPI,@function
RM_ExportSharedAPI:                     # @RM_ExportSharedAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	8(%r12), %rax
	movq	%rax, 8(%rbx)
	movq	%r14, (%rbx)
	movq	server+192(%rip), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB199_1
# %bb.2:
	movq	%rbx, %rdi
	callq	zfree
	movl	$1, %eax
	jmp	.LBB199_3
.LBB199_1:
	xorl	%eax, %eax
.LBB199_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end199:
	.size	RM_ExportSharedAPI, .Lfunc_end199-RM_ExportSharedAPI
                                        # -- End function
	.globl	RM_GetSharedAPI         # -- Begin function RM_GetSharedAPI
	.p2align	4, 0x90
	.type	RM_GetSharedAPI,@function
RM_GetSharedAPI:                        # @RM_GetSharedAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	server+192(%rip), %rdi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB200_1
# %bb.2:
	movq	8(%rax), %rbx
	movq	8(%rbx), %rax
	movq	32(%rax), %rdi
	movq	8(%r14), %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB200_4
# %bb.3:
	movq	8(%rbx), %rax
	movq	32(%rax), %rdi
	movq	8(%r14), %rsi
	callq	listAddNodeTail
	movq	8(%r14), %rax
	movq	40(%rax), %rdi
	movq	8(%rbx), %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB200_4:
	movq	(%rbx), %rax
	jmp	.LBB200_5
.LBB200_1:
	xorl	%eax, %eax
.LBB200_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end200:
	.size	RM_GetSharedAPI, .Lfunc_end200-RM_GetSharedAPI
                                        # -- End function
	.globl	moduleUnregisterSharedAPI # -- Begin function moduleUnregisterSharedAPI
	.p2align	4, 0x90
	.type	moduleUnregisterSharedAPI,@function
moduleUnregisterSharedAPI:              # @moduleUnregisterSharedAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	server+192(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB201_1
	.p2align	4, 0x90
.LBB201_4:                              #   in Loop: Header=BB201_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
.LBB201_1:                              # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	je	.LBB201_5
# %bb.2:                                #   in Loop: Header=BB201_1 Depth=1
	movq	(%rax), %rsi
	movq	8(%rax), %rbx
	cmpq	%r14, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB201_4
# %bb.3:                                #   in Loop: Header=BB201_1 Depth=1
	movq	server+192(%rip), %rdi
	callq	dictDelete
	movq	%rbx, %rdi
	callq	zfree
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB201_4
.LBB201_5:
	movq	%r12, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end201:
	.size	moduleUnregisterSharedAPI, .Lfunc_end201-moduleUnregisterSharedAPI
                                        # -- End function
	.globl	moduleUnregisterUsedAPI # -- Begin function moduleUnregisterUsedAPI
	.p2align	4, 0x90
	.type	moduleUnregisterUsedAPI,@function
moduleUnregisterUsedAPI:                # @moduleUnregisterUsedAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	40(%rdi), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB202_5
# %bb.1:
	leaq	-40(%rbp), %r15
	jmp	.LBB202_2
	.p2align	4, 0x90
.LBB202_4:                              #   in Loop: Header=BB202_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB202_5
.LBB202_2:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	32(%rax), %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB202_4
# %bb.3:                                #   in Loop: Header=BB202_2 Depth=1
	movq	40(%rbx), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB202_4
.LBB202_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end202:
	.size	moduleUnregisterUsedAPI, .Lfunc_end202-moduleUnregisterUsedAPI
                                        # -- End function
	.globl	moduleUnregisterFilters # -- Begin function moduleUnregisterFilters
	.p2align	4, 0x90
	.type	moduleUnregisterFilters,@function
moduleUnregisterFilters:                # @moduleUnregisterFilters
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	48(%rdi), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	testq	%rax, %rax
	je	.LBB203_5
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r14
	jmp	.LBB203_2
	.p2align	4, 0x90
.LBB203_4:                              #   in Loop: Header=BB203_2 Depth=1
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB203_5
.LBB203_2:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	moduleCommandFilters(%rip), %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB203_4
# %bb.3:                                #   in Loop: Header=BB203_2 Depth=1
	movq	moduleCommandFilters(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB203_4
.LBB203_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end203:
	.size	moduleUnregisterFilters, .Lfunc_end203-moduleUnregisterFilters
                                        # -- End function
	.globl	RM_RegisterCommandFilter # -- Begin function RM_RegisterCommandFilter
	.p2align	4, 0x90
	.type	RM_RegisterCommandFilter,@function
RM_RegisterCommandFilter:               # @RM_RegisterCommandFilter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	movl	$24, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movq	8(%r12), %rax
	movq	%rax, (%rbx)
	movq	%r15, 8(%rbx)
	movl	%r14d, 16(%rbx)
	movq	moduleCommandFilters(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	8(%r12), %rax
	movq	48(%rax), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end204:
	.size	RM_RegisterCommandFilter, .Lfunc_end204-RM_RegisterCommandFilter
                                        # -- End function
	.globl	RM_UnregisterCommandFilter # -- Begin function RM_UnregisterCommandFilter
	.p2align	4, 0x90
	.type	RM_UnregisterCommandFilter,@function
RM_UnregisterCommandFilter:             # @RM_UnregisterCommandFilter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	(%rsi), %rax
	movl	$1, %r14d
	cmpq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB205_4
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	moduleCommandFilters(%rip), %rdi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB205_4
# %bb.2:
	movq	moduleCommandFilters(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	8(%r15), %rax
	movq	48(%rax), %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB205_4
# %bb.3:
	movq	8(%r15), %rcx
	movq	48(%rcx), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	xorl	%r14d, %r14d
.LBB205_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end205:
	.size	RM_UnregisterCommandFilter, .Lfunc_end205-RM_UnregisterCommandFilter
                                        # -- End function
	.globl	RM_CommandFilterArgsCount # -- Begin function RM_CommandFilterArgsCount
	.p2align	4, 0x90
	.type	RM_CommandFilterArgsCount,@function
RM_CommandFilterArgsCount:              # @RM_CommandFilterArgsCount
# %bb.0:
	movl	8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end206:
	.size	RM_CommandFilterArgsCount, .Lfunc_end206-RM_CommandFilterArgsCount
                                        # -- End function
	.globl	RM_CommandFilterArgGet  # -- Begin function RM_CommandFilterArgGet
	.p2align	4, 0x90
	.type	RM_CommandFilterArgGet,@function
RM_CommandFilterArgGet:                 # @RM_CommandFilterArgGet
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB207_4
# %bb.1:
	cmpl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB207_4
# %bb.2:
	movq	(%rdi), %rax
	movslq	%esi, %rcx
	movq	(%rax,%rcx,8), %rax
	jmp	.LBB207_5
.LBB207_4:
	xorl	%eax, %eax
.LBB207_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end207:
	.size	RM_CommandFilterArgGet, .Lfunc_end207-RM_CommandFilterArgGet
                                        # -- End function
	.globl	RM_CommandFilterArgInsert # -- Begin function RM_CommandFilterArgInsert
	.p2align	4, 0x90
	.type	RM_CommandFilterArgInsert,@function
RM_CommandFilterArgInsert:              # @RM_CommandFilterArgInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%esi, %esi
	js	.LBB208_9
# %bb.1:
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movslq	8(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %ecx
	jl	.LBB208_9
# %bb.2:
	movq	%rdx, %r14
	movq	(%rbx), %rdi
	leaq	8(,%rcx,8), %rsi
	callq	zrealloc
	movq	%rax, (%rbx)
	movslq	8(%rbx), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r9d
	jle	.LBB208_3
# %bb.4:
	movslq	%r15d, %rdx
	movl	%r9d, %ecx
	subl	%r15d, %ecx
	movq	%rdx, %r8
	notq	%r8
	addq	%r9, %r8
	movq	%r9, %rsi
	andq	$3, %rcx
	je	.LBB208_6
	.p2align	4, 0x90
.LBB208_5:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	addq	$-1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	addq	$-1, %rcx
	jne	.LBB208_5
.LBB208_6:
	cmpq	$3, %r8
	jb	.LBB208_8
	.p2align	4, 0x90
.LBB208_7:                              # =>This Inner Loop Header: Depth=1
	movq	-8(%rax,%rsi,8), %rcx
	movq	%rcx, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	-16(%rax,%rsi,8), %rcx
	movq	%rcx, -8(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	-24(%rax,%rsi,8), %rcx
	movq	%rcx, -16(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	-32(%rax,%rsi,8), %rcx
	movq	%rcx, -24(%rax,%rsi,8)
	leaq	-4(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	cmpq	%rdx, %rsi
	jg	.LBB208_7
	jmp	.LBB208_8
.LBB208_3:
	movslq	%r15d, %rdx
.LBB208_8:
	movq	%r14, (%rax,%rdx,8)
	addl	$1, %r9d
	movl	%r9d, 8(%rbx)
	xorl	%eax, %eax
.LBB208_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end208:
	.size	RM_CommandFilterArgInsert, .Lfunc_end208-RM_CommandFilterArgInsert
                                        # -- End function
	.globl	RM_CommandFilterArgReplace # -- Begin function RM_CommandFilterArgReplace
	.p2align	4, 0x90
	.type	RM_CommandFilterArgReplace,@function
RM_CommandFilterArgReplace:             # @RM_CommandFilterArgReplace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%esi, %esi
	js	.LBB209_3
# %bb.1:
	movq	%rdi, %rbx
	cmpl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB209_3
# %bb.2:
	movq	%rdx, %r14
	movq	(%rbx), %rax
	movslq	%esi, %r15
	movq	(%rax,%r15,8), %rdi
	callq	decrRefCount
	movq	(%rbx), %rax
	movq	%r14, (%rax,%r15,8)
	xorl	%eax, %eax
.LBB209_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end209:
	.size	RM_CommandFilterArgReplace, .Lfunc_end209-RM_CommandFilterArgReplace
                                        # -- End function
	.globl	RM_CommandFilterArgDelete # -- Begin function RM_CommandFilterArgDelete
	.p2align	4, 0x90
	.type	RM_CommandFilterArgDelete,@function
RM_CommandFilterArgDelete:              # @RM_CommandFilterArgDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testl	%esi, %esi
	js	.LBB210_8
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r15
	cmpl	%esi, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB210_8
# %bb.2:
	movq	(%r15), %rax
	movslq	%r14d, %rbx
	movq	(%rax,%rbx,8), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%r15), %rax
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jle	.LBB210_7
# %bb.3:
	movl	%eax, %edx
	subl	%r14d, %edx
	movq	%rbx, %rcx
	notq	%rcx
	addq	%rax, %rcx
	andq	$3, %rdx
	je	.LBB210_5
	.p2align	4, 0x90
.LBB210_4:                              # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rsi
	movq	8(%rsi,%rbx,8), %rdi
	movq	%rdi, (%rsi,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jne	.LBB210_4
.LBB210_5:
	cmpq	$3, %rcx
	jb	.LBB210_7
	.p2align	4, 0x90
.LBB210_6:                              # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rcx
	movq	8(%rcx,%rbx,8), %rdx
	movq	%rdx, (%rcx,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	movq	16(%rcx,%rbx,8), %rdx
	movq	%rdx, 8(%rcx,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	movq	24(%rcx,%rbx,8), %rdx
	movq	%rdx, 16(%rcx,%rbx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	movq	32(%rcx,%rbx,8), %rdx
	movq	%rdx, 24(%rcx,%rbx,8)
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB210_6
.LBB210_7:
	movl	%eax, 8(%r15)
	xorl	%eax, %eax
.LBB210_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end210:
	.size	RM_CommandFilterArgDelete, .Lfunc_end210-RM_CommandFilterArgDelete
                                        # -- End function
	.globl	dictCStringKeyHash      # -- Begin function dictCStringKeyHash
	.p2align	4, 0x90
	.type	dictCStringKeyHash,@function
dictCStringKeyHash:                     # @dictCStringKeyHash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	dictGenHashFunction
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end211:
	.size	dictCStringKeyHash, .Lfunc_end211-dictCStringKeyHash
                                        # -- End function
	.globl	dictCStringKeyCompare   # -- Begin function dictCStringKeyCompare
	.p2align	4, 0x90
	.type	dictCStringKeyCompare,@function
dictCStringKeyCompare:                  # @dictCStringKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	strcmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end212:
	.size	dictCStringKeyCompare, .Lfunc_end212-dictCStringKeyCompare
                                        # -- End function
	.globl	moduleRegisterApi       # -- Begin function moduleRegisterApi
	.p2align	4, 0x90
	.type	moduleRegisterApi,@function
moduleRegisterApi:                      # @moduleRegisterApi
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	server+184(%rip), %rdi
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end213:
	.size	moduleRegisterApi, .Lfunc_end213-moduleRegisterApi
                                        # -- End function
	.globl	moduleInitModulesSystem # -- Begin function moduleInitModulesSystem
	.p2align	4, 0x90
	.type	moduleInitModulesSystem,@function
moduleInitModulesSystem:                # @moduleInitModulesSystem
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	listCreate
	movq	%rax, moduleUnblockedClients(%rip)
	callq	listCreate
	movq	%rax, server+200(%rip)
	movl	$modulesDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, modules(%rip)
	callq	listCreate
	movq	%rax, moduleKeyspaceSubscribers(%rip)
	movl	$-1, %edi
	callq	createClient
	movq	%rax, moduleFreeContextReusedClient(%rip)
	orb	$8, 163(%rax)
	callq	listCreate
	movq	%rax, moduleCommandFilters(%rip)
	callq	moduleRegisterCoreAPI
	movl	$server+208, %edi
	callq	pipe
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB214_2
# %bb.1:
	movl	server+208(%rip), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	movl	server+212(%rip), %esi
	xorl	%edi, %edi
	callq	anetNonBlock
	callq	raxNew
	movq	%rax, Timers(%rip)
	movl	$moduleGIL, %edi
	callq	pthread_mutex_lock
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB214_2:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.40, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end214:
	.size	moduleInitModulesSystem, .Lfunc_end214-moduleInitModulesSystem
                                        # -- End function
	.globl	moduleRegisterCoreAPI   # -- Begin function moduleRegisterCoreAPI
	.p2align	4, 0x90
	.type	moduleRegisterCoreAPI,@function
moduleRegisterCoreAPI:                  # @moduleRegisterCoreAPI
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$moduleAPIDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+184(%rip)
	movl	$moduleAPIDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+192(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.65, %esi
	movl	$RM_Alloc, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.66, %esi
	movl	$RM_Calloc, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.67, %esi
	movl	$RM_Realloc, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.68, %esi
	movl	$RM_Free, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.69, %esi
	movl	$RM_Strdup, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.70, %esi
	movl	$RM_CreateCommand, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.71, %esi
	movl	$RM_SetModuleAttribs, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.72, %esi
	movl	$RM_IsModuleNameBusy, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.73, %esi
	movl	$RM_WrongArity, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.74, %esi
	movl	$RM_ReplyWithLongLong, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.75, %esi
	movl	$RM_ReplyWithError, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.76, %esi
	movl	$RM_ReplyWithSimpleString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.77, %esi
	movl	$RM_ReplyWithArray, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.78, %esi
	movl	$RM_ReplySetArrayLength, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.79, %esi
	movl	$RM_ReplyWithString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.80, %esi
	movl	$RM_ReplyWithStringBuffer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.81, %esi
	movl	$RM_ReplyWithCString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.82, %esi
	movl	$RM_ReplyWithNull, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.83, %esi
	movl	$RM_ReplyWithCallReply, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.84, %esi
	movl	$RM_ReplyWithDouble, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.85, %esi
	movl	$RM_GetSelectedDb, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.86, %esi
	movl	$RM_SelectDb, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.87, %esi
	movl	$RM_OpenKey, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.88, %esi
	movl	$RM_CloseKey, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.89, %esi
	movl	$RM_KeyType, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.90, %esi
	movl	$RM_ValueLength, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.91, %esi
	movl	$RM_ListPush, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.92, %esi
	movl	$RM_ListPop, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.93, %esi
	movl	$RM_StringToLongLong, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.94, %esi
	movl	$RM_StringToDouble, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.95, %esi
	movl	$RM_Call, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.96, %esi
	movl	$RM_CallReplyProto, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.97, %esi
	movl	$RM_FreeCallReply, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.98, %esi
	movl	$RM_CallReplyInteger, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.99, %esi
	movl	$RM_CallReplyType, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.100, %esi
	movl	$RM_CallReplyLength, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.101, %esi
	movl	$RM_CallReplyArrayElement, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.102, %esi
	movl	$RM_CallReplyStringPtr, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.103, %esi
	movl	$RM_CreateStringFromCallReply, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.104, %esi
	movl	$RM_CreateString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.105, %esi
	movl	$RM_CreateStringFromLongLong, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.106, %esi
	movl	$RM_CreateStringFromString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.107, %esi
	movl	$RM_CreateStringPrintf, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.108, %esi
	movl	$RM_FreeString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.109, %esi
	movl	$RM_StringPtrLen, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.110, %esi
	movl	$RM_AutoMemory, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.111, %esi
	movl	$RM_Replicate, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.112, %esi
	movl	$RM_ReplicateVerbatim, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.113, %esi
	movl	$RM_DeleteKey, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.114, %esi
	movl	$RM_UnlinkKey, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.115, %esi
	movl	$RM_StringSet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.116, %esi
	movl	$RM_StringDMA, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.117, %esi
	movl	$RM_StringTruncate, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.118, %esi
	movl	$RM_SetExpire, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.119, %esi
	movl	$RM_GetExpire, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.120, %esi
	movl	$RM_ZsetAdd, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.121, %esi
	movl	$RM_ZsetIncrby, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.122, %esi
	movl	$RM_ZsetScore, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.123, %esi
	movl	$RM_ZsetRem, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.124, %esi
	movl	$RM_ZsetRangeStop, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.125, %esi
	movl	$RM_ZsetFirstInScoreRange, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.126, %esi
	movl	$RM_ZsetLastInScoreRange, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.127, %esi
	movl	$RM_ZsetFirstInLexRange, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.128, %esi
	movl	$RM_ZsetLastInLexRange, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.129, %esi
	movl	$RM_ZsetRangeCurrentElement, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.130, %esi
	movl	$RM_ZsetRangeNext, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.131, %esi
	movl	$RM_ZsetRangePrev, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.132, %esi
	movl	$RM_ZsetRangeEndReached, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.133, %esi
	movl	$RM_HashSet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.134, %esi
	movl	$RM_HashGet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.135, %esi
	movl	$RM_IsKeysPositionRequest, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.136, %esi
	movl	$RM_KeyAtPos, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.137, %esi
	movl	$RM_GetClientId, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.138, %esi
	movl	$RM_GetContextFlags, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.139, %esi
	movl	$RM_PoolAlloc, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.140, %esi
	movl	$RM_CreateDataType, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.141, %esi
	movl	$RM_ModuleTypeSetValue, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.142, %esi
	movl	$RM_ModuleTypeGetType, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.143, %esi
	movl	$RM_ModuleTypeGetValue, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.144, %esi
	movl	$RM_SaveUnsigned, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.145, %esi
	movl	$RM_LoadUnsigned, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.146, %esi
	movl	$RM_SaveSigned, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.147, %esi
	movl	$RM_LoadSigned, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.148, %esi
	movl	$RM_SaveString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.149, %esi
	movl	$RM_SaveStringBuffer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.150, %esi
	movl	$RM_LoadString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.151, %esi
	movl	$RM_LoadStringBuffer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.152, %esi
	movl	$RM_SaveDouble, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.153, %esi
	movl	$RM_LoadDouble, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.154, %esi
	movl	$RM_SaveFloat, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.155, %esi
	movl	$RM_LoadFloat, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.156, %esi
	movl	$RM_EmitAOF, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.157, %esi
	movl	$RM_Log, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.158, %esi
	movl	$RM_LogIOError, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.159, %esi
	movl	$RM_StringAppendBuffer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.160, %esi
	movl	$RM_RetainString, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.161, %esi
	movl	$RM_StringCompare, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.162, %esi
	movl	$RM_GetContextFromIO, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.163, %esi
	movl	$RM_GetKeyNameFromIO, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.164, %esi
	movl	$RM_BlockClient, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.165, %esi
	movl	$RM_UnblockClient, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.166, %esi
	movl	$RM_IsBlockedReplyRequest, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.167, %esi
	movl	$RM_IsBlockedTimeoutRequest, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.168, %esi
	movl	$RM_GetBlockedClientPrivateData, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.169, %esi
	movl	$RM_AbortBlock, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.170, %esi
	movl	$RM_Milliseconds, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.171, %esi
	movl	$RM_GetThreadSafeContext, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.172, %esi
	movl	$RM_FreeThreadSafeContext, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.173, %esi
	movl	$RM_ThreadSafeContextLock, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.174, %esi
	movl	$RM_ThreadSafeContextUnlock, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.175, %esi
	movl	$RM_DigestAddStringBuffer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.176, %esi
	movl	$RM_DigestAddLongLong, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.177, %esi
	movl	$RM_DigestEndSequence, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.178, %esi
	movl	$RM_SubscribeToKeyspaceEvents, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.179, %esi
	movl	$RM_RegisterClusterMessageReceiver, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.180, %esi
	movl	$RM_SendClusterMessage, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.181, %esi
	movl	$RM_GetClusterNodeInfo, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.182, %esi
	movl	$RM_GetClusterNodesList, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.183, %esi
	movl	$RM_FreeClusterNodesList, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.184, %esi
	movl	$RM_CreateTimer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.185, %esi
	movl	$RM_StopTimer, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.186, %esi
	movl	$RM_GetTimerInfo, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.187, %esi
	movl	$RM_GetMyClusterID, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.188, %esi
	movl	$RM_GetClusterSize, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.189, %esi
	movl	$RM_GetRandomBytes, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.190, %esi
	movl	$RM_GetRandomHexChars, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.191, %esi
	movl	$RM_BlockedClientDisconnected, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.192, %esi
	movl	$RM_SetDisconnectCallback, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.193, %esi
	movl	$RM_GetBlockedClientHandle, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.194, %esi
	movl	$RM_SetClusterFlags, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.195, %esi
	movl	$RM_CreateDict, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.196, %esi
	movl	$RM_FreeDict, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.197, %esi
	movl	$RM_DictSize, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.198, %esi
	movl	$RM_DictSetC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.199, %esi
	movl	$RM_DictReplaceC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.200, %esi
	movl	$RM_DictSet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.201, %esi
	movl	$RM_DictReplace, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.202, %esi
	movl	$RM_DictGetC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.203, %esi
	movl	$RM_DictGet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.204, %esi
	movl	$RM_DictDelC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.205, %esi
	movl	$RM_DictDel, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.206, %esi
	movl	$RM_DictIteratorStartC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.207, %esi
	movl	$RM_DictIteratorStart, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.208, %esi
	movl	$RM_DictIteratorStop, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.209, %esi
	movl	$RM_DictIteratorReseekC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.210, %esi
	movl	$RM_DictIteratorReseek, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.211, %esi
	movl	$RM_DictNextC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.212, %esi
	movl	$RM_DictPrevC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.213, %esi
	movl	$RM_DictNext, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.214, %esi
	movl	$RM_DictPrev, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.215, %esi
	movl	$RM_DictCompareC, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.216, %esi
	movl	$RM_DictCompare, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.217, %esi
	movl	$RM_ExportSharedAPI, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.218, %esi
	movl	$RM_GetSharedAPI, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.219, %esi
	movl	$RM_RegisterCommandFilter, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.220, %esi
	movl	$RM_UnregisterCommandFilter, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.221, %esi
	movl	$RM_CommandFilterArgsCount, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.222, %esi
	movl	$RM_CommandFilterArgGet, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.223, %esi
	movl	$RM_CommandFilterArgInsert, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.224, %esi
	movl	$RM_CommandFilterArgReplace, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	server+184(%rip), %rdi
	movl	$.L.str.225, %esi
	movl	$RM_CommandFilterArgDelete, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end215:
	.size	moduleRegisterCoreAPI, .Lfunc_end215-moduleRegisterCoreAPI
                                        # -- End function
	.globl	moduleLoadFromQueue     # -- Begin function moduleLoadFromQueue
	.p2align	4, 0x90
	.type	moduleLoadFromQueue,@function
moduleLoadFromQueue:                    # @moduleLoadFromQueue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	server+200(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB216_4
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB216_2:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	(%rbx), %rdi
	movq	16(%rbx), %rsi
	movl	8(%rbx), %edx
	callq	moduleLoad
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB216_5
# %bb.3:                                #   in Loop: Header=BB216_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB216_2
.LBB216_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB216_5:
	movq	(%rbx), %rdx
	movl	$.L.str.41, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end216:
	.size	moduleLoadFromQueue, .Lfunc_end216-moduleLoadFromQueue
                                        # -- End function
	.globl	moduleLoad              # -- Begin function moduleLoad
	.p2align	4, 0x90
	.type	moduleLoad,@function
moduleLoad:                             # @moduleLoad
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movups	%xmm0, -48(%rbp)
	movups	%xmm0, -64(%rbp)
	movups	%xmm0, -80(%rbp)
	movups	%xmm0, -96(%rbp)
	movups	%xmm0, -112(%rbp)
	movups	%xmm0, -128(%rbp)
	movq	$RM_GetApi, -136(%rbp)
	movl	$2, %esi
	callq	dlopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB217_1
# %bb.2:
	movq	%rax, %rbx
	movl	$.L.str.43, %esi
	movq	%rax, %rdi
	callq	dlsym
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB217_3
# %bb.5:
	leaq	-136(%rbp), %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB217_9
# %bb.6:
	movq	-128(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB217_8
# %bb.7:
	callq	moduleUnregisterCommands
	movq	-128(%rbp), %rdi
	callq	moduleUnregisterSharedAPI
	movq	-128(%rbp), %rdi
	callq	moduleUnregisterUsedAPI
	movq	-128(%rbp), %r15
	movq	24(%r15), %rdi
	callq	listRelease
	movq	48(%r15), %rdi
	callq	listRelease
	movq	8(%r15), %rdi
	callq	sdsfree
	movq	%r15, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB217_8:
	movq	%rbx, %rdi
	callq	dlclose
	movl	$.L.str.45, %esi
	jmp	.LBB217_4
.LBB217_1:
	callq	dlerror
	movl	$.L.str.42, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movl	$-1, %ebx
	jmp	.LBB217_10
.LBB217_3:
	movq	%rbx, %rdi
	callq	dlclose
	movl	$.L.str.44, %esi
.LBB217_4:
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	$-1, %ebx
	jmp	.LBB217_10
.LBB217_9:
	movq	modules(%rip), %rdi
	movq	-128(%rbp), %rdx
	movq	8(%rdx), %rsi
	callq	dictAdd
	movq	-128(%rbp), %rax
	movq	%rbx, (%rax)
	movq	8(%rax), %rdx
	xorl	%ebx, %ebx
	movl	$.L.str.46, %esi
	movl	$2, %edi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	serverLog
	leaq	-136(%rbp), %rdi
	callq	moduleFreeContext
.LBB217_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end217:
	.size	moduleLoad, .Lfunc_end217-moduleLoad
                                        # -- End function
	.globl	moduleFreeModuleStructure # -- Begin function moduleFreeModuleStructure
	.p2align	4, 0x90
	.type	moduleFreeModuleStructure,@function
moduleFreeModuleStructure:              # @moduleFreeModuleStructure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	24(%rdi), %rdi
	callq	listRelease
	movq	48(%rbx), %rdi
	callq	listRelease
	movq	8(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end218:
	.size	moduleFreeModuleStructure, .Lfunc_end218-moduleFreeModuleStructure
                                        # -- End function
	.globl	moduleUnregisterCommands # -- Begin function moduleUnregisterCommands
	.p2align	4, 0x90
	.type	moduleUnregisterCommands,@function
moduleUnregisterCommands:               # @moduleUnregisterCommands
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	server+56(%rip), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB219_7
# %bb.1:                                # %.preheader
	movl	$RedisModuleCommandDispatcher, %r13d
	jmp	.LBB219_2
	.p2align	4, 0x90
.LBB219_5:                              #   in Loop: Header=BB219_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB219_6:                              #   in Loop: Header=BB219_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB219_7
.LBB219_2:                              # =>This Inner Loop Header: Depth=1
	movq	8(%rax), %rax
	cmpq	%r13, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB219_6
# %bb.3:                                #   in Loop: Header=BB219_2 Depth=1
	movq	40(%rax), %rbx
	movq	16(%rbx), %rax
	movq	(%rax), %r12
	cmpq	%r14, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB219_5
# %bb.4:                                #   in Loop: Header=BB219_2 Depth=1
	movq	server+56(%rip), %rdi
	movq	%r12, %rsi
	callq	dictDelete
	movq	server+64(%rip), %rdi
	movq	%r12, %rsi
	callq	dictDelete
	movq	%r12, %rdi
	callq	sdsfree
	movq	16(%rbx), %rdi
	callq	zfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB219_5
.LBB219_7:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end219:
	.size	moduleUnregisterCommands, .Lfunc_end219-moduleUnregisterCommands
                                        # -- End function
	.globl	moduleUnload            # -- Begin function moduleUnload
	.p2align	4, 0x90
	.type	moduleUnload,@function
moduleUnload:                           # @moduleUnload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rsi
	movq	modules(%rip), %rdi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB220_1
# %bb.2:
	movq	%rax, %rbx
	movq	24(%rax), %rax
	cmpq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB220_4
# %bb.3:
	callq	__errno
	movl	$16, (%rax)
	movl	$1, %r14d
	jmp	.LBB220_9
.LBB220_1:
	callq	__errno
	movl	$2, (%rax)
	movl	$1, %r14d
	jmp	.LBB220_9
.LBB220_4:
	movq	32(%rbx), %rax
	cmpq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB220_6
# %bb.5:
	callq	__errno
	movl	$1, (%rax)
	movl	$1, %r14d
	jmp	.LBB220_9
.LBB220_6:
	movq	%rbx, %rdi
	callq	moduleUnregisterCommands
	movq	%rbx, %rdi
	callq	moduleUnregisterSharedAPI
	movq	%rbx, %rdi
	callq	moduleUnregisterUsedAPI
	movq	%rbx, %rdi
	callq	moduleUnregisterFilters
	movq	%rbx, %rdi
	callq	moduleUnsubscribeNotifications
	movq	(%rbx), %rdi
	callq	dlclose
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB220_8
# %bb.7:
	callq	dlerror
	testq	%rax, %rax
	movl	$.L.str.47, %ecx
	cmovneq	%rax, %rcx
	movq	8(%rbx), %rdx
	movl	$.L.str.48, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$42, __A_VARIABLE(%rip)
.LBB220_8:
	movq	8(%rbx), %rdx
	xorl	%r14d, %r14d
	movl	$.L.str.49, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	modules(%rip), %rdi
	movq	8(%rbx), %rsi
	callq	dictDelete
	movq	$0, 8(%rbx)
	movq	24(%rbx), %rdi
	callq	listRelease
	movq	48(%rbx), %rdi
	callq	listRelease
	movq	8(%rbx), %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB220_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end220:
	.size	moduleUnload, .Lfunc_end220-moduleUnload
                                        # -- End function
	.globl	moduleCommand           # -- Begin function moduleCommand
	.p2align	4, 0x90
	.type	moduleCommand,@function
moduleCommand:                          # @moduleCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %r12
	movq	8(%r12), %rax
	movq	8(%rax), %rbx
	movl	64(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB221_3
# %bb.1:
	movl	$.L.str.50, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB221_2
.LBB221_3:
	movl	$.L.str.54, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB221_10
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jl	.LBB221_10
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jne	.LBB221_7
# %bb.6:
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	jmp	.LBB221_8
.LBB221_10:
	movl	$.L.str.56, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB221_22
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jne	.LBB221_22
# %bb.12:
	movq	16(%r12), %rax
	movq	8(%rax), %rdi
	callq	moduleUnload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB221_13
# %bb.14:
	callq	__errno
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB221_19
# %bb.15:
	cmpl	$2, %eax
	je	.LBB221_16
# %bb.17:
	cmpl	$16, %eax
	jne	.LBB221_20
# %bb.18:
	movl	$.L.str.58, %edx
	jmp	.LBB221_21
.LBB221_22:
	movl	$.L.str.62, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB221_36
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jne	.LBB221_36
# %bb.24:
	movq	modules(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r14
	movq	modules(%rip), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	jmp	.LBB221_25
.LBB221_36:
	movq	%r15, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB221_40
.LBB221_33:                             #   in Loop: Header=BB221_25 Depth=1
	movq	-17(%rbx), %rdx
	.p2align	4, 0x90
.LBB221_34:                             #   in Loop: Header=BB221_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movl	$.L.str.64, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movslq	16(%r12), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
.LBB221_25:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB221_35
# %bb.26:                               #   in Loop: Header=BB221_25 Depth=1
	movq	(%rax), %rbx
	movq	8(%rax), %r12
	movl	$4, %esi
	movq	%r15, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.63, %esi
	movq	%r15, %rdi
	callq	addReplyBulkCString
	movzbl	-1(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB221_27
# %bb.28:                               #   in Loop: Header=BB221_25 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI221_0(,%rax,8)
.LBB221_29:                             #   in Loop: Header=BB221_25 Depth=1
	shrq	$3, %rdx
	jmp	.LBB221_34
.LBB221_27:                             #   in Loop: Header=BB221_25 Depth=1
	xorl	%edx, %edx
	jmp	.LBB221_34
.LBB221_30:                             #   in Loop: Header=BB221_25 Depth=1
	movzbl	-3(%rbx), %edx
	jmp	.LBB221_34
.LBB221_31:                             #   in Loop: Header=BB221_25 Depth=1
	movzwl	-5(%rbx), %edx
	jmp	.LBB221_34
.LBB221_32:                             #   in Loop: Header=BB221_25 Depth=1
	movl	-9(%rbx), %edx
	jmp	.LBB221_34
.LBB221_2:
	movaps	.LmoduleCommand.help+16(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	.LmoduleCommand.help(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyHelp
	jmp	.LBB221_39
.LBB221_35:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	jmp	.LBB221_39
.LBB221_7:
	addl	$-3, %r14d
	leaq	24(%r12), %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB221_8:
	movq	16(%r12), %rax
	movq	8(%rax), %rdi
	movl	%r14d, %edx
	callq	moduleLoad
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB221_9
# %bb.37:
	movl	$.L.str.55, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB221_38
.LBB221_9:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB221_38:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB221_39
.LBB221_13:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	jmp	.LBB221_39
.LBB221_19:
	movl	$.L.str.59, %edx
	jmp	.LBB221_21
.LBB221_16:
	movl	$.L.str.57, %edx
	jmp	.LBB221_21
.LBB221_20:
	movl	$.L.str.60, %edx
.LBB221_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.61, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
.LBB221_39:
	movl	$42, __A_VARIABLE(%rip)
.LBB221_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end221:
	.size	moduleCommand, .Lfunc_end221-moduleCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI221_0:
	.quad	.LBB221_29
	.quad	.LBB221_30
	.quad	.LBB221_31
	.quad	.LBB221_32
	.quad	.LBB221_33
                                        # -- End function
	.text
	.globl	moduleCount             # -- Begin function moduleCount
	.p2align	4, 0x90
	.type	moduleCount,@function
moduleCount:                            # @moduleCount
# %bb.0:
	movq	modules(%rip), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end222:
	.size	moduleCount, .Lfunc_end222-moduleCount
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"API misuse detected in module %s: RedisModule_ReplyWithArray(REDISMODULE_POSTPONED_ARRAY_LEN) not matched by the same number of RedisModule_SetReplyArrayLen() calls."
	.size	.L.str, 166

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"EXEC"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"write"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"readonly"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"admin"
	.size	.L.str.5, 6

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"deny-oom"
	.size	.L.str.6, 9

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"deny-script"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"allow-loading"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"pubsub"
	.size	.L.str.9, 7

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"random"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"allow-stale"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"no-monitor"
	.size	.L.str.12, 11

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"fast"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"getkeys-api"
	.size	.L.str.14, 12

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"no-cluster"
	.size	.L.str.15, 11

	.type	modules,@object         # @modules
	.local	modules
	.comm	modules,8,8
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"(NULL string reply referenced in module)"
	.size	.L.str.16, 41

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Module attempted to use an in-place string modify operation with a string referenced multiple times. Please check the code for API usage correctness."
	.size	.L.str.17, 150

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"wrong number of arguments for '%s' command"
	.size	.L.str.18, 43

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\r\n"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"-"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"+"
	.size	.L.str.21, 2

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"API misuse detected in module %s: RedisModule_ReplySetArrayLength() called without previous RedisModule_ReplyWithArray(ctx,REDISMODULE_POSTPONED_ARRAY_LEN) call."
	.size	.L.str.22, 162

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"<dma-empty-string>"
	.size	.L.str.23, 19

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/module.c"
	.size	.L.str.24, 74

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Unsupported zset encoding"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
	.size	.L.str.26, 65

	.type	ModuleTypeNameCharSet,@object # @ModuleTypeNameCharSet
	.data
	.globl	ModuleTypeNameCharSet
	.p2align	3
ModuleTypeNameCharSet:
	.quad	.L.str.26
	.size	ModuleTypeNameCharSet, 8

	.type	moduleTypeLookupModuleByID.cache,@object # @moduleTypeLookupModuleByID.cache
	.local	moduleTypeLookupModuleByID.cache
	.comm	moduleTypeLookupModuleByID.cache,48,16
	.type	.L.str.27,@object       # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"Error loading data from RDB (short read or EOF). Read performed by module '%s' about type '%s' after reading '%llu' bytes of a value."
	.size	.L.str.27, 134

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Fatal: AOF method for module data type '%s' tried to emit unknown command '%s'"
	.size	.L.str.28, 79

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Fatal: AOF method for module data type '%s' tried to call RedisModule_EmitAOF() with wrong format specifiers '%s'"
	.size	.L.str.29, 114

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"debug"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"verbose"
	.size	.L.str.31, 8

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"notice"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"warning"
	.size	.L.str.33, 8

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"<%s> "
	.size	.L.str.34, 6

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"module"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Blocking module command called from Lua script"
	.size	.L.str.36, 47

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Blocking module command called from transaction"
	.size	.L.str.37, 48

	.type	moduleUnblockedClientsMutex,@object # @moduleUnblockedClientsMutex
	.data
	.p2align	3
moduleUnblockedClientsMutex:
	.quad	-1
	.size	moduleUnblockedClientsMutex, 8

	.type	moduleUnblockedClients,@object # @moduleUnblockedClients
	.local	moduleUnblockedClients
	.comm	moduleUnblockedClients,8,8
	.type	.L.str.38,@object       # @.str.38
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.38:
	.asciz	"A"
	.size	.L.str.38, 2

	.type	moduleGIL,@object       # @moduleGIL
	.data
	.p2align	3
moduleGIL:
	.quad	-1
	.size	moduleGIL, 8

	.type	moduleKeyspaceSubscribers,@object # @moduleKeyspaceSubscribers
	.local	moduleKeyspaceSubscribers
	.comm	moduleKeyspaceSubscribers,8,8
	.type	moduleFreeContextReusedClient,@object # @moduleFreeContextReusedClient
	.local	moduleFreeContextReusedClient
	.comm	moduleFreeContextReusedClient,8,8
	.type	clusterReceivers,@object # @clusterReceivers
	.local	clusterReceivers
	.comm	clusterReceivers,2040,16
	.type	aeTimer,@object         # @aeTimer
	.globl	aeTimer
	.p2align	3
aeTimer:
	.quad	-1                      # 0xffffffffffffffff
	.size	aeTimer, 8

	.type	Timers,@object          # @Timers
	.local	Timers
	.comm	Timers,8,8
	.type	.L.str.39,@object       # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"^"
	.size	.L.str.39, 2

	.type	moduleCommandFilters,@object # @moduleCommandFilters
	.local	moduleCommandFilters
	.comm	moduleCommandFilters,8,8
	.type	moduleAPIDictType,@object # @moduleAPIDictType
	.data
	.globl	moduleAPIDictType
	.p2align	3
moduleAPIDictType:
	.quad	dictCStringKeyHash
	.quad	0
	.quad	0
	.quad	dictCStringKeyCompare
	.quad	0
	.quad	0
	.size	moduleAPIDictType, 48

	.type	.L.str.40,@object       # @.str.40
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.40:
	.asciz	"Can't create the pipe for module blocking commands: %s"
	.size	.L.str.40, 55

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Can't load module from %s: server aborting"
	.size	.L.str.41, 43

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Module %s failed to load: %s"
	.size	.L.str.42, 29

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"RedisModule_OnLoad"
	.size	.L.str.43, 19

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Module %s does not export RedisModule_OnLoad() symbol. Module not loaded."
	.size	.L.str.44, 74

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Module %s initialization failed. Module not loaded"
	.size	.L.str.45, 51

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Module '%s' loaded from %s"
	.size	.L.str.46, 27

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Unknown error"
	.size	.L.str.47, 14

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Error when trying to close the %s module: %s"
	.size	.L.str.48, 45

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Module %s unloaded"
	.size	.L.str.49, 19

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"help"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"LIST -- Return a list of loaded modules."
	.size	.L.str.51, 41

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"LOAD <path> [arg ...] -- Load a module library from <path>."
	.size	.L.str.52, 60

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"UNLOAD <name> -- Unload a module."
	.size	.L.str.53, 34

	.type	.LmoduleCommand.help,@object # @moduleCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LmoduleCommand.help:
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	0
	.size	.LmoduleCommand.help, 32

	.type	.L.str.54,@object       # @.str.54
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.54:
	.asciz	"load"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Error loading the extension. Please check the server logs."
	.size	.L.str.55, 59

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"unload"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"no such module with that name"
	.size	.L.str.57, 30

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"the module exports one or more module-side data types, can't unload"
	.size	.L.str.58, 68

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"the module exports APIs used by other modules. Please unload them first and try again"
	.size	.L.str.59, 86

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"operation not possible."
	.size	.L.str.60, 24

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Error unloading module: %s"
	.size	.L.str.61, 27

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"list"
	.size	.L.str.62, 5

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"name"
	.size	.L.str.63, 5

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"ver"
	.size	.L.str.64, 4

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"RedisModule_Alloc"
	.size	.L.str.65, 18

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"RedisModule_Calloc"
	.size	.L.str.66, 19

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"RedisModule_Realloc"
	.size	.L.str.67, 20

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"RedisModule_Free"
	.size	.L.str.68, 17

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"RedisModule_Strdup"
	.size	.L.str.69, 19

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"RedisModule_CreateCommand"
	.size	.L.str.70, 26

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"RedisModule_SetModuleAttribs"
	.size	.L.str.71, 29

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"RedisModule_IsModuleNameBusy"
	.size	.L.str.72, 29

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"RedisModule_WrongArity"
	.size	.L.str.73, 23

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"RedisModule_ReplyWithLongLong"
	.size	.L.str.74, 30

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"RedisModule_ReplyWithError"
	.size	.L.str.75, 27

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"RedisModule_ReplyWithSimpleString"
	.size	.L.str.76, 34

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"RedisModule_ReplyWithArray"
	.size	.L.str.77, 27

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"RedisModule_ReplySetArrayLength"
	.size	.L.str.78, 32

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"RedisModule_ReplyWithString"
	.size	.L.str.79, 28

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"RedisModule_ReplyWithStringBuffer"
	.size	.L.str.80, 34

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"RedisModule_ReplyWithCString"
	.size	.L.str.81, 29

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"RedisModule_ReplyWithNull"
	.size	.L.str.82, 26

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"RedisModule_ReplyWithCallReply"
	.size	.L.str.83, 31

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"RedisModule_ReplyWithDouble"
	.size	.L.str.84, 28

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"RedisModule_GetSelectedDb"
	.size	.L.str.85, 26

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"RedisModule_SelectDb"
	.size	.L.str.86, 21

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"RedisModule_OpenKey"
	.size	.L.str.87, 20

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"RedisModule_CloseKey"
	.size	.L.str.88, 21

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"RedisModule_KeyType"
	.size	.L.str.89, 20

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"RedisModule_ValueLength"
	.size	.L.str.90, 24

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"RedisModule_ListPush"
	.size	.L.str.91, 21

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"RedisModule_ListPop"
	.size	.L.str.92, 20

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"RedisModule_StringToLongLong"
	.size	.L.str.93, 29

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"RedisModule_StringToDouble"
	.size	.L.str.94, 27

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"RedisModule_Call"
	.size	.L.str.95, 17

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"RedisModule_CallReplyProto"
	.size	.L.str.96, 27

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"RedisModule_FreeCallReply"
	.size	.L.str.97, 26

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"RedisModule_CallReplyInteger"
	.size	.L.str.98, 29

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"RedisModule_CallReplyType"
	.size	.L.str.99, 26

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"RedisModule_CallReplyLength"
	.size	.L.str.100, 28

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"RedisModule_CallReplyArrayElement"
	.size	.L.str.101, 34

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"RedisModule_CallReplyStringPtr"
	.size	.L.str.102, 31

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"RedisModule_CreateStringFromCallReply"
	.size	.L.str.103, 38

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"RedisModule_CreateString"
	.size	.L.str.104, 25

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"RedisModule_CreateStringFromLongLong"
	.size	.L.str.105, 37

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"RedisModule_CreateStringFromString"
	.size	.L.str.106, 35

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"RedisModule_CreateStringPrintf"
	.size	.L.str.107, 31

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"RedisModule_FreeString"
	.size	.L.str.108, 23

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"RedisModule_StringPtrLen"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"RedisModule_AutoMemory"
	.size	.L.str.110, 23

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"RedisModule_Replicate"
	.size	.L.str.111, 22

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"RedisModule_ReplicateVerbatim"
	.size	.L.str.112, 30

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"RedisModule_DeleteKey"
	.size	.L.str.113, 22

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"RedisModule_UnlinkKey"
	.size	.L.str.114, 22

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"RedisModule_StringSet"
	.size	.L.str.115, 22

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"RedisModule_StringDMA"
	.size	.L.str.116, 22

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"RedisModule_StringTruncate"
	.size	.L.str.117, 27

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"RedisModule_SetExpire"
	.size	.L.str.118, 22

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"RedisModule_GetExpire"
	.size	.L.str.119, 22

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"RedisModule_ZsetAdd"
	.size	.L.str.120, 20

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"RedisModule_ZsetIncrby"
	.size	.L.str.121, 23

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"RedisModule_ZsetScore"
	.size	.L.str.122, 22

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"RedisModule_ZsetRem"
	.size	.L.str.123, 20

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"RedisModule_ZsetRangeStop"
	.size	.L.str.124, 26

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"RedisModule_ZsetFirstInScoreRange"
	.size	.L.str.125, 34

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"RedisModule_ZsetLastInScoreRange"
	.size	.L.str.126, 33

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"RedisModule_ZsetFirstInLexRange"
	.size	.L.str.127, 32

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"RedisModule_ZsetLastInLexRange"
	.size	.L.str.128, 31

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"RedisModule_ZsetRangeCurrentElement"
	.size	.L.str.129, 36

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"RedisModule_ZsetRangeNext"
	.size	.L.str.130, 26

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"RedisModule_ZsetRangePrev"
	.size	.L.str.131, 26

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"RedisModule_ZsetRangeEndReached"
	.size	.L.str.132, 32

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"RedisModule_HashSet"
	.size	.L.str.133, 20

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"RedisModule_HashGet"
	.size	.L.str.134, 20

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"RedisModule_IsKeysPositionRequest"
	.size	.L.str.135, 34

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"RedisModule_KeyAtPos"
	.size	.L.str.136, 21

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"RedisModule_GetClientId"
	.size	.L.str.137, 24

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"RedisModule_GetContextFlags"
	.size	.L.str.138, 28

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"RedisModule_PoolAlloc"
	.size	.L.str.139, 22

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"RedisModule_CreateDataType"
	.size	.L.str.140, 27

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"RedisModule_ModuleTypeSetValue"
	.size	.L.str.141, 31

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"RedisModule_ModuleTypeGetType"
	.size	.L.str.142, 30

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"RedisModule_ModuleTypeGetValue"
	.size	.L.str.143, 31

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"RedisModule_SaveUnsigned"
	.size	.L.str.144, 25

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"RedisModule_LoadUnsigned"
	.size	.L.str.145, 25

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"RedisModule_SaveSigned"
	.size	.L.str.146, 23

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"RedisModule_LoadSigned"
	.size	.L.str.147, 23

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"RedisModule_SaveString"
	.size	.L.str.148, 23

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"RedisModule_SaveStringBuffer"
	.size	.L.str.149, 29

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"RedisModule_LoadString"
	.size	.L.str.150, 23

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"RedisModule_LoadStringBuffer"
	.size	.L.str.151, 29

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"RedisModule_SaveDouble"
	.size	.L.str.152, 23

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"RedisModule_LoadDouble"
	.size	.L.str.153, 23

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"RedisModule_SaveFloat"
	.size	.L.str.154, 22

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"RedisModule_LoadFloat"
	.size	.L.str.155, 22

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"RedisModule_EmitAOF"
	.size	.L.str.156, 20

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"RedisModule_Log"
	.size	.L.str.157, 16

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"RedisModule_LogIOError"
	.size	.L.str.158, 23

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"RedisModule_StringAppendBuffer"
	.size	.L.str.159, 31

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"RedisModule_RetainString"
	.size	.L.str.160, 25

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"RedisModule_StringCompare"
	.size	.L.str.161, 26

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"RedisModule_GetContextFromIO"
	.size	.L.str.162, 29

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"RedisModule_GetKeyNameFromIO"
	.size	.L.str.163, 29

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"RedisModule_BlockClient"
	.size	.L.str.164, 24

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"RedisModule_UnblockClient"
	.size	.L.str.165, 26

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"RedisModule_IsBlockedReplyRequest"
	.size	.L.str.166, 34

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"RedisModule_IsBlockedTimeoutRequest"
	.size	.L.str.167, 36

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"RedisModule_GetBlockedClientPrivateData"
	.size	.L.str.168, 40

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"RedisModule_AbortBlock"
	.size	.L.str.169, 23

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"RedisModule_Milliseconds"
	.size	.L.str.170, 25

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"RedisModule_GetThreadSafeContext"
	.size	.L.str.171, 33

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"RedisModule_FreeThreadSafeContext"
	.size	.L.str.172, 34

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"RedisModule_ThreadSafeContextLock"
	.size	.L.str.173, 34

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"RedisModule_ThreadSafeContextUnlock"
	.size	.L.str.174, 36

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"RedisModule_DigestAddStringBuffer"
	.size	.L.str.175, 34

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"RedisModule_DigestAddLongLong"
	.size	.L.str.176, 30

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"RedisModule_DigestEndSequence"
	.size	.L.str.177, 30

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"RedisModule_SubscribeToKeyspaceEvents"
	.size	.L.str.178, 38

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"RedisModule_RegisterClusterMessageReceiver"
	.size	.L.str.179, 43

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"RedisModule_SendClusterMessage"
	.size	.L.str.180, 31

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"RedisModule_GetClusterNodeInfo"
	.size	.L.str.181, 31

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"RedisModule_GetClusterNodesList"
	.size	.L.str.182, 32

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"RedisModule_FreeClusterNodesList"
	.size	.L.str.183, 33

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"RedisModule_CreateTimer"
	.size	.L.str.184, 24

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"RedisModule_StopTimer"
	.size	.L.str.185, 22

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"RedisModule_GetTimerInfo"
	.size	.L.str.186, 25

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"RedisModule_GetMyClusterID"
	.size	.L.str.187, 27

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"RedisModule_GetClusterSize"
	.size	.L.str.188, 27

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"RedisModule_GetRandomBytes"
	.size	.L.str.189, 27

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"RedisModule_GetRandomHexChars"
	.size	.L.str.190, 30

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"RedisModule_BlockedClientDisconnected"
	.size	.L.str.191, 38

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"RedisModule_SetDisconnectCallback"
	.size	.L.str.192, 34

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"RedisModule_GetBlockedClientHandle"
	.size	.L.str.193, 35

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"RedisModule_SetClusterFlags"
	.size	.L.str.194, 28

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"RedisModule_CreateDict"
	.size	.L.str.195, 23

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"RedisModule_FreeDict"
	.size	.L.str.196, 21

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"RedisModule_DictSize"
	.size	.L.str.197, 21

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"RedisModule_DictSetC"
	.size	.L.str.198, 21

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"RedisModule_DictReplaceC"
	.size	.L.str.199, 25

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"RedisModule_DictSet"
	.size	.L.str.200, 20

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"RedisModule_DictReplace"
	.size	.L.str.201, 24

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"RedisModule_DictGetC"
	.size	.L.str.202, 21

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"RedisModule_DictGet"
	.size	.L.str.203, 20

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"RedisModule_DictDelC"
	.size	.L.str.204, 21

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"RedisModule_DictDel"
	.size	.L.str.205, 20

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"RedisModule_DictIteratorStartC"
	.size	.L.str.206, 31

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"RedisModule_DictIteratorStart"
	.size	.L.str.207, 30

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"RedisModule_DictIteratorStop"
	.size	.L.str.208, 29

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"RedisModule_DictIteratorReseekC"
	.size	.L.str.209, 32

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"RedisModule_DictIteratorReseek"
	.size	.L.str.210, 31

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"RedisModule_DictNextC"
	.size	.L.str.211, 22

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"RedisModule_DictPrevC"
	.size	.L.str.212, 22

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"RedisModule_DictNext"
	.size	.L.str.213, 21

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"RedisModule_DictPrev"
	.size	.L.str.214, 21

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"RedisModule_DictCompareC"
	.size	.L.str.215, 25

	.type	.L.str.216,@object      # @.str.216
.L.str.216:
	.asciz	"RedisModule_DictCompare"
	.size	.L.str.216, 24

	.type	.L.str.217,@object      # @.str.217
.L.str.217:
	.asciz	"RedisModule_ExportSharedAPI"
	.size	.L.str.217, 28

	.type	.L.str.218,@object      # @.str.218
.L.str.218:
	.asciz	"RedisModule_GetSharedAPI"
	.size	.L.str.218, 25

	.type	.L.str.219,@object      # @.str.219
.L.str.219:
	.asciz	"RedisModule_RegisterCommandFilter"
	.size	.L.str.219, 34

	.type	.L.str.220,@object      # @.str.220
.L.str.220:
	.asciz	"RedisModule_UnregisterCommandFilter"
	.size	.L.str.220, 36

	.type	.L.str.221,@object      # @.str.221
.L.str.221:
	.asciz	"RedisModule_CommandFilterArgsCount"
	.size	.L.str.221, 35

	.type	.L.str.222,@object      # @.str.222
.L.str.222:
	.asciz	"RedisModule_CommandFilterArgGet"
	.size	.L.str.222, 32

	.type	.L.str.223,@object      # @.str.223
.L.str.223:
	.asciz	"RedisModule_CommandFilterArgInsert"
	.size	.L.str.223, 35

	.type	.L.str.224,@object      # @.str.224
.L.str.224:
	.asciz	"RedisModule_CommandFilterArgReplace"
	.size	.L.str.224, 36

	.type	.L.str.225,@object      # @.str.225
.L.str.225:
	.asciz	"RedisModule_CommandFilterArgDelete"
	.size	.L.str.225, 35

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	.Lswitch.table.RM_KeyType,@object # @switch.table.RM_KeyType
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.RM_KeyType:
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	3                       # 0x3
	.long	6                       # 0x6
	.size	.Lswitch.table.RM_KeyType, 24

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
