	.text
	.file	"async.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisAsyncConnect
.LCPI0_0:
	.zero	16
	.text
	.globl	redisAsyncConnect
	.p2align	4, 0x90
	.type	redisAsyncConnect,@function
redisAsyncConnect:                      # @redisAsyncConnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	redisConnectNonBlock
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_5
# %bb.1:
	movq	%rax, %r14
	movl	$344, %esi              # imm = 0x158
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_4
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
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 328(%rbx)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 336(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	movq	%rbx, %rax
	addq	$4, %rax
	movq	%rax, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	redisFree
.LBB0_5:
	xorl	%ebx, %ebx
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisAsyncConnect, .Lfunc_end0-redisAsyncConnect
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisAsyncConnectBind
.LCPI1_0:
	.zero	16
	.text
	.globl	redisAsyncConnectBind
	.p2align	4, 0x90
	.type	redisAsyncConnectBind,@function
redisAsyncConnectBind:                  # @redisAsyncConnectBind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	redisConnectBindNonBlock
	movl	$344, %esi              # imm = 0x158
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
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
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 328(%rbx)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 336(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	movq	%rbx, %rax
	addq	$4, %rax
	movq	%rax, 216(%rbx)
	jmp	.LBB1_3
.LBB1_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	redisAsyncConnectBind, .Lfunc_end1-redisAsyncConnectBind
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisAsyncConnectBindWithReuse
.LCPI2_0:
	.zero	16
	.text
	.globl	redisAsyncConnectBindWithReuse
	.p2align	4, 0x90
	.type	redisAsyncConnectBindWithReuse,@function
redisAsyncConnectBindWithReuse:         # @redisAsyncConnectBindWithReuse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	redisConnectBindNonBlockWithReuse
	movl	$344, %esi              # imm = 0x158
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_1
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
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 328(%rbx)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 336(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	movq	%rbx, %rax
	addq	$4, %rax
	movq	%rax, 216(%rbx)
	jmp	.LBB2_3
.LBB2_1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisAsyncConnectBindWithReuse, .Lfunc_end2-redisAsyncConnectBindWithReuse
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function redisAsyncConnectUnix
.LCPI3_0:
	.zero	16
	.text
	.globl	redisAsyncConnectUnix
	.p2align	4, 0x90
	.type	redisAsyncConnectUnix,@function
redisAsyncConnectUnix:                  # @redisAsyncConnectUnix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	callq	redisConnectUnixNonBlock
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_5
# %bb.1:
	movq	%rax, %r14
	movl	$344, %esi              # imm = 0x158
	movq	%rax, %rdi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_4
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
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 328(%rbx)
	movl	$48, %edi
	callq	malloc
	movq	$0, (%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rax)
	movq	$0, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$callbackDict, 8(%rax)
	movq	$0, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 336(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	movq	%rbx, %rax
	addq	$4, %rax
	movq	%rax, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_6
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	redisFree
.LBB3_5:
	xorl	%ebx, %ebx
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	redisAsyncConnectUnix, .Lfunc_end3-redisAsyncConnectUnix
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
	cmpq	$0, 288(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jne	.LBB4_3
# %bb.1:
	movq	%rsi, 288(%rdi)
	movq	256(%rdi), %rax
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_3
# %bb.2:
	movq	232(%rdi), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	redisAsyncSetConnectCallback, .Lfunc_end4-redisAsyncSetConnectCallback
                                        # -- End function
	.globl	redisAsyncSetDisconnectCallback # -- Begin function redisAsyncSetDisconnectCallback
	.p2align	4, 0x90
	.type	redisAsyncSetDisconnectCallback,@function
redisAsyncSetDisconnectCallback:        # @redisAsyncSetDisconnectCallback
# %bb.0:
	cmpq	$0, 280(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jne	.LBB5_2
# %bb.1:
	movq	%rsi, 280(%rdi)
	xorl	%eax, %eax
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	redisAsyncSetDisconnectCallback, .Lfunc_end5-redisAsyncSetDisconnectCallback
                                        # -- End function
	.globl	redisAsyncFree          # -- Begin function redisAsyncFree
	.p2align	4, 0x90
	.type	redisAsyncFree,@function
redisAsyncFree:                         # @redisAsyncFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	136(%rdi), %eax
	movl	%eax, %ecx
	orl	$8, %ecx
	movl	%ecx, 136(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %al
	jne	.LBB6_2
# %bb.1:
	callq	__redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	redisAsyncFree, .Lfunc_end6-redisAsyncFree
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
	movl	$42, __A_VARIABLE(%rip)
	movq	296(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_7
# %bb.1:
	leaq	-48(%rbp), %r15
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	296(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_7
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movq	$0, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	orb	$16, 136(%r14)
	movq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	andb	$-17, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_6
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	312(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_14
# %bb.8:
	leaq	-48(%rbp), %r15
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	312(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_14
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	%rax, 312(%r14)
	cmpq	320(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	movq	$0, 320(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=1
	orb	$16, 136(%r14)
	movq	-32(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rax
	andb	$-17, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_13
.LBB7_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB7_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_16 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_16
	.p2align	4, 0x90
.LBB7_18:                               #   in Loop: Header=BB7_16 Depth=2
	shlq	$3, %rcx
	addq	(%rax), %rcx
.LBB7_19:                               #   in Loop: Header=BB7_16 Depth=2
	movq	(%rcx), %rax
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_20
.LBB7_16:                               #   Parent Loop BB7_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rcx
	testq	%rax, %rax
	jne	.LBB7_19
# %bb.17:                               #   in Loop: Header=BB7_16 Depth=2
	movslq	8(%rbx), %rcx
	addq	$1, %rcx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rax
	cmpl	16(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB7_18
	jmp	.LBB7_23
	.p2align	4, 0x90
.LBB7_20:                               #   in Loop: Header=BB7_15 Depth=1
	movq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rdx
	movq	8(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB7_22
# %bb.21:                               #   in Loop: Header=BB7_15 Depth=1
	orb	$16, 136(%r14)
	movq	16(%rdx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rcx
	andb	$-17, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
.LBB7_22:                               #   in Loop: Header=BB7_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_15
.LBB7_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB7_24:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_25 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_25
	.p2align	4, 0x90
.LBB7_27:                               #   in Loop: Header=BB7_25 Depth=2
	shlq	$3, %rcx
	addq	(%rax), %rcx
.LBB7_28:                               #   in Loop: Header=BB7_25 Depth=2
	movq	(%rcx), %rax
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_29
.LBB7_25:                               #   Parent Loop BB7_24 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rcx
	testq	%rax, %rax
	jne	.LBB7_28
# %bb.26:                               #   in Loop: Header=BB7_25 Depth=2
	movslq	8(%rbx), %rcx
	addq	$1, %rcx
	movl	%ecx, 8(%rbx)
	movq	(%rbx), %rax
	cmpl	16(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB7_27
	jmp	.LBB7_32
	.p2align	4, 0x90
.LBB7_29:                               #   in Loop: Header=BB7_24 Depth=1
	movq	16(%rax), %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rdx
	movq	8(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB7_31
# %bb.30:                               #   in Loop: Header=BB7_24 Depth=1
	orb	$16, 136(%r14)
	movq	16(%rdx), %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	*%rcx
	andb	$-17, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
.LBB7_31:                               #   in Loop: Header=BB7_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_24
.LBB7_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movq	336(%r14), %rdi
	callq	dictRelease
	movq	272(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_34
# %bb.33:
	movq	232(%r14), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_34:
	movq	280(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_40
# %bb.35:
	movl	136(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	je	.LBB7_40
# %bb.36:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB7_37
# %bb.38:
	xorl	%ecx, %ecx
	cmpl	208(%r14), %ecx
	sbbl	%esi, %esi
	movq	%r14, %rdi
	jmp	.LBB7_39
.LBB7_37:
	movq	%r14, %rdi
	xorl	%esi, %esi
.LBB7_39:
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB7_40:
	movq	%r14, %rdi
	callq	redisFree
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	__redisAsyncFree, .Lfunc_end7-__redisAsyncFree
                                        # -- End function
	.globl	redisAsyncDisconnect    # -- Begin function redisAsyncDisconnect
	.p2align	4, 0x90
	.type	redisAsyncDisconnect,@function
redisAsyncDisconnect:                   # @redisAsyncDisconnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	136(%rdi), %ecx
	movl	%ecx, %eax
	orl	$4, %eax
	movl	%eax, 136(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	jne	.LBB8_6
# %bb.1:
	cmpq	$0, 296(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	movl	%ecx, 208(%rdi)
	leaq	4(%rdi), %rdx
	movq	%rdx, 216(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB8_3
# %bb.4:
	movl	%eax, 136(%rdi)
	jmp	.LBB8_5
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	callq	__redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	redisAsyncDisconnect, .Lfunc_end8-redisAsyncDisconnect
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rsi
	callq	redisGetReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_1
# %bb.86:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB9_85
# %bb.87:
	movl	208, %eax
	jmp	.LBB9_88
.LBB9_1:
	leaq	-96(%rbp), %r12
	leaq	-48(%rbp), %r13
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_82:                               #   in Loop: Header=BB9_2 Depth=1
	movq	152(%r14), %rax
	movq	544(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*32(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_83:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	redisGetReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_84
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_47 Depth 2
                                        #     Child Loop BB9_54 Depth 2
	movq	-48(%rbp), %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB9_3
# %bb.27:                               #   in Loop: Header=BB9_2 Depth=1
	movq	296(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB9_31
# %bb.28:                               #   in Loop: Header=BB9_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_30
# %bb.29:                               #   in Loop: Header=BB9_2 Depth=1
	movq	$0, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_30:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
.LBB9_78:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_79:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_82
# %bb.80:                               #   in Loop: Header=BB9_2 Depth=1
	movq	-48(%rbp), %rsi
	movl	$42, __A_VARIABLE(%rip)
	orb	$16, 136(%r14)
	movq	-80(%rbp), %rdx
	movq	%r14, %rdi
	callq	*%rax
	andb	$-17, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	152(%r14), %rax
	movq	544(%rax), %rax
	movq	-48(%rbp), %rdi
	callq	*32(%rax)
	testb	$8, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_83
	jmp	.LBB9_81
	.p2align	4, 0x90
.LBB9_31:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_32
# %bb.38:                               #   in Loop: Header=BB9_2 Depth=1
	movl	136(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %al
	jne	.LBB9_41
# %bb.39:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	jne	.LBB9_79
	jmp	.LBB9_40
.LBB9_41:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_73
# %bb.42:                               #   in Loop: Header=BB9_2 Depth=1
	cmpq	$1, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB9_96
# %bb.43:                               #   in Loop: Header=BB9_2 Depth=1
	movq	40(%r15), %rax
	movq	(%rax), %rax
	cmpl	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_97
# %bb.44:                               #   in Loop: Header=BB9_2 Depth=1
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
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movq	328(%r14,%rax,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
	movq	8(%rax), %rax
	cmpl	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_98
# %bb.45:                               #   in Loop: Header=BB9_2 Depth=1
	movq	16(%rax), %rsi
	movq	24(%rax), %rdi
	callq	sdsnewlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_59
# %bb.46:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rbx), %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%rbx), %eax
	movq	(%rbx), %rcx
	movq	(%rcx,%rax,8), %r12
	jmp	.LBB9_47
	.p2align	4, 0x90
.LBB9_57:                               #   in Loop: Header=BB9_47 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_50
.LBB9_58:                               #   in Loop: Header=BB9_47 Depth=2
	movq	16(%r12), %r12
.LBB9_47:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_59
# %bb.48:                               #   in Loop: Header=BB9_47 Depth=2
	movq	8(%rbx), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_57
# %bb.49:                               #   in Loop: Header=BB9_47 Depth=2
	movq	40(%rbx), %rdi
	movq	(%r12), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_58
.LBB9_50:                               #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$112, %r13d
	sete	%al
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rsi
	movl	$24, %edx
	leaq	-96(%rbp), %r12
	movq	%r12, %rdi
	callq	memcpy
	movq	-64(%rbp), %rdi         # 8-byte Reload
	addq	%r13, %rdi
	movl	$.L.str.7, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_72
# %bb.51:                               #   in Loop: Header=BB9_2 Depth=1
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_69
# %bb.52:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rbx), %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%rbx), %eax
	movq	(%rbx), %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%rcx,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_69
# %bb.53:                               # %.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%r12d, %r12d
	jmp	.LBB9_54
.LBB9_73:                               #   in Loop: Header=BB9_2 Depth=1
	movq	312(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB9_77
# %bb.74:                               #   in Loop: Header=BB9_2 Depth=1
	movq	(%rbx), %rax
	movq	%rax, 312(%r14)
	cmpq	320(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_76
# %bb.75:                               #   in Loop: Header=BB9_2 Depth=1
	movq	$0, 320(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_76:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	free
.LBB9_77:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_78
.LBB9_59:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %r12
.LBB9_72:                               #   in Loop: Header=BB9_2 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	sdsfree
	leaq	-48(%rbp), %r13
	jmp	.LBB9_78
.LBB9_60:                               #   in Loop: Header=BB9_54 Depth=2
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_61
.LBB9_56:                               #   in Loop: Header=BB9_54 Depth=2
	movq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r12
	testq	%rax, %rax
	je	.LBB9_69
.LBB9_54:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %r13
	movq	8(%rbx), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_60
# %bb.55:                               #   in Loop: Header=BB9_54 Depth=2
	movq	40(%rbx), %rdi
	movq	(%r13), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_56
.LBB9_61:                               #   in Loop: Header=BB9_2 Depth=1
	movq	16(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_63
# %bb.62:                               #   in Loop: Header=BB9_2 Depth=1
	addq	$16, %r12
	jmp	.LBB9_64
.LBB9_63:                               #   in Loop: Header=BB9_2 Depth=1
	movq	-64(%rbp), %r12         # 8-byte Reload
	shlq	$3, %r12
	addq	(%rbx), %r12
.LBB9_64:                               #   in Loop: Header=BB9_2 Depth=1
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rcx
	movq	32(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_66
# %bb.65:                               #   in Loop: Header=BB9_2 Depth=1
	movq	40(%rbx), %rdi
	movq	(%r13), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rcx
.LBB9_66:                               #   in Loop: Header=BB9_2 Depth=1
	movq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_68
# %bb.67:                               #   in Loop: Header=BB9_2 Depth=1
	movq	40(%rbx), %rdi
	movq	8(%r13), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB9_68:                               #   in Loop: Header=BB9_2 Depth=1
	movq	%r13, %rdi
	callq	free
	addq	$-1, 32(%rbx)
.LBB9_69:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	40(%r15), %rax
	movq	16(%rax), %rax
	cmpl	$3, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_99
# %bb.70:                               #   in Loop: Header=BB9_2 Depth=1
	cmpq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %r12
	jne	.LBB9_72
# %bb.71:                               #   in Loop: Header=BB9_2 Depth=1
	andb	$-33, 136(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_72
.LBB9_3:
	movl	136(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB9_19
# %bb.4:
	movq	144(%r14), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB9_10
# %bb.5:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI9_0(,%rsi,8)
.LBB9_11:
	shrq	$3, %rcx
	jmp	.LBB9_12
.LBB9_84:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_85:
	movl	(%r14), %eax
	movl	%eax, 208(%r14)
	leaq	4(%r14), %rcx
	movq	%rcx, 216(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_89
# %bb.91:
	orb	$4, 136(%r14)
	jmp	.LBB9_92
.LBB9_89:
	movq	296(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB9_34
# %bb.90:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_92:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	__redisAsyncFree
.LBB9_93:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_94:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_95:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_81:
	movq	%r14, %rdi
	callq	__redisAsyncFree
	jmp	.LBB9_95
.LBB9_32:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	movl	%eax, 208(%r14)
	movq	%rbx, 216(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_33
# %bb.37:
	orb	$4, 136(%r14)
	jmp	.LBB9_18
.LBB9_33:
	movq	296(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB9_34
.LBB9_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_18
.LBB9_9:
	movq	-17(%rdx), %rcx
	jmp	.LBB9_12
.LBB9_7:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB9_12
.LBB9_8:
	movl	-9(%rdx), %ecx
	jmp	.LBB9_12
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_13
.LBB9_6:
	movzbl	-3(%rdx), %ecx
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB9_19
.LBB9_13:
	cmpq	$0, 296(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_14
.LBB9_19:
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %al
	je	.LBB9_94
# %bb.20:
	movl	$24, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_26
# %bb.21:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 296(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_23
# %bb.22:
	movq	%rbx, 296(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:
	movq	304(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_25
# %bb.24:
	movq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_25:
	movq	%rbx, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_93
.LBB9_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %ecx
	movl	%ecx, 208(%r14)
	leaq	4(%r14), %rdx
	movq	%rdx, 216(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB9_15
# %bb.17:
	orl	$4, %eax
	movl	%eax, 136(%r14)
.LBB9_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	__redisAsyncFree
	jmp	.LBB9_94
.LBB9_15:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_16
.LBB9_40:
	movl	$.L.str.1, %edi
	movl	$.L__func__.redisProcessCallbacks, %edx
	movl	$.L.str.2, %ecx
	movl	$463, %esi              # imm = 0x1CF
	callq	__assert_func
.LBB9_96:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.4, %ecx
	movl	$375, %esi              # imm = 0x177
	callq	__assert_func
.LBB9_97:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.5, %ecx
	movl	$376, %esi              # imm = 0x178
	callq	__assert_func
.LBB9_98:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.6, %ecx
	movl	$386, %esi              # imm = 0x182
	callq	__assert_func
.LBB9_99:
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisGetSubscribeCallback, %edx
	movl	$.L.str.8, %ecx
	movl	$398, %esi              # imm = 0x18E
	callq	__assert_func
.LBB9_34:
	movq	(%rdi), %rax
	movq	%rax, 296(%r14)
	cmpq	304(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_36
# %bb.35:
	movq	$0, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_36:
	movl	$42, __A_VARIABLE(%rip)
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end9:
	.size	redisProcessCallbacks, .Lfunc_end9-redisProcessCallbacks
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_11
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8
	.quad	.LBB9_9
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_6
# %bb.1:
	movq	%rbx, %rdi
	callq	redisCheckSocketError
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_4
# %bb.2:
	orb	$2, 136(%rbx)
	movq	288(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_5
# %bb.3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_5
.LBB10_4:
	callq	__errno
	cmpl	$119, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_15
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, 136(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_24
.LBB10_6:
	movq	%rbx, %rdi
	callq	redisBufferRead
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB10_10
# %bb.7:
	movq	240(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_9
# %bb.8:
	movq	232(%rbx), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_9:
	movq	%rbx, %rdi
	callq	redisProcessCallbacks
	jmp	.LBB10_23
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_12
# %bb.11:
	orb	$4, 136(%rbx)
	jmp	.LBB10_14
.LBB10_12:
	movq	296(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB10_25
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	__redisAsyncFree
	jmp	.LBB10_22
.LBB10_15:
	movq	288(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_17
# %bb.16:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_19
# %bb.18:
	orb	$4, 136(%rbx)
	jmp	.LBB10_21
.LBB10_19:
	movq	296(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB10_25
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	__redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB10_25:
	movq	(%rdi), %rax
	movq	%rax, 296(%rbx)
	cmpq	304(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_27
# %bb.26:
	movq	$0, 304(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end10:
	.size	redisAsyncHandleRead, .Lfunc_end10-redisAsyncHandleRead
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_6
# %bb.1:
	movq	%rbx, %rdi
	callq	redisCheckSocketError
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB11_4
# %bb.2:
	orb	$2, 136(%rbx)
	movq	288(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.3:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_5
.LBB11_4:
	callq	__errno
	cmpl	$119, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_19
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, 136(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_28
.LBB11_6:
	leaq	-12(%rbp), %rsi
	movq	%rbx, %rdi
	callq	redisBufferWrite
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB11_9
# %bb.7:
	cmpl	$0, -12(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_11
# %bb.8:
	movq	264(%rbx), %rax
	jmp	.LBB11_12
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_16
# %bb.10:
	orb	$4, 136(%rbx)
	jmp	.LBB11_18
.LBB11_11:
	movq	256(%rbx), %rax
.LBB11_12:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_14
# %bb.13:
	movq	232(%rbx), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_14:
	movq	240(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_28
# %bb.15:
	movq	232(%rbx), %rdi
	callq	*%rax
	jmp	.LBB11_27
.LBB11_16:
	movq	296(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB11_29
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	__redisAsyncFree
	jmp	.LBB11_26
.LBB11_19:
	movq	288(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_21
# %bb.20:
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB11_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	movl	%eax, 208(%rbx)
	leaq	4(%rbx), %rcx
	movq	%rcx, 216(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_23
# %bb.22:
	orb	$4, 136(%rbx)
	jmp	.LBB11_25
.LBB11_23:
	movq	296(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB11_29
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	__redisAsyncFree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB11_29:
	movq	(%rdi), %rax
	movq	%rax, 296(%rbx)
	cmpq	304(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_31
# %bb.30:
	movq	$0, 304(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncDisconnect, %edx
	movl	$.L.str.3, %ecx
	movl	$339, %esi              # imm = 0x153
	callq	__assert_func
.Lfunc_end11:
	.size	redisAsyncHandleWrite, .Lfunc_end11-redisAsyncHandleWrite
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB12_1
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
	jmp	.LBB12_3
.LBB12_1:
	movl	$-1, %ebx
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	redisvAsyncCommand, .Lfunc_end12-redisvAsyncCommand
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
	testb	$12, 136(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jne	.LBB13_37
# %bb.1:
	movq	%rcx, %r14
	movq	%rdi, %r12
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rsi, -88(%rbp)
	movq	%rdx, -80(%rbp)
	cmpb	$36, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r15
	je	.LBB13_3
# %bb.2:
	movq	%r14, %rdi
	movl	$36, %esi
	callq	strchr
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_5
.LBB13_3:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r12, -48(%rbp)         # 8-byte Spill
	leaq	1(%r15), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %r14
	movq	%r15, %rdi
	movl	$13, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_4
# %bb.6:
	movq	%rax, %r13
	movslq	%r14d, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %r15b
	jne	.LBB13_16
# %bb.7:
	movl	$.L.str.10, %esi
	movl	$11, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_8
.LBB13_16:
	movl	$.L.str.11, %esi
	movl	$13, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_17
# %bb.18:
	movl	$.L.str.12, %esi
	movl	$9, %edx
	movq	%r14, %rdi
	callq	strncasecmp
	movq	-48(%rbp), %r15         # 8-byte Reload
	movl	136(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB13_19
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$24, %edi
	testb	$32, %cl
	je	.LBB13_20
# %bb.27:
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_34
# %bb.28:
	movq	%rax, %r14
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 312(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_30
# %bb.29:
	movq	%r14, 312(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_30:
	movq	320(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_32
# %bb.31:
	movq	%r14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_32:
	movq	%r14, 320(%r15)
	jmp	.LBB13_33
.LBB13_17:
	movq	-48(%rbp), %r15         # 8-byte Reload
	testb	$32, 136(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	jne	.LBB13_35
	jmp	.LBB13_37
.LBB13_19:
	orl	$64, %ecx
	movl	%ecx, 136(%r15)
	movl	$24, %edi
.LBB13_20:
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_34
# %bb.21:
	movq	%rax, %r14
	leaq	-96(%rbp), %rsi
	movl	$24, %edx
	movq	%rax, %rdi
	callq	memcpy
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 296(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_23
# %bb.22:
	movq	%r14, 296(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_23:
	movq	304(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_25
# %bb.24:
	movq	%r14, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_25:
	movq	%r14, 304(%r15)
.LBB13_33:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_34
.LBB13_8:
	xorl	%eax, %eax
	cmpl	$112, %r12d
	sete	%al
	movq	-48(%rbp), %rcx         # 8-byte Reload
	orb	$32, 136(%rcx)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r13), %r14
	addq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	leaq	328(,%rax,8), %r12
	jmp	.LBB13_9
	.p2align	4, 0x90
.LBB13_15:                              #   in Loop: Header=BB13_9 Depth=1
	addq	%r13, %r14
	addq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB13_9:                               # =>This Inner Loop Header: Depth=1
	cmpb	$36, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_12
# %bb.10:                               #   in Loop: Header=BB13_9 Depth=1
	movq	%r14, %rdi
	movl	$36, %esi
	callq	strchr
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_11
.LBB13_12:                              #   in Loop: Header=BB13_9 Depth=1
	leaq	1(%r14), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, %rbx
	movq	%r14, %rdi
	movl	$13, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_4
# %bb.13:                               #   in Loop: Header=BB13_9 Depth=1
	movq	%rax, %r13
	movslq	%ebx, %r14
	leaq	2(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	sdsnewlen
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r12), %rdi
	movq	%r15, %rsi
	leaq	-96(%rbp), %rdx
	callq	dictReplace
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_15
# %bb.14:                               #   in Loop: Header=BB13_9 Depth=1
	movq	%r15, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_15
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB13_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_35:
	movq	%r15, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	__redisAppendCommand
	movq	256(%r15), %rax
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_37
# %bb.36:
	movq	232(%r15), %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB13_37:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB13_4:
	movl	$.L.str.1, %edi
	movl	$.L__func__.nextArgument, %edx
	movl	$.L.str.13, %ecx
	movl	$575, %esi              # imm = 0x23F
	callq	__assert_func
.LBB13_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %edi
	movl	$.L__func__.__redisAsyncCommand, %edx
	movl	$.L.str.9, %ecx
	movl	$602, %esi              # imm = 0x25A
	callq	__assert_func
.Lfunc_end13:
	.size	__redisAsyncCommand, .Lfunc_end13-__redisAsyncCommand
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
	je	.LBB14_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB14_2:
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB14_3
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
	jmp	.LBB14_5
.LBB14_3:
	movl	$-1, %ebx
.LBB14_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	redisAsyncCommand, .Lfunc_end14-redisAsyncCommand
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	redisAsyncCommandArgv, .Lfunc_end15-redisAsyncCommandArgv
                                        # -- End function
	.globl	redisAsyncFormattedCommand # -- Begin function redisAsyncFormattedCommand
	.p2align	4, 0x90
	.type	redisAsyncFormattedCommand,@function
redisAsyncFormattedCommand:             # @redisAsyncFormattedCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__redisAsyncCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	redisAsyncFormattedCommand, .Lfunc_end16-redisAsyncFormattedCommand
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackHash
	.type	callbackHash,@function
callbackHash:                           # @callbackHash
# %bb.0:
	movzbl	-1(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB17_6
# %bb.1:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI17_0(,%rax,8)
.LBB17_7:
	shrq	$3, %rcx
	jmp	.LBB17_8
.LBB17_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$5381, %eax             # imm = 0x1505
	jmp	.LBB17_17
.LBB17_2:
	movzbl	-3(%rdi), %ecx
	jmp	.LBB17_8
.LBB17_3:
	movzwl	-5(%rdi), %ecx
	jmp	.LBB17_8
.LBB17_4:
	movl	-9(%rdi), %ecx
	jmp	.LBB17_8
.LBB17_5:
	movq	-17(%rdi), %rcx
.LBB17_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB17_9
# %bb.10:
	leal	-1(%rcx), %eax
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpl	$3, %eax
	jae	.LBB17_12
# %bb.11:
	movl	$5381, %eax             # imm = 0x1505
	jmp	.LBB17_14
.LBB17_9:
	movl	$5381, %eax             # imm = 0x1505
	jmp	.LBB17_17
.LBB17_12:
	movl	%r8d, %esi
	subl	%ecx, %esi
	movl	$5381, %eax             # imm = 0x1505
	.p2align	4, 0x90
.LBB17_13:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	(%rdi), %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	1(%rdi), %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	2(%rdi), %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	shll	$5, %edx
	addl	%eax, %edx
	movzbl	3(%rdi), %eax
	addq	$4, %rdi
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$4, %esi
	jne	.LBB17_13
.LBB17_14:
	testl	%r8d, %r8d
	je	.LBB17_17
# %bb.15:                               # %.preheader
	andl	$3, %ecx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB17_16:                              # =>This Inner Loop Header: Depth=1
	movl	%eax, %esi
	shll	$5, %esi
	addl	%eax, %esi
	movzbl	(%rdi,%rdx), %eax
	addl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	cmpl	%edx, %ecx
	jne	.LBB17_16
.LBB17_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end17:
	.size	callbackHash, .Lfunc_end17-callbackHash
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI17_0:
	.quad	.LBB17_7
	.quad	.LBB17_2
	.quad	.LBB17_3
	.quad	.LBB17_4
	.quad	.LBB17_5
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	callbackValDup, .Lfunc_end18-callbackValDup
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackKeyCompare
	.type	callbackKeyCompare,@function
callbackKeyCompare:                     # @callbackKeyCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movzbl	-1(%rsi), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_1
# %bb.2:
	movl	%r8d, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_3:
	shrq	$3, %r8
	jmp	.LBB19_8
.LBB19_1:
	xorl	%r8d, %r8d
	jmp	.LBB19_8
.LBB19_4:
	movzbl	-3(%rsi), %r8d
	jmp	.LBB19_8
.LBB19_5:
	movzwl	-5(%rsi), %r8d
	jmp	.LBB19_8
.LBB19_6:
	movl	-9(%rsi), %r8d
	jmp	.LBB19_8
.LBB19_7:
	movq	-17(%rsi), %r8
.LBB19_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rdx), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %ecx
	andb	$7, %cl
	xorl	%eax, %eax
	cmpb	$4, %cl
	ja	.LBB19_9
# %bb.10:
	movl	%edi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI19_1(,%rcx,8)
.LBB19_11:
	shrq	$3, %rdi
	jmp	.LBB19_16
.LBB19_9:
	xorl	%edi, %edi
	jmp	.LBB19_16
.LBB19_12:
	movzbl	-3(%rdx), %edi
	jmp	.LBB19_16
.LBB19_13:
	movzwl	-5(%rdx), %edi
	jmp	.LBB19_16
.LBB19_14:
	movl	-9(%rdx), %edi
	jmp	.LBB19_16
.LBB19_15:
	movq	-17(%rdx), %rdi
.LBB19_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %r8d
	jne	.LBB19_18
# %bb.17:
	movslq	%r8d, %rax
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
.LBB19_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbp
	retq
.Lfunc_end19:
	.size	callbackKeyCompare, .Lfunc_end19-callbackKeyCompare
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_3
	.quad	.LBB19_4
	.quad	.LBB19_5
	.quad	.LBB19_6
	.quad	.LBB19_7
.LJTI19_1:
	.quad	.LBB19_11
	.quad	.LBB19_12
	.quad	.LBB19_13
	.quad	.LBB19_14
	.quad	.LBB19_15
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function callbackKeyDestructor
	.type	callbackKeyDestructor,@function
callbackKeyDestructor:                  # @callbackKeyDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	sdsfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	callbackKeyDestructor, .Lfunc_end20-callbackKeyDestructor
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function callbackValDestructor
	.type	callbackValDestructor,@function
callbackValDestructor:                  # @callbackValDestructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	callbackValDestructor, .Lfunc_end21-callbackValDestructor
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
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB22_11
# %bb.1:
	movq	32(%r14), %rax
	xorl	%r15d, %r15d
	jmp	.LBB22_2
	.p2align	4, 0x90
.LBB22_9:                               #   in Loop: Header=BB22_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rcx
.LBB22_10:                              #   in Loop: Header=BB22_2 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r15
	jae	.LBB22_11
.LBB22_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_11
# %bb.3:                                #   in Loop: Header=BB22_2 Depth=1
	movq	(%r14), %rdx
	movq	(%rdx,%r15,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB22_4
	jmp	.LBB22_10
	.p2align	4, 0x90
.LBB22_8:                               #   in Loop: Header=BB22_4 Depth=2
	movq	%rbx, %rdi
	callq	free
	movq	32(%r14), %rax
	addq	$-1, %rax
	movq	%rax, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	testq	%r12, %r12
	je	.LBB22_9
.LBB22_4:                               #   Parent Loop BB22_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rbx), %r12
	movq	8(%r14), %rcx
	movq	32(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_6
# %bb.5:                                #   in Loop: Header=BB22_4 Depth=2
	movq	40(%r14), %rdi
	movq	(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rcx
.LBB22_6:                               #   in Loop: Header=BB22_4 Depth=2
	movq	40(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_8
# %bb.7:                                #   in Loop: Header=BB22_4 Depth=2
	movq	40(%r14), %rdi
	movq	8(%rbx), %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_8
.LBB22_11:
	movq	(%r14), %rdi
	callq	free
	movq	$0, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r14)
	movq	$0, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	dictRelease, .Lfunc_end22-dictRelease
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
	movq	%rdx, %r13
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	16(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB23_3
# %bb.1:
	cmpq	%rsi, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_5
# %bb.2:
	addq	%rsi, %rsi
	jmp	.LBB23_4
.LBB23_3:
	movl	$4, %esi
.LBB23_4:
	movq	%r14, %rdi
	callq	dictExpand
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB23_6
	jmp	.LBB23_12
.LBB23_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_6:
	movq	8(%r14), %rax
	movq	%r15, %rdi
	callq	*(%rax)
	movl	%eax, %r12d
	andl	24(%r14), %r12d
	movq	(%r14), %rax
	movq	(%rax,%r12,8), %rbx
	jmp	.LBB23_9
	.p2align	4, 0x90
.LBB23_7:                               #   in Loop: Header=BB23_9 Depth=1
	cmpq	%r15, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_12
.LBB23_8:                               #   in Loop: Header=BB23_9 Depth=1
	movq	16(%rbx), %rbx
.LBB23_9:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB23_13
# %bb.10:                               #   in Loop: Header=BB23_9 Depth=1
	movq	8(%r14), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_7
# %bb.11:                               #   in Loop: Header=BB23_9 Depth=1
	movq	40(%r14), %rdi
	movq	(%rbx), %rdx
	movq	%r15, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_8
.LBB23_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_16
.LBB23_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	je	.LBB23_16
# %bb.14:
	movq	%r13, %rbx
	movl	$24, %edi
	callq	malloc
	movq	%rax, %r13
	movq	(%r14), %rax
	movslq	%r12d, %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	%rdx, 16(%r13)
	movq	%r13, (%rax,%rcx,8)
	movq	8(%r14), %rax
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB23_33
# %bb.15:
	movq	40(%r14), %rdi
	movq	%r15, %rsi
	callq	*%rcx
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rax
	jmp	.LBB23_34
.LBB23_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_25
# %bb.17:
	leaq	8(%r14), %r12
	movq	8(%r14), %rax
	movq	%r15, %rdi
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	24(%r14), %eax
	movq	(%r14), %rcx
	movq	(%rcx,%rax,8), %rbx
	jmp	.LBB23_20
	.p2align	4, 0x90
.LBB23_18:                              #   in Loop: Header=BB23_20 Depth=1
	cmpq	%r15, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB23_23
.LBB23_19:                              #   in Loop: Header=BB23_20 Depth=1
	movq	16(%rbx), %rbx
.LBB23_20:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB23_24
# %bb.21:                               #   in Loop: Header=BB23_20 Depth=1
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_18
# %bb.22:                               #   in Loop: Header=BB23_20 Depth=1
	movq	40(%r14), %rdi
	movq	(%rbx), %rdx
	movq	%r15, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB23_19
.LBB23_23:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_27
.LBB23_24:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_26
.LBB23_25:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r14), %r12
.LBB23_26:
	xorl	%ebx, %ebx
.LBB23_27:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %r15
	movq	(%r12), %rax
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB23_29
# %bb.28:
	movq	40(%r14), %rdi
	movq	%r13, %rsi
	callq	*%rcx
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r14), %rax
	jmp	.LBB23_30
.LBB23_29:
	movq	%r13, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_30:
	movq	40(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_32
# %bb.31:
	movq	40(%r14), %rdi
	movq	%r15, %rsi
	callq	*%rax
	xorl	%eax, %eax
	jmp	.LBB23_38
.LBB23_32:
	xorl	%eax, %eax
	jmp	.LBB23_39
.LBB23_33:
	movq	%r15, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB23_34:
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB23_36
# %bb.35:
	movq	40(%r14), %rdi
	movq	%rbx, %rsi
	callq	*%rcx
	jmp	.LBB23_37
.LBB23_36:
	movq	%rbx, %rax
.LBB23_37:
	movq	%rax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
.LBB23_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB23_39:
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
.Lfunc_end23:
	.size	dictReplace, .Lfunc_end23-dictReplace
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
	movabsq	$9223372036854775806, %rdi # imm = 0x7FFFFFFFFFFFFFFE
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jbe	.LBB24_2
# %bb.1:
	orq	$1, %rdi
	jmp	.LBB24_5
.LBB24_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edi
	cmpq	$5, %rsi
	jb	.LBB24_5
# %bb.3:                                # %.preheader
	movl	$4, %edi
	.p2align	4, 0x90
.LBB24_4:                               # =>This Inner Loop Header: Depth=1
	addq	%rdi, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdi
	jb	.LBB24_4
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	%rsi, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB24_17
# %bb.6:
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	40(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rdi), %r12
	movl	$8, %esi
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	callq	calloc
	movq	%rax, %r15
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rcx
	testq	%rax, %rax
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	je	.LBB24_15
# %bb.7:
	xorl	%esi, %esi
	jmp	.LBB24_8
	.p2align	4, 0x90
.LBB24_14:                              #   in Loop: Header=BB24_8 Depth=1
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jae	.LBB24_15
.LBB24_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_12 Depth 2
	testb	$1, %dl
	jne	.LBB24_9
# %bb.10:                               #   in Loop: Header=BB24_8 Depth=1
	movq	(%rbx), %rdx
	movq	(%rdx,%rsi,8), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB24_14
# %bb.11:                               #   in Loop: Header=BB24_8 Depth=1
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB24_12:                              #   Parent Loop BB24_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r14), %rdi
	movq	16(%r14), %r13
	movq	8(%rbx), %rax
	callq	*(%rax)
                                        # kill: def $eax killed $eax def $rax
	andl	%r12d, %eax
	movq	(%r15,%rax,8), %rcx
	movq	%rcx, 16(%r14)
	movq	%r14, (%r15,%rax,8)
	movq	32(%rbx), %rax
	addq	$-1, %rax
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r14
	testq	%r13, %r13
	jne	.LBB24_12
# %bb.13:                               #   in Loop: Header=BB24_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rcx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB24_14
.LBB24_15:
	testb	%dl, %dl
	jne	.LBB24_16
# %bb.18:
	movl	$.L.str.14, %edi
	movl	$.L__func__.dictExpand, %edx
	movl	$.L.str.15, %ecx
	movl	$126, %esi
	callq	__assert_func
.LBB24_9:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_16:
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
.LBB24_17:
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
.Lfunc_end24:
	.size	dictExpand, .Lfunc_end24-dictExpand
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
