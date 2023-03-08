	.text
	.file	"async.c"
	.globl	redisAsyncConnect       # -- Begin function redisAsyncConnect
	.p2align	4, 0x90
	.type	redisAsyncConnect,@function
redisAsyncConnect:                      # @redisAsyncConnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	redisConnectNonBlock
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	redisAsyncInitialize
	testq	%rax, %rax
	je	.LBB0_4
# %bb.2:
	movl	(%rax), %ecx
	movl	%ecx, 208(%rax)
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, 216(%rax)
	jmp	.LBB0_6
.LBB0_4:
	movq	%rbx, %rdi
	callq	redisFree
.LBB0_5:
	xorl	%eax, %eax
.LBB0_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisAsyncConnect, .Lfunc_end0-redisAsyncConnect
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisAsyncInitialize
	.type	redisAsyncInitialize,@function
redisAsyncInitialize:                   # @redisAsyncInitialize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$344, %esi              # imm = 0x158
	callq	realloc
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	%rax, %rbx
	andb	$-3, 136(%rax)
	movl	$0, 208(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 216(%rax)
	movq	$0, 232(%rax)
	movups	%xmm0, 240(%rax)
	movups	%xmm0, 256(%rax)
	movq	$0, 272(%rax)
	movups	%xmm0, 280(%rax)
	movups	%xmm0, 296(%rax)
	movups	%xmm0, 312(%rax)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movq	$callbackDict, 8(%rax)
	movq	%rax, 328(%rbx)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movups	%xmm0, 32(%rax)
	movq	$callbackDict, 8(%rax)
	movq	%rax, 336(%rbx)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%ebx, %ebx
.LBB1_3:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	redisAsyncInitialize, .Lfunc_end1-redisAsyncInitialize
                                        # -- End function
	.globl	redisAsyncConnectBind   # -- Begin function redisAsyncConnectBind
	.p2align	4, 0x90
	.type	redisAsyncConnectBind,@function
redisAsyncConnectBind:                  # @redisAsyncConnectBind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	redisConnectBindNonBlock
	movq	%rax, %rdi
	callq	redisAsyncInitialize
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:
	movl	(%rax), %ecx
	movl	%ecx, 208(%rax)
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, 216(%rax)
.LBB2_2:
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisAsyncConnectBind, .Lfunc_end2-redisAsyncConnectBind
                                        # -- End function
	.globl	redisAsyncConnectBindWithReuse # -- Begin function redisAsyncConnectBindWithReuse
	.p2align	4, 0x90
	.type	redisAsyncConnectBindWithReuse,@function
redisAsyncConnectBindWithReuse:         # @redisAsyncConnectBindWithReuse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	redisConnectBindNonBlockWithReuse
	movq	%rax, %rdi
	callq	redisAsyncInitialize
	testq	%rax, %rax
	je	.LBB3_2
# %bb.1:
	movl	(%rax), %ecx
	movl	%ecx, 208(%rax)
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, 216(%rax)
.LBB3_2:
	popq	%rbp
	retq
.Lfunc_end3:
	.size	redisAsyncConnectBindWithReuse, .Lfunc_end3-redisAsyncConnectBindWithReuse
                                        # -- End function
	.globl	redisAsyncConnectUnix   # -- Begin function redisAsyncConnectUnix
	.p2align	4, 0x90
	.type	redisAsyncConnectUnix,@function
redisAsyncConnectUnix:                  # @redisAsyncConnectUnix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	redisConnectUnixNonBlock
	testq	%rax, %rax
	je	.LBB4_5
# %bb.1:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	redisAsyncInitialize
	testq	%rax, %rax
	je	.LBB4_4
# %bb.2:
	movl	(%rax), %ecx
	movl	%ecx, 208(%rax)
	movq	%rax, %rcx
	addq	$4, %rcx
	movq	%rcx, 216(%rax)
	jmp	.LBB4_6
.LBB4_4:
	movq	%rbx, %rdi
	callq	redisFree
.LBB4_5:
	xorl	%eax, %eax
.LBB4_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	redisAsyncConnectUnix, .Lfunc_end4-redisAsyncConnectUnix
                                        # -- End function
	.globl	redisAsyncSetConnectCallback # -- Begin function redisAsyncSetConnectCallback
	.p2align	4, 0x90
	.type	redisAsyncSetConnectCallback,@function
redisAsyncSetConnectCallback:           # @redisAsyncSetConnectCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$-1, %ebx
	cmpq	$0, 288(%rdi)
	jne	.LBB5_3
# %bb.1:
	movq	%rsi, 288(%rdi)
	movq	256(%rdi), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB5_3
# %bb.2:
	movq	232(%rdi), %rdi
	callq	*%rax
.LBB5_3:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	redisAsyncSetConnectCallback, .Lfunc_end5-redisAsyncSetConnectCallback
                                        # -- End function
	.globl	redisAsyncSetDisconnectCallback # -- Begin function redisAsyncSetDisconnectCallback
	.p2align	4, 0x90
	.type	redisAsyncSetDisconnectCallback,@function
redisAsyncSetDisconnectCallback:        # @redisAsyncSetDisconnectCallback
# %bb.0:
	movl	$-1, %eax
	cmpq	$0, 280(%rdi)
	je	.LBB6_1
# %bb.2:
	retq
.LBB6_1:
	movq	%rsi, 280(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	redisAsyncSetDisconnectCallback, .Lfunc_end6-redisAsyncSetDisconnectCallback
                                        # -- End function
	.globl	redisAsyncFree          # -- Begin function redisAsyncFree
	.p2align	4, 0x90
	.type	redisAsyncFree,@function
redisAsyncFree:                         # @redisAsyncFree
# %bb.0:
	movl	136(%rdi), %eax
	movl	%eax, %ecx
	orl	$8, %ecx
	movl	%ecx, 136(%rdi)
	testb	$16, %al
	jne	.LBB7_1
# %bb.2:
	jmp	__redisAsyncFree        # TAILCALL
.LBB7_1:
	retq
.Lfunc_end7:
	.size	redisAsyncFree, .Lfunc_end7-redisAsyncFree
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __redisAsyncFree
	.type	__redisAsyncFree,@function
__redisAsyncFree:                       # @__redisAsyncFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	296(%rdi), %rbx
	testq	%rbx, %rbx
	je	.LBB8_7
# %bb.1:
	leaq	-48(%rbp), %r15
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_2 Depth=1
	movq	296(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB8_7
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rbx
	jne	.LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movq	$0, 304(%r14)
.LBB8_4:                                #   in Loop: Header=BB8_2 Depth=1
	movl	$24, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	callq	free
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_2 Depth=1
	orb	$16, 136(%r14)
	movq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	andb	$-17, 136(%r14)
	jmp	.LBB8_6
.LBB8_7:
	movq	312(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB8_14
# %bb.8:
	leaq	-48(%rbp), %r15
	jmp	.LBB8_9
	.p2align	4, 0x90
.LBB8_13:                               #   in Loop: Header=BB8_9 Depth=1
	movq	312(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB8_14
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 312(%r14)
	cmpq	320(%r14), %rbx
	jne	.LBB8_11
# %bb.10:                               #   in Loop: Header=BB8_9 Depth=1
	movq	$0, 320(%r14)
.LBB8_11:                               #   in Loop: Header=BB8_9 Depth=1
	movl	$24, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	callq	free
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	je	.LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_9 Depth=1
	orb	$16, 136(%r14)
	movq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	andb	$-17, 136(%r14)
	jmp	.LBB8_13
.LBB8_14:
	movq	328(%r14), %r15
	movl	$32, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movl	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	%rax, %r15
	addq	$24, %r15
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_15:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rcx
	testq	%rax, %rax
	jne	.LBB8_18
# %bb.16:                               #   in Loop: Header=BB8_15 Depth=1
	movslq	8(%rbx), %rcx
	addq	$1, %rcx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rax
	cmpl	16(%rax), %ecx
	jge	.LBB8_21
# %bb.17:                               #   in Loop: Header=BB8_15 Depth=1
	shlq	$3, %rcx
	addq	(%rax), %rcx
.LBB8_18:                               #   in Loop: Header=BB8_15 Depth=1
	movq	(%rcx), %rax
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB8_15
# %bb.19:                               #   in Loop: Header=BB8_15 Depth=1
	movq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movq	8(%rax), %rdx
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_15
# %bb.20:                               #   in Loop: Header=BB8_15 Depth=1
	orb	$16, 136(%r14)
	movq	16(%rdx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rcx
	andb	$-17, 136(%r14)
	movq	16(%rbx), %rax
	jmp	.LBB8_15
.LBB8_21:
	movq	%rbx, %rdi
	callq	free
	movq	328(%r14), %rdi
	callq	dictRelease
	movq	336(%r14), %r15
	movl	$32, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	%r15, (%rax)
	movl	$-1, 8(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	%rax, %r15
	addq	$24, %r15
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_22:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rcx
	testq	%rax, %rax
	jne	.LBB8_25
# %bb.23:                               #   in Loop: Header=BB8_22 Depth=1
	movslq	8(%rbx), %rcx
	addq	$1, %rcx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rax
	cmpl	16(%rax), %ecx
	jge	.LBB8_28
# %bb.24:                               #   in Loop: Header=BB8_22 Depth=1
	shlq	$3, %rcx
	addq	(%rax), %rcx
.LBB8_25:                               #   in Loop: Header=BB8_22 Depth=1
	movq	(%rcx), %rax
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB8_22
# %bb.26:                               #   in Loop: Header=BB8_22 Depth=1
	movq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movq	8(%rax), %rdx
	movq	8(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_22
# %bb.27:                               #   in Loop: Header=BB8_22 Depth=1
	orb	$16, 136(%r14)
	movq	16(%rdx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rcx
	andb	$-17, 136(%r14)
	movq	16(%rbx), %rax
	jmp	.LBB8_22
.LBB8_28:
	movq	%rbx, %rdi
	callq	free
	movq	336(%r14), %rdi
	callq	dictRelease
	movq	272(%r14), %rax
	testq	%rax, %rax
	je	.LBB8_30
# %bb.29:
	movq	232(%r14), %rdi
	callq	*%rax
.LBB8_30:
	movq	280(%r14), %rax
	testq	%rax, %rax
	je	.LBB8_36
# %bb.31:
	movl	136(%r14), %ecx
	testb	$2, %cl
	je	.LBB8_36
# %bb.32:
	testb	$8, %cl
	jne	.LBB8_33
# %bb.34:
	xorl	%ecx, %ecx
	cmpl	208(%r14), %ecx
	sbbl	%esi, %esi
	movq	%r14, %rdi
	jmp	.LBB8_35
.LBB8_33:
	movq	%r14, %rdi
	xorl	%esi, %esi
.LBB8_35:
	callq	*%rax
.LBB8_36:
	movq	%r14, %rdi
	callq	redisFree
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	__redisAsyncFree, .Lfunc_end8-__redisAsyncFree
                                        # -- End function
	.globl	redisAsyncDisconnect    # -- Begin function redisAsyncDisconnect
	.p2align	4, 0x90
	.type	redisAsyncDisconnect,@function
redisAsyncDisconnect:                   # @redisAsyncDisconnect
# %bb.0:
	movl	136(%rdi), %ecx
	movl	%ecx, %eax
	orl	$4, %eax
	movl	%eax, 136(%rdi)
	testb	$16, %cl
	jne	.LBB9_5
# %bb.1:
	cmpq	$0, 296(%rdi)
	je	.LBB9_2
.LBB9_5:
	retq
.LBB9_2:
	movl	(%rdi), %ecx
	movl	%ecx, 208(%rdi)
	leaq	4(%rdi), %rdx
	movq	%rdx, 216(%rdi)
	testl	%ecx, %ecx
	je	.LBB9_4
# %bb.3:
	movl	%eax, 136(%rdi)
.LBB9_4:
	jmp	__redisAsyncFree        # TAILCALL
.Lfunc_end9:
	.size	redisAsyncDisconnect, .Lfunc_end9-redisAsyncDisconnect
                                        # -- End function
	.globl	redisProcessCallbacks   # -- Begin function redisProcessCallbacks
	.p2align	4, 0x90
	.type	redisProcessCallbacks,@function
redisProcessCallbacks:                  # @redisProcessCallbacks
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r14
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -48(%rbp)
	leaq	-48(%rbp), %rsi
	callq	redisGetReply
	testl	%eax, %eax
	je	.LBB10_1
# %bb.74:
	testq	%r14, %r14
	je	.LBB10_75
.LBB10_73:
	movl	(%r14), %eax
	movl	%eax, 208(%r14)
	leaq	4(%r14), %rcx
	movq	%rcx, 216(%r14)
	testl	%eax, %eax
	jne	.LBB10_76
	jmp	.LBB10_28
.LBB10_1:
	leaq	-96(%rbp), %r12
	leaq	-48(%rbp), %r13
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_71:                              #   in Loop: Header=BB10_2 Depth=1
	movq	152(%r14), %rax
	movq	544(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*32(%rax)
.LBB10_72:                              #   in Loop: Header=BB10_2 Depth=1
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	redisGetReply
	testl	%eax, %eax
	jne	.LBB10_73
.LBB10_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_40 Depth 2
                                        #     Child Loop BB10_47 Depth 2
	movq	-48(%rbp), %r15
	testq	%r15, %r15
	je	.LBB10_3
# %bb.22:                               #   in Loop: Header=BB10_2 Depth=1
	movq	296(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB10_25
# %bb.23:                               #   in Loop: Header=BB10_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rbx
	jne	.LBB10_68
# %bb.24:                               #   in Loop: Header=BB10_2 Depth=1
	movq	$0, 304(%r14)
.LBB10_68:                              #   in Loop: Header=BB10_2 Depth=1
	movl	$24, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB10_69
	.p2align	4, 0x90
.LBB10_25:                              #   in Loop: Header=BB10_2 Depth=1
	movl	(%r15), %eax
	cmpl	$6, %eax
	je	.LBB10_26
# %bb.32:                               #   in Loop: Header=BB10_2 Depth=1
	movl	136(%r14), %ecx
	testb	$96, %cl
	je	.LBB10_79
# %bb.33:                               #   in Loop: Header=BB10_2 Depth=1
	testb	$32, %cl
	je	.LBB10_69
# %bb.34:                               #   in Loop: Header=BB10_2 Depth=1
	cmpl	$2, %eax
	jne	.LBB10_65
# %bb.35:                               #   in Loop: Header=BB10_2 Depth=1
	cmpq	$1, 32(%r15)
	jbe	.LBB10_80
# %bb.36:                               #   in Loop: Header=BB10_2 Depth=1
	movq	40(%r15), %rax
	movq	(%rax), %rax
	cmpl	$1, (%rax)
	jne	.LBB10_81
# %bb.37:                               #   in Loop: Header=BB10_2 Depth=1
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movsbq	(%rax), %rbx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %r13d
	cmpb	$1, %al
	cmovnel	%ebx, %r13d
	xorl	%eax, %eax
	cmpl	$112, %r13d
	sete	%dl
	movq	40(%r15), %rcx
	movq	8(%rcx), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB10_82
# %bb.38:                               #   in Loop: Header=BB10_2 Depth=1
	movb	%dl, %al
	movq	328(%r14,%rax,8), %rbx
	movq	16(%rcx), %rsi
	movq	24(%rcx), %rdi
	callq	sdsnewlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpq	$0, 16(%rbx)
	je	.LBB10_64
# %bb.39:                               #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rbx), %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%rbx), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %r12
	jmp	.LBB10_40
	.p2align	4, 0x90
.LBB10_50:                              #   in Loop: Header=BB10_40 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, (%r12)
	je	.LBB10_43
.LBB10_51:                              #   in Loop: Header=BB10_40 Depth=2
	movq	16(%r12), %r12
.LBB10_40:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%r12, %r12
	je	.LBB10_64
# %bb.41:                               #   in Loop: Header=BB10_40 Depth=2
	movq	8(%rbx), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_50
# %bb.42:                               #   in Loop: Header=BB10_40 Depth=2
	movq	40(%rbx), %rdi
	movq	(%r12), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*%rax
	testl	%eax, %eax
	je	.LBB10_51
.LBB10_43:                              #   in Loop: Header=BB10_2 Depth=1
	xorl	%eax, %eax
	cmpl	$112, %r13d
	sete	%al
	movq	%rax, %r13
	movq	8(%r12), %rsi
	movl	$24, %edx
	leaq	-96(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi         # 8-byte Reload
	addq	%r13, %rdi
	movl	$.L.str.7, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB10_64
# %bb.44:                               #   in Loop: Header=BB10_2 Depth=1
	cmpq	$0, 16(%rbx)
	je	.LBB10_61
# %bb.45:                               #   in Loop: Header=BB10_2 Depth=1
	movq	8(%rbx), %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%rbx), %eax
	movq	(%rbx), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB10_61
# %bb.46:                               # %.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB10_47
.LBB10_65:                              #   in Loop: Header=BB10_2 Depth=1
	movq	312(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB10_69
# %bb.66:                               #   in Loop: Header=BB10_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 312(%r14)
	cmpq	320(%r14), %rbx
	jne	.LBB10_68
# %bb.67:                               #   in Loop: Header=BB10_2 Depth=1
	movq	$0, 320(%r14)
	jmp	.LBB10_68
.LBB10_52:                              #   in Loop: Header=BB10_47 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, (%r12)
	je	.LBB10_53
.LBB10_49:                              #   in Loop: Header=BB10_47 Depth=2
	movq	16(%r12), %rax
	movq	%r12, %r13
	testq	%rax, %rax
	je	.LBB10_61
.LBB10_47:                              #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r12
	movq	8(%rbx), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_52
# %bb.48:                               #   in Loop: Header=BB10_47 Depth=2
	movq	40(%rbx), %rdi
	movq	(%r12), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*%rax
	testl	%eax, %eax
	je	.LBB10_49
.LBB10_53:                              #   in Loop: Header=BB10_2 Depth=1
	movq	16(%r12), %rax
	testq	%r13, %r13
	je	.LBB10_55
# %bb.54:                               #   in Loop: Header=BB10_2 Depth=1
	addq	$16, %r13
	jmp	.LBB10_56
.LBB10_55:                              #   in Loop: Header=BB10_2 Depth=1
	movq	-64(%rbp), %r13         # 8-byte Reload
	shlq	$3, %r13
	addq	(%rbx), %r13
.LBB10_56:                              #   in Loop: Header=BB10_2 Depth=1
	movq	%rax, (%r13)
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB10_58
# %bb.57:                               #   in Loop: Header=BB10_2 Depth=1
	movq	40(%rbx), %rdi
	movq	(%r12), %rsi
	callq	*%rax
	movq	8(%rbx), %rcx
.LBB10_58:                              #   in Loop: Header=BB10_2 Depth=1
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB10_60
# %bb.59:                               #   in Loop: Header=BB10_2 Depth=1
	movq	40(%rbx), %rdi
	movq	8(%r12), %rsi
	callq	*%rax
.LBB10_60:                              #   in Loop: Header=BB10_2 Depth=1
	movq	%r12, %rdi
	callq	free
	addq	$-1, 32(%rbx)
.LBB10_61:                              #   in Loop: Header=BB10_2 Depth=1
	movq	40(%r15), %rax
	movq	16(%rax), %rax
	cmpl	$3, (%rax)
	jne	.LBB10_83
# %bb.62:                               #   in Loop: Header=BB10_2 Depth=1
	cmpq	$0, 8(%rax)
	jne	.LBB10_64
# %bb.63:                               #   in Loop: Header=BB10_2 Depth=1
	andb	$-33, 136(%r14)
.LBB10_64:                              #   in Loop: Header=BB10_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	leaq	-96(%rbp), %r12
	leaq	-48(%rbp), %r13
	.p2align	4, 0x90
.LBB10_69:                              #   in Loop: Header=BB10_2 Depth=1
	movq	-88(%rbp), %rax
	testq	%rax, %rax
	je	.LBB10_71
# %bb.70:                               #   in Loop: Header=BB10_2 Depth=1
	movq	-48(%rbp), %rsi
	orl	$16, 136(%r14)
	movq	-80(%rbp), %rdx
	movq	%r14, %rdi
	callq	*%rax
	andb	$-17, 136(%r14)
	movq	152(%r14), %rax
	movq	544(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*32(%rax)
	testb	$8, 136(%r14)
	je	.LBB10_72
	jmp	.LBB10_77
.LBB10_75:
	movl	208, %eax
	testl	%eax, %eax
	je	.LBB10_28
.LBB10_76:
	orb	$4, 136(%r14)
	jmp	.LBB10_77
.LBB10_3:
	movl	136(%r14), %eax
	testb	$4, %al
	je	.LBB10_15
# %bb.4:
	movq	144(%r14), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB10_12
# %bb.5:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI10_0(,%rsi,8)
.LBB10_6:
	shrq	$3, %rcx
	jmp	.LBB10_11
.LBB10_26:
	movl	$2, (%r14)
	leaq	4(%r14), %rbx
	movq	24(%r15), %rcx
	movl	$128, %esi
	movl	$.L.str, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movq	152(%r14), %rax
	movq	544(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*32(%rax)
	movl	(%r14), %eax
	movl	%eax, 208(%r14)
	movq	%rbx, 216(%r14)
	testl	%eax, %eax
	jne	.LBB10_76
.LBB10_28:
	movq	296(%r14), %rdi
	testq	%rdi, %rdi
	jne	.LBB10_29
.LBB10_77:
	movq	%r14, %rdi
	callq	__redisAsyncFree
.LBB10_78:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_8:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB10_11
.LBB10_10:
	movq	-17(%rdx), %rcx
	jmp	.LBB10_11
.LBB10_7:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB10_11
.LBB10_9:
	movl	-9(%rdx), %ecx
.LBB10_11:
	testq	%rcx, %rcx
	jne	.LBB10_15
.LBB10_12:
	cmpq	$0, 296(%r14)
	je	.LBB10_13
.LBB10_15:
	testb	$64, %al
	je	.LBB10_78
# %bb.16:
	movl	$24, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB10_78
# %bb.17:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%rbx)
	cmpq	$0, 296(%r14)
	jne	.LBB10_19
# %bb.18:
	movq	%rbx, 296(%r14)
.LBB10_19:
	movq	304(%r14), %rax
	testq	%rax, %rax
	je	.LBB10_21
# %bb.20:
	movq	%rbx, (%rax)
.LBB10_21:
	movq	%rbx, 304(%r14)
	jmp	.LBB10_78
.LBB10_13:
	movl	(%r14), %ecx
	movl	%ecx, 208(%r14)
	leaq	4(%r14), %rdx
	movq	%rdx, 216(%r14)
	testl	%ecx, %ecx
	je	.LBB10_77
# %bb.14:
	orl	$4, %eax
	movl	%eax, 136(%r14)
	jmp	.LBB10_77
.LBB10_79:
	movl	$.L.str.1, %edi
	movl	$.L__func__.redisProcessCallbacks, %edx
	movl	$.L.str.2, %ecx
	movl	$463, %esi              # imm = 0x1CF
	callq	__assert_func
.LBB10_80:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.4, %ecx
	movl	$375, %esi              # imm = 0x177
	callq	__assert_func
.LBB10_81:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.5, %ecx
	movl	$376, %esi              # imm = 0x178
	callq	__assert_func
.LBB10_82:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.6, %ecx
	movl	$386, %esi              # imm = 0x182
	callq	__assert_func
.LBB10_83:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.8, %ecx
	movl	$398, %esi              # imm = 0x18E
	callq	__assert_func
.LBB10_29:
	movq	(%rdi), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rdi
	jne	.LBB10_31
# %bb.30:
	movq	$0, 304(%r14)
.LBB10_31:
	callq	free
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end10:
	.size	redisProcessCallbacks, .Lfunc_end10-redisProcessCallbacks
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_6
	.quad	.LBB10_7
	.quad	.LBB10_8
	.quad	.LBB10_9
	.quad	.LBB10_10
                                        # -- End function
	.text
	.globl	redisAsyncHandleRead    # -- Begin function redisAsyncHandleRead
	.p2align	4, 0x90
	.type	redisAsyncHandleRead,@function
redisAsyncHandleRead:                   # @redisAsyncHandleRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	testb	$2, 136(%rdi)
	jne	.LBB11_13
# %bb.1:
	movq	%rbx, %rdi
	callq	redisCheckSocketError
	cmpl	$-1, %eax
	je	.LBB11_2
# %bb.10:
	orb	$2, 136(%rbx)
	movq	288(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_12
# %bb.11:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*%rax
	jmp	.LBB11_12
.LBB11_2:
	callq	__errno
	cmpl	$119, (%rax)
	jne	.LBB11_3
.LBB11_12:
	testb	$2, 136(%rbx)
	jne	.LBB11_13
# %bb.19:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB11_13:
	movq	%rbx, %rdi
	callq	redisBufferRead
	cmpl	$-1, %eax
	je	.LBB11_5
# %bb.14:
	movq	240(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_16
# %bb.15:
	movq	232(%rbx), %rdi
	callq	*%rax
.LBB11_16:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	redisProcessCallbacks   # TAILCALL
.LBB11_3:
	movq	288(%rbx), %rax
	testq	%rax, %rax
	je	.LBB11_5
# %bb.4:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	*%rax
.LBB11_5:
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	testl	%eax, %eax
	je	.LBB11_6
# %bb.17:
	orb	$4, 136(%rbx)
	jmp	.LBB11_18
.LBB11_6:
	movq	296(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB11_7
.LBB11_18:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	__redisAsyncFree        # TAILCALL
.LBB11_7:
	movq	(%rdi), %rax
	movq	%rax, 296(%rbx)
	cmpq	304(%rbx), %rdi
	jne	.LBB11_9
# %bb.8:
	movq	$0, 304(%rbx)
.LBB11_9:
	callq	free
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end11:
	.size	redisAsyncHandleRead, .Lfunc_end11-redisAsyncHandleRead
                                        # -- End function
	.globl	redisAsyncHandleWrite   # -- Begin function redisAsyncHandleWrite
	.p2align	4, 0x90
	.type	redisAsyncHandleWrite,@function
redisAsyncHandleWrite:                  # @redisAsyncHandleWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$0, -12(%rbp)
	testb	$2, 136(%rdi)
	jne	.LBB12_13
# %bb.1:
	movq	%rbx, %rdi
	callq	redisCheckSocketError
	cmpl	$-1, %eax
	je	.LBB12_2
# %bb.10:
	orb	$2, 136(%rbx)
	movq	288(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_12
# %bb.11:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*%rax
	jmp	.LBB12_12
.LBB12_2:
	callq	__errno
	cmpl	$119, (%rax)
	jne	.LBB12_3
.LBB12_12:
	testb	$2, 136(%rbx)
	je	.LBB12_23
.LBB12_13:
	leaq	-12(%rbp), %rsi
	movq	%rbx, %rdi
	callq	redisBufferWrite
	cmpl	$-1, %eax
	je	.LBB12_5
# %bb.14:
	cmpl	$0, -12(%rbp)
	je	.LBB12_15
# %bb.18:
	movq	264(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_21
.LBB12_20:
	movq	232(%rbx), %rdi
	callq	*%rax
.LBB12_21:
	movq	240(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_23
# %bb.22:
	movq	232(%rbx), %rdi
	callq	*%rax
	jmp	.LBB12_23
.LBB12_15:
	movq	256(%rbx), %rax
	testq	%rax, %rax
	jne	.LBB12_20
	jmp	.LBB12_21
.LBB12_3:
	movq	288(%rbx), %rax
	testq	%rax, %rax
	je	.LBB12_5
# %bb.4:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	*%rax
.LBB12_5:
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	testl	%eax, %eax
	je	.LBB12_6
# %bb.16:
	orb	$4, 136(%rbx)
	jmp	.LBB12_17
.LBB12_6:
	movq	296(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB12_7
.LBB12_17:
	movq	%rbx, %rdi
	callq	__redisAsyncFree
.LBB12_23:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB12_7:
	movq	(%rdi), %rax
	movq	%rax, 296(%rbx)
	cmpq	304(%rbx), %rdi
	jne	.LBB12_9
# %bb.8:
	movq	$0, 304(%rbx)
.LBB12_9:
	callq	free
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end12:
	.size	redisAsyncHandleWrite, .Lfunc_end12-redisAsyncHandleWrite
                                        # -- End function
	.globl	redisvAsyncCommand      # -- Begin function redisvAsyncCommand
	.p2align	4, 0x90
	.type	redisvAsyncCommand,@function
redisvAsyncCommand:                     # @redisvAsyncCommand
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
	leaq	-32(%rbp), %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	redisvFormatCommand
	testl	%eax, %eax
	js	.LBB13_1
# %bb.2:
	movq	-32(%rbp), %rcx
	movslq	%eax, %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__redisAsyncCommand
	movl	%eax, %ebx
	movq	-32(%rbp), %rdi
	callq	free
	jmp	.LBB13_3
.LBB13_1:
	movl	$-1, %ebx
.LBB13_3:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	redisvAsyncCommand, .Lfunc_end13-redisvAsyncCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __redisAsyncCommand
	.type	__redisAsyncCommand,@function
__redisAsyncCommand:                    # @__redisAsyncCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	$-1, %ebx
	testb	$12, 136(%rdi)
	jne	.LBB14_33
# %bb.1:
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdi, %r13
	movq	%rsi, -88(%rbp)
	movq	%rdx, -80(%rbp)
	cmpb	$36, (%rcx)
	movq	%rcx, %r15
	je	.LBB14_3
# %bb.2:
	movq	%r12, %rdi
	movl	$36, %esi
	callq	strchr
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB14_5
.LBB14_3:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r13, -48(%rbp)         # 8-byte Spill
	leaq	1(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB14_4
# %bb.6:
	movq	%rax, %r13
	movslq	%r14d, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	4(%r13,%rax), %r15b
	movsbq	2(%r13), %rbx
	callq	__locale_ctype_ptr
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	leal	32(%rbx), %r12d
	cmpb	$1, %al
	cmovnel	%ebx, %r12d
	xorl	%eax, %eax
	cmpl	$112, %r12d
	sete	%al
	leaq	(%rax,%r13), %r14
	addq	$2, %r14
	cmpb	$36, %r15b
	jne	.LBB14_14
# %bb.7:
	movl	$.L.str.10, %esi
	movl	$11, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB14_8
.LBB14_14:
	movl	$.L.str.11, %esi
	movl	$13, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	testl	%eax, %eax
	je	.LBB14_15
# %bb.16:
	movl	$.L.str.12, %esi
	movl	$9, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	136(%rdx), %ecx
	testl	%eax, %eax
	je	.LBB14_17
# %bb.24:
	movl	$24, %edi
	testb	$32, %cl
	je	.LBB14_18
# %bb.25:
	callq	malloc
	testq	%rax, %rax
	je	.LBB14_31
# %bb.26:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%rbx)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	$0, 312(%rcx)
	jne	.LBB14_28
# %bb.27:
	movq	%rbx, 312(%rcx)
.LBB14_28:
	movq	320(%rcx), %rax
	testq	%rax, %rax
	je	.LBB14_30
# %bb.29:
	movq	%rbx, (%rax)
.LBB14_30:
	movq	%rbx, 320(%rcx)
	jmp	.LBB14_31
.LBB14_15:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testb	$32, 136(%rax)
	movl	$-1, %ebx
	jne	.LBB14_31
	jmp	.LBB14_33
.LBB14_17:
	orl	$64, %ecx
	movl	%ecx, 136(%rdx)
	movl	$24, %edi
.LBB14_18:
	callq	malloc
	testq	%rax, %rax
	je	.LBB14_31
# %bb.19:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%rbx)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	$0, 296(%rcx)
	jne	.LBB14_21
# %bb.20:
	movq	%rbx, 296(%rcx)
.LBB14_21:
	movq	304(%rcx), %rax
	testq	%rax, %rax
	je	.LBB14_23
# %bb.22:
	movq	%rbx, (%rax)
.LBB14_23:
	movq	%rbx, 304(%rcx)
.LBB14_31:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	__redisAppendCommand
	movq	256(%r14), %rax
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB14_33
# %bb.32:
	movq	232(%r14), %rdi
	callq	*%rax
.LBB14_33:
	movl	%ebx, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_8:
	xorl	%eax, %eax
	cmpl	$112, %r12d
	sete	%al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	orb	$32, 136(%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %r15
	addq	$4, %r15
	leaq	328(,%rax,8), %r13
	leaq	-96(%rbp), %r12
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	cmpb	$36, (%r15)
	je	.LBB14_11
# %bb.10:                               #   in Loop: Header=BB14_9 Depth=1
	movq	%r15, %rdi
	movl	$36, %esi
	callq	strchr
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB14_31
.LBB14_11:                              #   in Loop: Header=BB14_9 Depth=1
	leaq	1(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB14_4
# %bb.12:                               #   in Loop: Header=BB14_9 Depth=1
	movslq	%ebx, %rsi
	leaq	(%rax,%rsi), %r15
	addq	$4, %r15
	addq	$2, %rax
	movq	%rax, %rdi
	callq	sdsnewlen
	movq	%rax, %r14
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r13), %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	dictReplace
	testl	%eax, %eax
	jne	.LBB14_9
# %bb.13:                               #   in Loop: Header=BB14_9 Depth=1
	movq	%r14, %rdi
	callq	sdsfree
	jmp	.LBB14_9
.LBB14_4:
	movl	$.L.str.1, %edi
	movl	$.L__func__.nextArgument, %edx
	movl	$.L.str.13, %ecx
	movl	$575, %esi              # imm = 0x23F
	callq	__assert_func
.LBB14_5:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncCommand, %edx
	movl	$.L.str.9, %ecx
	movl	$602, %esi              # imm = 0x25A
	callq	__assert_func
.Lfunc_end14:
	.size	__redisAsyncCommand, .Lfunc_end14-__redisAsyncCommand
                                        # -- End function
	.globl	redisAsyncCommand       # -- Begin function redisAsyncCommand
	.p2align	4, 0x90
	.type	redisAsyncCommand,@function
redisAsyncCommand:                      # @redisAsyncCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$216, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB15_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB15_2:
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430240, %rax     # imm = 0x3000000020
	movq	%rax, -64(%rbp)
	leaq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rdx
	movq	%rcx, %rsi
	callq	redisvFormatCommand
	testl	%eax, %eax
	js	.LBB15_3
# %bb.4:
	movq	-32(%rbp), %rcx
	movslq	%eax, %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__redisAsyncCommand
	movl	%eax, %ebx
	movq	-32(%rbp), %rdi
	callq	free
	jmp	.LBB15_5
.LBB15_3:
	movl	$-1, %ebx
.LBB15_5:
	movl	%ebx, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	redisAsyncCommand, .Lfunc_end15-redisAsyncCommand
                                        # -- End function
	.globl	redisAsyncCommandArgv   # -- Begin function redisAsyncCommandArgv
	.p2align	4, 0x90
	.type	redisAsyncCommandArgv,@function
redisAsyncCommandArgv:                  # @redisAsyncCommandArgv
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
	leaq	-32(%rbp), %rdi
	movl	%ecx, %esi
	movq	%r8, %rdx
	movq	%r9, %rcx
	callq	redisFormatSdsCommandArgv
	movq	-32(%rbp), %rcx
	movslq	%eax, %r8
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	__redisAsyncCommand
	movl	%eax, %ebx
	movq	-32(%rbp), %rdi
	callq	sdsfree
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	redisAsyncCommandArgv, .Lfunc_end16-redisAsyncCommandArgv
                                        # -- End function
	.globl	redisAsyncFormattedCommand # -- Begin function redisAsyncFormattedCommand
	.p2align	4, 0x90
	.type	redisAsyncFormattedCommand,@function
redisAsyncFormattedCommand:             # @redisAsyncFormattedCommand
# %bb.0:
	jmp	__redisAsyncCommand     # TAILCALL
.Lfunc_end17:
	.size	redisAsyncFormattedCommand, .Lfunc_end17-redisAsyncFormattedCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackHash
	.type	callbackHash,@function
callbackHash:                           # @callbackHash
# %bb.0:
	movzbl	-1(%rdi), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	movl	$5381, %eax             # imm = 0x1505
	cmpb	$4, %dl
	ja	.LBB18_15
# %bb.1:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI18_0(,%rdx,8)
.LBB18_2:
	shrq	$3, %rcx
	testl	%ecx, %ecx
	jne	.LBB18_8
	jmp	.LBB18_15
.LBB18_3:
	movzbl	-3(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB18_8
	jmp	.LBB18_15
.LBB18_4:
	movzwl	-5(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB18_8
	jmp	.LBB18_15
.LBB18_5:
	movl	-9(%rdi), %ecx
	testl	%ecx, %ecx
	jne	.LBB18_8
	jmp	.LBB18_15
.LBB18_6:
	movq	-17(%rdi), %rcx
	testl	%ecx, %ecx
	je	.LBB18_15
.LBB18_8:
	leal	-1(%rcx), %eax
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpl	$3, %eax
	jae	.LBB18_10
# %bb.9:
	movl	$5381, %eax             # imm = 0x1505
	jmp	.LBB18_12
.LBB18_10:
	movl	%r8d, %esi
	subl	%ecx, %esi
	movl	$5381, %eax             # imm = 0x1505
	.p2align	4, 0x90
.LBB18_11:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	1(%rdi), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	2(%rdi), %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	3(%rdi), %eax
	addq	$4, %rdi
	addl	%edx, %eax
	addl	$4, %esi
	jne	.LBB18_11
.LBB18_12:
	testl	%r8d, %r8d
	je	.LBB18_15
# %bb.13:                               # %.preheader
	andl	$3, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB18_14:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shll	$5, %esi
	addl	%eax, %esi
	movzbl	(%rdi,%rdx), %eax
	addl	%esi, %eax
	addq	$1, %rdx
	cmpl	%edx, %ecx
	jne	.LBB18_14
.LBB18_15:
	retq
.Lfunc_end18:
	.size	callbackHash, .Lfunc_end18-callbackHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_4
	.quad	.LBB18_5
	.quad	.LBB18_6
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function callbackValDup
	.type	callbackValDup,@function
callbackValDup:                         # @callbackValDup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rbx
	movl	$24, %edx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	callbackValDup, .Lfunc_end19-callbackValDup
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackKeyCompare
	.type	callbackKeyCompare,@function
callbackKeyCompare:                     # @callbackKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rsi), %r8d
	movl	%r8d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB20_1
# %bb.2:
	movl	%r8d, %eax
	andl	$7, %eax
	jmpq	*.LJTI20_0(,%rax,8)
.LBB20_3:
	shrq	$3, %r8
	jmp	.LBB20_8
.LBB20_1:
	xorl	%r8d, %r8d
	jmp	.LBB20_8
.LBB20_4:
	movzbl	-3(%rsi), %r8d
	jmp	.LBB20_8
.LBB20_5:
	movzwl	-5(%rsi), %r8d
	jmp	.LBB20_8
.LBB20_6:
	movl	-9(%rsi), %r8d
	jmp	.LBB20_8
.LBB20_7:
	movq	-17(%rsi), %r8
.LBB20_8:
	movzbl	-1(%rdx), %edi
	movl	%edi, %ecx
	andb	$7, %cl
	xorl	%eax, %eax
	cmpb	$4, %cl
	ja	.LBB20_9
# %bb.10:
	movl	%edi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI20_1(,%rcx,8)
.LBB20_11:
	shrq	$3, %rdi
	cmpl	%edi, %r8d
	je	.LBB20_17
	jmp	.LBB20_18
.LBB20_9:
	xorl	%edi, %edi
	cmpl	%edi, %r8d
	je	.LBB20_17
	jmp	.LBB20_18
.LBB20_12:
	movzbl	-3(%rdx), %edi
	cmpl	%edi, %r8d
	je	.LBB20_17
	jmp	.LBB20_18
.LBB20_13:
	movzwl	-5(%rdx), %edi
	cmpl	%edi, %r8d
	je	.LBB20_17
	jmp	.LBB20_18
.LBB20_14:
	movl	-9(%rdx), %edi
	cmpl	%edi, %r8d
	je	.LBB20_17
	jmp	.LBB20_18
.LBB20_15:
	movq	-17(%rdx), %rdi
	cmpl	%edi, %r8d
	jne	.LBB20_18
.LBB20_17:
	movslq	%r8d, %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB20_18:
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end20:
	.size	callbackKeyCompare, .Lfunc_end20-callbackKeyCompare
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI20_0:
	.quad	.LBB20_3
	.quad	.LBB20_4
	.quad	.LBB20_5
	.quad	.LBB20_6
	.quad	.LBB20_7
.LJTI20_1:
	.quad	.LBB20_11
	.quad	.LBB20_12
	.quad	.LBB20_13
	.quad	.LBB20_14
	.quad	.LBB20_15
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function callbackKeyDestructor
	.type	callbackKeyDestructor,@function
callbackKeyDestructor:                  # @callbackKeyDestructor
# %bb.0:
	movq	%rsi, %rdi
	jmp	sdsfree                 # TAILCALL
.Lfunc_end21:
	.size	callbackKeyDestructor, .Lfunc_end21-callbackKeyDestructor
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackValDestructor
	.type	callbackValDestructor,@function
callbackValDestructor:                  # @callbackValDestructor
# %bb.0:
	movq	%rsi, %rdi
	jmp	free                    # TAILCALL
.Lfunc_end22:
	.size	callbackValDestructor, .Lfunc_end22-callbackValDestructor
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dictRelease
	.type	dictRelease,@function
dictRelease:                            # @dictRelease
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB23_11
# %bb.1:
	movq	32(%r14), %rax
	xorl	%r15d, %r15d
	jmp	.LBB23_2
	.p2align	4, 0x90
.LBB23_9:                               #   in Loop: Header=BB23_2 Depth=1
	movq	16(%r14), %rcx
.LBB23_10:                              #   in Loop: Header=BB23_2 Depth=1
	addq	$1, %r15
	cmpq	%rcx, %r15
	jae	.LBB23_11
.LBB23_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB23_4 Depth 2
	testq	%rax, %rax
	je	.LBB23_11
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	movq	(%r14), %rdx
	movq	(%rdx,%r15,8), %rbx
	testq	%rbx, %rbx
	jne	.LBB23_4
	jmp	.LBB23_10
	.p2align	4, 0x90
.LBB23_8:                               #   in Loop: Header=BB23_4 Depth=2
	movq	%rbx, %rdi
	callq	free
	movq	32(%r14), %rax
	addq	$-1, %rax
	movq	%rax, 32(%r14)
	movq	%r12, %rbx
	testq	%r12, %r12
	je	.LBB23_9
.LBB23_4:                               #   Parent Loop BB23_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r12
	movq	8(%r14), %rcx
	movq	32(%rcx), %rax
	testq	%rax, %rax
	je	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_4 Depth=2
	movq	40(%r14), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movq	8(%r14), %rcx
.LBB23_6:                               #   in Loop: Header=BB23_4 Depth=2
	movq	40(%rcx), %rax
	testq	%rax, %rax
	je	.LBB23_8
# %bb.7:                                #   in Loop: Header=BB23_4 Depth=2
	movq	40(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
	jmp	.LBB23_8
.LBB23_11:
	movq	(%r14), %rdi
	callq	free
	movq	$0, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r14)
	movq	$0, 32(%r14)
	movq	%r14, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	free                    # TAILCALL
.Lfunc_end23:
	.size	dictRelease, .Lfunc_end23-dictRelease
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dictReplace
	.type	dictReplace,@function
dictReplace:                            # @dictReplace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	16(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB24_1
# %bb.2:
	cmpq	%rsi, 32(%r13)
	jne	.LBB24_5
# %bb.3:
	addq	%rsi, %rsi
	jmp	.LBB24_4
.LBB24_1:
	movl	$4, %esi
.LBB24_4:
	movq	%r13, %rdi
	callq	dictExpand
	cmpl	$1, %eax
	je	.LBB24_9
.LBB24_5:
	movq	8(%r13), %rax
	movq	%r15, %rdi
	callq	*(%rax)
	movl	%eax, %r12d
	andl	24(%r13), %r12d
	movq	(%r13), %rax
	movq	(%rax,%r12,8), %rbx
	jmp	.LBB24_6
	.p2align	4, 0x90
.LBB24_14:                              #   in Loop: Header=BB24_6 Depth=1
	cmpq	%r15, (%rbx)
	je	.LBB24_9
.LBB24_15:                              #   in Loop: Header=BB24_6 Depth=1
	movq	16(%rbx), %rbx
.LBB24_6:                               # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB24_16
# %bb.7:                                #   in Loop: Header=BB24_6 Depth=1
	movq	8(%r13), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB24_14
# %bb.8:                                #   in Loop: Header=BB24_6 Depth=1
	movq	40(%r13), %rdi
	movq	(%rbx), %rdx
	movq	%r15, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB24_15
	jmp	.LBB24_9
.LBB24_16:
	cmpl	$-1, %r12d
	je	.LBB24_9
# %bb.17:
	movl	$24, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	(%r13), %rax
	movslq	%r12d, %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, 16(%rbx)
	movq	%rbx, (%rax,%rcx,8)
	movq	8(%r13), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB24_19
# %bb.18:
	movq	40(%r13), %rdi
	movq	%r15, %rsi
	callq	*%rcx
	movq	%rax, (%rbx)
	movq	8(%r13), %rax
	jmp	.LBB24_20
.LBB24_9:
	cmpq	$0, 16(%r13)
	je	.LBB24_25
# %bb.10:
	movq	8(%r13), %rax
	movq	%r15, %rdi
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%r13), %eax
	movq	(%r13), %rcx
	movq	(%rcx,%rax,8), %rbx
	jmp	.LBB24_11
	.p2align	4, 0x90
.LBB24_23:                              #   in Loop: Header=BB24_11 Depth=1
	cmpq	%r15, (%rbx)
	je	.LBB24_26
.LBB24_24:                              #   in Loop: Header=BB24_11 Depth=1
	movq	16(%rbx), %rbx
.LBB24_11:                              # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB24_25
# %bb.12:                               #   in Loop: Header=BB24_11 Depth=1
	movq	8(%r13), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB24_23
# %bb.13:                               #   in Loop: Header=BB24_11 Depth=1
	movq	40(%r13), %rdi
	movq	(%rbx), %rdx
	movq	%r15, %rsi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB24_24
	jmp	.LBB24_26
.LBB24_25:
	xorl	%ebx, %ebx
.LBB24_26:
	movq	8(%rbx), %r15
	movq	8(%r13), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB24_28
# %bb.27:
	movq	40(%r13), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
	movq	8(%r13), %rax
.LBB24_28:
	movq	%r14, 8(%rbx)
	movq	40(%rax), %rax
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB24_30
# %bb.29:
	movq	40(%r13), %rdi
	movq	%r15, %rsi
	callq	*%rax
	jmp	.LBB24_30
.LBB24_19:
	movq	%r15, (%rbx)
.LBB24_20:
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB24_22
# %bb.21:
	movq	40(%r13), %rdi
	movq	%r14, %rsi
	callq	*%rcx
	movq	%rax, %r14
.LBB24_22:
	movq	%r14, 8(%rbx)
	addq	$1, 32(%r13)
	movl	$1, %r14d
.LBB24_30:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	dictReplace, .Lfunc_end24-dictReplace
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function dictExpand
	.type	dictExpand,@function
dictExpand:                             # @dictExpand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	movabsq	$9223372036854775806, %rcx # imm = 0x7FFFFFFFFFFFFFFE
	cmpq	%rcx, %rsi
	jbe	.LBB25_2
# %bb.1:
	orq	$1, %rcx
	jmp	.LBB25_4
.LBB25_2:                               # %.preheader2
	movl	$4, %eax
	.p2align	4, 0x90
.LBB25_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	addq	%rax, %rax
	cmpq	%rsi, %rcx
	jb	.LBB25_3
.LBB25_4:
	movl	$1, %eax
	cmpq	%rsi, 32(%rbx)
	ja	.LBB25_15
# %bb.5:
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	40(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	-1(%rcx), %r12
	movl	$8, %esi
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	callq	calloc
	movq	%rax, %r15
	movq	16(%rbx), %rax
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	sete	%dl
	testq	%rax, %rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	je	.LBB25_13
# %bb.6:
	xorl	%esi, %esi
	jmp	.LBB25_7
	.p2align	4, 0x90
.LBB25_12:                              #   in Loop: Header=BB25_7 Depth=1
	addq	$1, %rsi
	testq	%rcx, %rcx
	sete	%dl
	cmpq	%rax, %rsi
	jae	.LBB25_13
.LBB25_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_10 Depth 2
	testb	$1, %dl
	jne	.LBB25_14
# %bb.8:                                #   in Loop: Header=BB25_7 Depth=1
	movq	(%rbx), %rdx
	movq	(%rdx,%rsi,8), %r13
	testq	%r13, %r13
	je	.LBB25_12
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB25_7 Depth=1
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB25_10:                              #   Parent Loop BB25_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r13), %rdi
	movq	16(%r13), %r14
	movq	8(%rbx), %rax
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	%r12d, %eax
	movq	(%r15,%rax,8), %rcx
	movq	%rcx, 16(%r13)
	movq	%r13, (%r15,%rax,8)
	movq	32(%rbx), %rcx
	addq	$-1, %rcx
	movq	%rcx, 32(%rbx)
	movq	%r14, %r13
	testq	%r14, %r14
	jne	.LBB25_10
# %bb.11:                               #   in Loop: Header=BB25_7 Depth=1
	movq	16(%rbx), %rax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB25_12
.LBB25_13:
	testb	%dl, %dl
	je	.LBB25_16
.LBB25_14:
	movq	(%rbx), %rdi
	callq	free
	movq	%r15, (%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rbx)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 40(%rbx)
	xorl	%eax, %eax
.LBB25_15:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_16:
	movl	$.L.str.14, %edi
	movl	$.L__func__.dictExpand, %edx
	movl	$.L.str.15, %ecx
	movl	$126, %esi
	callq	__assert_func
.Lfunc_end25:
	.size	dictExpand, .Lfunc_end25-dictExpand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/async.c"
	.size	.L.str.1, 82

	.type	.L__func__.redisProcessCallbacks,@object # @__func__.redisProcessCallbacks
.L__func__.redisProcessCallbacks:
	.asciz	"redisProcessCallbacks"
	.size	.L__func__.redisProcessCallbacks, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"(c->flags & REDIS_SUBSCRIBED || c->flags & REDIS_MONITORING)"
	.size	.L.str.2, 61

	.type	callbackDict,@object    # @callbackDict
	.data
	.p2align	3
callbackDict:
	.quad	callbackHash
	.quad	0
	.quad	callbackValDup
	.quad	callbackKeyCompare
	.quad	callbackKeyDestructor
	.quad	callbackValDestructor
	.size	callbackDict, 48

	.type	.L__func__.__redisAsyncDisconnect,@object # @__func__.__redisAsyncDisconnect
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.__redisAsyncDisconnect:
	.asciz	"__redisAsyncDisconnect"
	.size	.L__func__.__redisAsyncDisconnect, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"__redisShiftCallback(&ac->replies,NULL) == REDIS_ERR"
	.size	.L.str.3, 53

	.type	.L__func__.__redisGetSubscribeCallback,@object # @__func__.__redisGetSubscribeCallback
.L__func__.__redisGetSubscribeCallback:
	.asciz	"__redisGetSubscribeCallback"
	.size	.L__func__.__redisGetSubscribeCallback, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"reply->elements >= 2"
	.size	.L.str.4, 21

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"reply->element[0]->type == REDIS_REPLY_STRING"
	.size	.L.str.5, 46

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"reply->element[1]->type == REDIS_REPLY_STRING"
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"unsubscribe"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"reply->element[2]->type == REDIS_REPLY_INTEGER"
	.size	.L.str.8, 47

	.type	.L__func__.__redisAsyncCommand,@object # @__func__.__redisAsyncCommand
.L__func__.__redisAsyncCommand:
	.asciz	"__redisAsyncCommand"
	.size	.L__func__.__redisAsyncCommand, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"p != NULL"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"subscribe\r\n"
	.size	.L.str.10, 12

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"unsubscribe\r\n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"monitor\r\n"
	.size	.L.str.12, 10

	.type	.L__func__.nextArgument,@object # @__func__.nextArgument
.L__func__.nextArgument:
	.asciz	"nextArgument"
	.size	.L__func__.nextArgument, 13

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"p"
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/deps/hiredis/dict.c"
	.size	.L.str.14, 81

	.type	.L__func__.dictExpand,@object # @__func__.dictExpand
.L__func__.dictExpand:
	.asciz	"dictExpand"
	.size	.L__func__.dictExpand, 11

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ht->used == 0"
	.size	.L.str.15, 14

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
