	.text
	.file	"tls-helper.c"
	.globl	pteTlsGlobalInit        # -- Begin function pteTlsGlobalInit
	.p2align	4, 0x90
	.type	pteTlsGlobalInit,@function
pteTlsGlobalInit:                       # @pteTlsGlobalInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edi, %r14d
	movl	$globalTlsLock, %edi
	callq	pte_osMutexCreate
	movslq	%r14d, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, keysUsed(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	testl	%r14d, %r14d
	jle	.LBB0_14
# %bb.3:
	movl	%r14d, %ecx
	cmpl	$8, %r14d
	jae	.LBB0_5
# %bb.4:
	xorl	%edx, %edx
	jmp	.LBB0_13
.LBB0_1:
	movl	$1, %eax
	jmp	.LBB0_15
.LBB0_5:
	movl	%ecx, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rsi
	movq	%rsi, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %ebx
	andl	$7, %ebx
	cmpq	$56, %rsi
	jae	.LBB0_7
# %bb.6:
	xorl	%edi, %edi
	jmp	.LBB0_9
.LBB0_7:
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rdi,4)
	movups	%xmm0, 16(%rax,%rdi,4)
	movups	%xmm0, 32(%rax,%rdi,4)
	movups	%xmm0, 48(%rax,%rdi,4)
	movups	%xmm0, 64(%rax,%rdi,4)
	movups	%xmm0, 80(%rax,%rdi,4)
	movups	%xmm0, 96(%rax,%rdi,4)
	movups	%xmm0, 112(%rax,%rdi,4)
	movups	%xmm0, 128(%rax,%rdi,4)
	movups	%xmm0, 144(%rax,%rdi,4)
	movups	%xmm0, 160(%rax,%rdi,4)
	movups	%xmm0, 176(%rax,%rdi,4)
	movups	%xmm0, 192(%rax,%rdi,4)
	movups	%xmm0, 208(%rax,%rdi,4)
	movups	%xmm0, 224(%rax,%rdi,4)
	movups	%xmm0, 240(%rax,%rdi,4)
	addq	$64, %rdi
	addq	$8, %rsi
	jne	.LBB0_8
.LBB0_9:
	testq	%rbx, %rbx
	je	.LBB0_12
# %bb.10:                               # %.preheader
	leaq	(%rax,%rdi,4), %rsi
	addq	$16, %rsi
	negq	%rbx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	incq	%rbx
	jne	.LBB0_11
.LBB0_12:
	cmpq	%rcx, %rdx
	je	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_13
.LBB0_14:
	movl	%r14d, maxTlsValues(%rip)
	xorl	%eax, %eax
.LBB0_15:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pteTlsGlobalInit, .Lfunc_end0-pteTlsGlobalInit
                                        # -- End function
	.globl	pteTlsThreadInit        # -- Begin function pteTlsThreadInit
	.p2align	4, 0x90
	.type	pteTlsThreadInit,@function
pteTlsThreadInit:                       # @pteTlsThreadInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	maxTlsValues(%rip), %rdi
	shlq	$3, %rdi
	callq	malloc
	movslq	maxTlsValues(%rip), %r8
	testq	%r8, %r8
	jle	.LBB1_12
# %bb.1:
	cmpl	$4, %r8d
	jae	.LBB1_3
# %bb.2:
	xorl	%edx, %edx
	jmp	.LBB1_11
.LBB1_3:
	movq	%r8, %rdx
	andq	$-4, %rdx
	leaq	-4(%rdx), %rsi
	movq	%rsi, %rdi
	shrq	$2, %rdi
	addq	$1, %rdi
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpq	$28, %rsi
	jae	.LBB1_5
# %bb.4:
	xorl	%edi, %edi
	jmp	.LBB1_7
.LBB1_5:
	movq	%rcx, %rsi
	subq	%rdi, %rsi
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax,%rdi,8)
	movups	%xmm0, 16(%rax,%rdi,8)
	movups	%xmm0, 32(%rax,%rdi,8)
	movups	%xmm0, 48(%rax,%rdi,8)
	movups	%xmm0, 64(%rax,%rdi,8)
	movups	%xmm0, 80(%rax,%rdi,8)
	movups	%xmm0, 96(%rax,%rdi,8)
	movups	%xmm0, 112(%rax,%rdi,8)
	movups	%xmm0, 128(%rax,%rdi,8)
	movups	%xmm0, 144(%rax,%rdi,8)
	movups	%xmm0, 160(%rax,%rdi,8)
	movups	%xmm0, 176(%rax,%rdi,8)
	movups	%xmm0, 192(%rax,%rdi,8)
	movups	%xmm0, 208(%rax,%rdi,8)
	movups	%xmm0, 224(%rax,%rdi,8)
	movups	%xmm0, 240(%rax,%rdi,8)
	addq	$32, %rdi
	addq	$8, %rsi
	jne	.LBB1_6
.LBB1_7:
	testq	%rcx, %rcx
	je	.LBB1_10
# %bb.8:                                # %.preheader
	leaq	(%rax,%rdi,8), %rsi
	addq	$16, %rsi
	negq	%rcx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	incq	%rcx
	jne	.LBB1_9
.LBB1_10:
	cmpq	%r8, %rdx
	je	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rdx,8)
	addq	$1, %rdx
	cmpq	%r8, %rdx
	jl	.LBB1_11
.LBB1_12:
	popq	%rbp
	retq
.Lfunc_end1:
	.size	pteTlsThreadInit, .Lfunc_end1-pteTlsThreadInit
                                        # -- End function
	.globl	pteTlsAlloc             # -- Begin function pteTlsAlloc
	.p2align	4, 0x90
	.type	pteTlsAlloc,@function
pteTlsAlloc:                            # @pteTlsAlloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexLock
	movslq	maxTlsValues(%rip), %rax
	movl	$1, %ebx
	testq	%rax, %rax
	jle	.LBB2_5
# %bb.1:
	movq	keysUsed(%rip), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdx,%rcx,4)
	je	.LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jl	.LBB2_2
	jmp	.LBB2_5
.LBB2_3:
	movl	$1, (%rdx,%rcx,4)
	addl	$1, %ecx
	movl	%ecx, (%r14)
	xorl	%ebx, %ebx
.LBB2_5:
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	pteTlsAlloc, .Lfunc_end2-pteTlsAlloc
                                        # -- End function
	.globl	pteTlsGetValue          # -- Begin function pteTlsGetValue
	.p2align	4, 0x90
	.type	pteTlsGetValue,@function
pteTlsGetValue:                         # @pteTlsGetValue
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	movq	keysUsed(%rip), %rcx
	addl	$-1, %esi
	cmpl	$0, (%rcx,%rsi,4)
	je	.LBB3_3
# %bb.2:
	movq	(%rdi,%rsi,8), %rax
.LBB3_3:
	retq
.Lfunc_end3:
	.size	pteTlsGetValue, .Lfunc_end3-pteTlsGetValue
                                        # -- End function
	.globl	pteTlsSetValue          # -- Begin function pteTlsSetValue
	.p2align	4, 0x90
	.type	pteTlsSetValue,@function
pteTlsSetValue:                         # @pteTlsSetValue
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.2:
	addl	$-1, %esi
	movq	%rdx, (%rdi,%rsi,8)
	xorl	%eax, %eax
	retq
.LBB4_1:
	movl	$5, %eax
	retq
.Lfunc_end4:
	.size	pteTlsSetValue, .Lfunc_end4-pteTlsSetValue
                                        # -- End function
	.globl	pteTlsFree              # -- Begin function pteTlsFree
	.p2align	4, 0x90
	.type	pteTlsFree,@function
pteTlsFree:                             # @pteTlsFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpq	$0, keysUsed(%rip)
	je	.LBB5_1
# %bb.2:
	movl	%edi, %ebx
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexLock
	movq	keysUsed(%rip), %rax
	addl	$-1, %ebx
	movl	$0, (%rax,%rbx,4)
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexUnlock
	xorl	%eax, %eax
	jmp	.LBB5_3
.LBB5_1:
	movl	$2, %eax
.LBB5_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pteTlsFree, .Lfunc_end5-pteTlsFree
                                        # -- End function
	.globl	pteTlsThreadDestroy     # -- Begin function pteTlsThreadDestroy
	.p2align	4, 0x90
	.type	pteTlsThreadDestroy,@function
pteTlsThreadDestroy:                    # @pteTlsThreadDestroy
# %bb.0:
	jmp	free                    # TAILCALL
.Lfunc_end6:
	.size	pteTlsThreadDestroy, .Lfunc_end6-pteTlsThreadDestroy
                                        # -- End function
	.globl	pteTlsGlobalDestroy     # -- Begin function pteTlsGlobalDestroy
	.p2align	4, 0x90
	.type	pteTlsGlobalDestroy,@function
pteTlsGlobalDestroy:                    # @pteTlsGlobalDestroy
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexDelete
	movq	keysUsed(%rip), %rdi
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end7:
	.size	pteTlsGlobalDestroy, .Lfunc_end7-pteTlsGlobalDestroy
                                        # -- End function
	.type	globalTlsLock,@object   # @globalTlsLock
	.comm	globalTlsLock,8,8
	.type	keysUsed,@object        # @keysUsed
	.local	keysUsed
	.comm	keysUsed,8,8
	.type	maxTlsValues,@object    # @maxTlsValues
	.local	maxTlsValues
	.comm	maxTlsValues,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
