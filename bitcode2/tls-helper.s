	.text
	.file	"tls-helper.c"
	.globl	pteTlsGlobalInit        # -- Begin function pteTlsGlobalInit
	.p2align	4, 0x90
	.type	pteTlsGlobalInit,@function
pteTlsGlobalInit:                       # @pteTlsGlobalInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movl	$globalTlsLock, %edi
	callq	pte_osMutexCreate
	movslq	%ebx, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, keysUsed(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_10
# %bb.3:
	movl	%ebx, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB0_5
# %bb.4:
	xorl	%esi, %esi
	jmp	.LBB0_7
.LBB0_1:
	movl	$1, %eax
	jmp	.LBB0_11
.LBB0_5:
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 4(%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 8(%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 12(%rax,%rsi,4)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jne	.LBB0_6
.LBB0_7:
	testq	%rcx, %rcx
	je	.LBB0_10
# %bb.8:                                # %.preheader
	leaq	(%rax,%rsi,4), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rax,%rdx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_9
.LBB0_10:
	movl	%ebx, maxTlsValues(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	maxTlsValues(%rip), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB1_8
# %bb.1:
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB1_3
# %bb.2:
	xorl	%esi, %esi
	jmp	.LBB1_5
.LBB1_3:
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 8(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rax,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 24(%rax,%rsi,8)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jne	.LBB1_4
.LBB1_5:
	testq	%rcx, %rcx
	je	.LBB1_8
# %bb.6:                                # %.preheader
	leaq	(%rax,%rsi,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movq	$0, (%rdx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB1_7
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movslq	maxTlsValues(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testq	%rax, %rax
	jle	.LBB2_5
# %bb.1:
	movq	keysUsed(%rip), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%rdx,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_3
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jl	.LBB2_2
	jmp	.LBB2_5
.LBB2_3:
	movl	$1, (%rdx,%rcx,4)
	addl	$1, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB2_5:
	movq	globalTlsLock(%rip), %rdi
	callq	pte_osMutexUnlock
	movl	$42, __A_VARIABLE(%rip)
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
	movq	keysUsed(%rip), %rax
	addl	$-1, %esi
	cmpl	$0, (%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_4
# %bb.2:
	movq	(%rdi,%rsi,8), %rax
	jmp	.LBB3_5
.LBB3_4:
	xorl	%eax, %eax
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_1
# %bb.2:
	addl	$-1, %esi
	movq	%rdx, (%rdi,%rsi,8)
	xorl	%eax, %eax
	jmp	.LBB4_3
.LBB4_1:
	movl	$5, %eax
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbp
	movq	%rsp, %rbp
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
