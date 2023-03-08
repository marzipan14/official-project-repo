	.text
	.file	"net.c"
	.globl	redisKeepAlive          # -- Begin function redisKeepAlive
	.p2align	4, 0x90
	.type	redisKeepAlive,@function
redisKeepAlive:                         # @redisKeepAlive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$1, -44(%rbp)
	movslq	132(%rdi), %rdi
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB0_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB0_2
.LBB0_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	leaq	-44(%rbp), %r13
	movl	$4095, %esi             # imm = 0xFFF
	movl	$8, %r12d
	movl	$4, %r8d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp0:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp0
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	setsockopt
	movq	%rax, %rsi
.Ltmp1:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp1
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB0_5
.LBB0_6:
	movl	%r14d, -44(%rbp)
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_2:
	leaq	-44(%rbp), %rcx
                                        # kill: def $edi killed $edi killed $rdi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$8, %edx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	jne	.LBB0_6
.LBB0_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rbx, %rdi
	movl	$2, %esi
	movq	%rax, %rdx
	callq	__redisSetError
	movl	$-1, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	redisKeepAlive, .Lfunc_end0-redisKeepAlive
                                        # -- End function
	.globl	redisCheckSocketError   # -- Begin function redisCheckSocketError
	.p2align	4, 0x90
	.type	redisCheckSocketError,@function
redisCheckSocketError:                  # @redisCheckSocketError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	movq	%rdi, %r15
	movl	$0, -36(%rbp)
	movl	$4, -40(%rbp)
	movl	132(%rdi), %edi
	leaq	-36(%rbp), %rcx
	leaq	-40(%rbp), %r8
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4103, %edx             # imm = 0x1007
	callq	getsockopt
	cmpl	$-1, %eax
	je	.LBB1_1
# %bb.2:
	movl	-36(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB1_3
# %bb.4:
	callq	__errno
	movl	%ebx, (%rax)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	callq	__errno
	movl	(%rax), %edi
	leaq	-176(%rbp), %rbx
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	__xpg_strerror_r
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
	jmp	.LBB1_5
.LBB1_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	leaq	-176(%rbp), %r14
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str, %ecx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r12
	addq	$-176, %r12
	subq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__xpg_strerror_r
	movq	%r15, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
.LBB1_5:
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB1_6
.LBB1_3:
	xorl	%eax, %eax
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	redisCheckSocketError, .Lfunc_end1-redisCheckSocketError
                                        # -- End function
	.globl	redisContextSetTimeout  # -- Begin function redisContextSetTimeout
	.p2align	4, 0x90
	.type	redisContextSetTimeout,@function
redisContextSetTimeout:                 # @redisContextSetTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, %r14
	movq	%rsi, -64(%rbp)
	movq	%rdx, -56(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_2
.LBB2_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	132(%r14), %rdi
	leaq	-64(%rbp), %r13
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4102, %r12d            # imm = 0x1006
	movl	$16, %r8d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp2:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp2
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	setsockopt
	movq	%rax, %rsi
.Ltmp3:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp3
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB2_5
.LBB2_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB2_9
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB2_8
.LBB2_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	132(%r14), %rdi
	leaq	-64(%rbp), %r13
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4101, %r12d            # imm = 0x1005
	movl	$16, %r8d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp4:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp4
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	setsockopt
	movq	%rax, %rsi
.Ltmp5:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp5
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	jmp	.LBB2_10
.LBB2_2:
	movl	132(%r14), %edi
	leaq	-64(%rbp), %rcx
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4102, %edx             # imm = 0x1006
	movl	$16, %r8d
	callq	setsockopt
	movl	%eax, -44(%rbp)
	cmpl	$-1, %eax
	jne	.LBB2_6
.LBB2_5:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	leaq	-192(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.1, %ecx
	jmp	.LBB2_12
.LBB2_8:
	movl	132(%r14), %edi
	leaq	-64(%rbp), %rcx
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4101, %edx             # imm = 0x1005
	movl	$16, %r8d
	callq	setsockopt
	movl	%eax, -44(%rbp)
.LBB2_10:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB2_13
# %bb.11:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	leaq	-192(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.2, %ecx
.LBB2_12:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r12
	addq	$-192, %r12
	subq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__xpg_strerror_r
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	redisContextSetTimeout, .Lfunc_end2-redisContextSetTimeout
                                        # -- End function
	.globl	redisContextConnectTcp  # -- Begin function redisContextConnectTcp
	.p2align	4, 0x90
	.type	redisContextConnectTcp,@function
redisContextConnectTcp:                 # @redisContextConnectTcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%r8d, %r8d
	callq	_redisContextConnectTcp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	redisContextConnectTcp, .Lfunc_end3-redisContextConnectTcp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _redisContextConnectTcp
	.type	_redisContextConnectTcp,@function
_redisContextConnectTcp:                # @_redisContextConnectTcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	movq	%r8, %r12
	movq	%rcx, %rbx
	movl	%edx, %r15d
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	136(%rdi), %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movq	$0, -64(%rbp)
	movl	$0, 160(%rdi)
	movl	%edx, 192(%rdi)
	movq	176(%rdi), %rdi
	cmpq	%rsi, %rdi
	je	.LBB4_4
# %bb.1:
	testq	%rdi, %rdi
	je	.LBB4_3
# %bb.2:
	callq	free
.LBB4_3:
	movq	%r13, %rdi
	callq	strdup
	movq	%rax, 176(%r14)
.LBB4_4:
	movq	168(%r14), %rdi
	testq	%rbx, %rbx
	je	.LBB4_12
# %bb.5:
	cmpq	%rbx, %rdi
	je	.LBB4_9
# %bb.6:
	testq	%rdi, %rdi
	jne	.LBB4_8
# %bb.7:
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rdi
	movq	%rax, 168(%r14)
.LBB4_8:
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	168(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
.LBB4_9:
	movq	8(%rbx), %rax
	cmpq	$1000000, %rax          # imm = 0xF4240
	jg	.LBB4_11
# %bb.10:
	movq	(%rbx), %rcx
	movabsq	$9223372036854774, %rdx # imm = 0x20C49BA5E353F6
	cmpq	%rdx, %rcx
	jle	.LBB4_16
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.4, %edx
	movq	%r14, %rdi
	movl	$1, %esi
	jmp	.LBB4_72
.LBB4_12:
	testq	%rdi, %rdi
	je	.LBB4_14
# %bb.13:
	callq	free
.LBB4_14:
	movq	$0, 168(%r14)
.LBB4_15:
	movq	$-1, %rbx
.LBB4_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	184(%r14), %rdi
	testq	%r12, %r12
	je	.LBB4_20
# %bb.18:
	cmpq	%r12, %rdi
	je	.LBB4_22
# %bb.19:
	callq	free
	movq	%r12, %rdi
	callq	strdup
	jmp	.LBB4_21
.LBB4_20:
	callq	free
	xorl	%eax, %eax
.LBB4_21:
	movq	%rax, 184(%r14)
.LBB4_22:
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	%r13, %rbx
	leaq	-70(%rbp), %rdi
	movl	$6, %esi
	movl	$.L.str.5, %edx
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	snprintf
	leaq	-160(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	movabsq	$4294967298, %rax       # imm = 0x100000002
	movq	%rax, -156(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_24
# %bb.23:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_25
.LBB4_24:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r14), %rdi
	leaq	-70(%rbp), %rsi
	leaq	-160(%rbp), %r12
	leaq	-64(%rbp), %r13
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp6:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp6
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	getaddrinfo
	movq	%rax, %rsi
.Ltmp7:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp7
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB4_26
	jmp	.LBB4_31
.LBB4_25:
	movq	176(%r14), %rdi
	leaq	-70(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	callq	getaddrinfo
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	je	.LBB4_31
.LBB4_26:
	movl	$10, -156(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_28
# %bb.27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_30
.LBB4_28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	leaq	-70(%rbp), %rsi
	leaq	-160(%rbp), %r12
	leaq	-64(%rbp), %r13
	movq	%rbx, %rdi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp8:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp8
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	getaddrinfo
	movq	%rax, %rsi
.Ltmp9:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp9
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %edi
	testl	%edi, %edi
	je	.LBB4_31
.LBB4_29:
	callq	gai_strerror
	movq	%r14, %rdi
	movl	$2, %esi
	movq	%rax, %rdx
	callq	__redisSetError
	movl	$-1, %eax
	jmp	.LBB4_75
.LBB4_16:
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	addq	$999, %rax              # imm = 0x3E7
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	movl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmovbq	%rdx, %rbx
	jmp	.LBB4_17
.LBB4_30:
	leaq	-70(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-64(%rbp), %rcx
	movq	%rbx, %rdi
	callq	getaddrinfo
	movl	%eax, %edi
	movl	%eax, -44(%rbp)
	testl	%edi, %edi
	jne	.LBB4_29
.LBB4_31:
	movq	-64(%rbp), %r13
	testq	%r13, %r13
	je	.LBB4_71
# %bb.32:
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
.LBB4_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_34 Depth 2
                                        #       Child Loop BB4_51 Depth 3
	movq	%r13, -104(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rbx        # 8-byte Reload
.LBB4_34:                               #   Parent Loop BB4_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_51 Depth 3
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_36
# %bb.35:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_37
.LBB4_36:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	12(%r13), %r12
	movslq	4(%r13), %rdi
	movslq	8(%r13), %rsi
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp10:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp10
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	socket
	movq	%rax, %rsi
.Ltmp11:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp11
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %eax
	cmpl	$-1, %eax
	jne	.LBB4_38
	jmp	.LBB4_70
.LBB4_37:                               #   in Loop: Header=BB4_34 Depth=2
	movl	4(%r13), %edi
	movl	8(%r13), %esi
	movl	12(%r13), %edx
	callq	socket
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	je	.LBB4_70
.LBB4_38:                               #   in Loop: Header=BB4_34 Depth=2
	movl	%eax, 132(%r14)
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	redisSetBlocking
	movl	$-1, %r12d
	testl	%eax, %eax
	jne	.LBB4_74
# %bb.39:                               #   in Loop: Header=BB4_34 Depth=2
	cmpq	$0, 184(%r14)
	je	.LBB4_57
# %bb.40:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_42
# %bb.41:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_44
.LBB4_42:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	184(%r14), %rdi
	xorl	%esi, %esi
	leaq	-160(%rbp), %r12
	leaq	-96(%rbp), %r13
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp12:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp12
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	getaddrinfo
	movq	%rax, %rsi
.Ltmp13:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp13
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movl	$-1, %r12d
	#APP
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.LBB4_45
	jmp	.LBB4_43
.LBB4_44:                               #   in Loop: Header=BB4_34 Depth=2
	movq	184(%r14), %rdi
	xorl	%esi, %esi
	leaq	-160(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	getaddrinfo
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	jne	.LBB4_43
.LBB4_45:                               #   in Loop: Header=BB4_34 Depth=2
	testb	$-128, -52(%rbp)        # 1-byte Folded Reload
	movq	-104(%rbp), %r13        # 8-byte Reload
	je	.LBB4_50
# %bb.46:                               #   in Loop: Header=BB4_34 Depth=2
	movl	$1, -80(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_48
# %bb.47:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_49
.LBB4_48:                               #   in Loop: Header=BB4_34 Depth=2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	-48(%rbp), %rdi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4, %r12d
	movl	$4, %r8d
	leaq	-80(%rbp), %r13
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp14:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp14
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	setsockopt
	movq	%rax, %rsi
.Ltmp15:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp15
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	movq	-104(%rbp), %r13        # 8-byte Reload
	movl	$-1, %r12d
	#APP
	movl	%r11d, -288(%rbp)

	#NO_APP
	movl	-288(%rbp), %eax
	testl	%eax, %eax
	jns	.LBB4_50
	jmp	.LBB4_74
.LBB4_49:                               #   in Loop: Header=BB4_34 Depth=2
	movl	-48(%rbp), %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4, %edx
	leaq	-80(%rbp), %rcx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -288(%rbp)
	testl	%eax, %eax
	js	.LBB4_74
	.p2align	4, 0x90
.LBB4_50:                               #   in Loop: Header=BB4_34 Depth=2
	movq	%rbx, %r15
	movq	-96(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB4_76
	.p2align	4, 0x90
.LBB4_51:                               #   Parent Loop BB4_33 Depth=1
                                        #     Parent Loop BB4_34 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %edi
	movq	24(%rbx), %rsi
	movl	16(%rbx), %edx
	callq	bind
	cmpl	$-1, %eax
	jne	.LBB4_56
# %bb.52:                               #   in Loop: Header=BB4_51 Depth=3
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB4_51
	jmp	.LBB4_53
.LBB4_56:                               #   in Loop: Header=BB4_34 Depth=2
	movq	-96(%rbp), %rdi
	callq	freeaddrinfo
	movq	%r15, %rbx
.LBB4_57:                               #   in Loop: Header=BB4_34 Depth=2
	movl	-48(%rbp), %edi
	movq	24(%r13), %rsi
	movl	16(%r13), %edx
	callq	connect
	cmpl	$-1, %eax
	jne	.LBB4_78
# %bb.58:                               #   in Loop: Header=BB4_34 Depth=2
	callq	__errno
	cmpl	$118, (%rax)
	je	.LBB4_67
# %bb.59:                               #   in Loop: Header=BB4_34 Depth=2
	callq	__errno
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	jne	.LBB4_61
# %bb.60:                               #   in Loop: Header=BB4_34 Depth=2
	cmpl	$119, (%rax)
	je	.LBB4_80
.LBB4_61:                               #   in Loop: Header=BB4_34 Depth=2
	callq	__errno
	testb	$-128, -52(%rbp)        # 1-byte Folded Reload
	je	.LBB4_77
# %bb.62:                               #   in Loop: Header=BB4_34 Depth=2
	cmpl	$125, (%rax)
	jne	.LBB4_77
# %bb.63:                               #   in Loop: Header=BB4_34 Depth=2
	cmpl	$8, -76(%rbp)           # 4-byte Folded Reload
	jg	.LBB4_74
# %bb.64:                               #   in Loop: Header=BB4_34 Depth=2
	movl	132(%r14), %edi
	testl	%edi, %edi
	js	.LBB4_66
# %bb.65:                               #   in Loop: Header=BB4_34 Depth=2
	callq	close
	movl	$-1, 132(%r14)
.LBB4_66:                               #   in Loop: Header=BB4_34 Depth=2
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_34
.LBB4_67:                               #   in Loop: Header=BB4_33 Depth=1
	movl	132(%r14), %edi
	testl	%edi, %edi
	js	.LBB4_69
# %bb.68:                               #   in Loop: Header=BB4_33 Depth=1
	callq	close
	movl	$-1, 132(%r14)
.LBB4_69:                               #   in Loop: Header=BB4_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB4_70:                               #   in Loop: Header=BB4_33 Depth=1
	movq	40(%r13), %r13
	testq	%r13, %r13
	jne	.LBB4_33
.LBB4_71:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	leaq	-288(%rbp), %rbx
	movl	$128, %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
.LBB4_72:
	callq	__redisSetError
.LBB4_73:
	movl	$-1, %r12d
	jmp	.LBB4_74
.LBB4_53:
	movq	-96(%rbp), %rdi
.LBB4_54:
	callq	freeaddrinfo
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	leaq	-288(%rbp), %rbx
	movl	$128, %esi
	movl	$.L.str.7, %edx
.LBB4_55:
	movq	%rbx, %rdi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2, %esi
	movq	%rbx, %rdx
	callq	__redisSetError
.LBB4_74:
	movl	%r12d, -44(%rbp)
	movq	-64(%rbp), %rdi
	callq	freeaddrinfo
	movl	-44(%rbp), %eax
.LBB4_75:
	movl	$42, __A_VARIABLE(%rip)
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_43:
	movl	%eax, %edi
	callq	gai_strerror
	leaq	-288(%rbp), %rbx
	movl	$128, %esi
	movl	$.L.str.6, %edx
	jmp	.LBB4_55
.LBB4_76:
	xorl	%edi, %edi
	jmp	.LBB4_54
.LBB4_77:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	redisContextWaitReady
	testl	%eax, %eax
	jne	.LBB4_74
.LBB4_78:
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB4_80
# %bb.79:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	redisSetBlocking
	testl	%eax, %eax
	jne	.LBB4_74
.LBB4_80:
	movl	$1, -88(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_82
# %bb.81:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_83
.LBB4_82:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movslq	132(%r14), %rdi
	leaq	-88(%rbp), %r13
	movl	$6, %esi
	movl	$1, %r12d
	movl	$4, %r8d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp16:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp16
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	setsockopt
	movq	%rax, %rsi
.Ltmp17:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp17
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -84(%rbp)

	#NO_APP
	movl	-84(%rbp), %eax
	jmp	.LBB4_84
.LBB4_83:
	movl	132(%r14), %edi
	leaq	-88(%rbp), %rcx
	movl	$6, %esi
	movl	$1, %edx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -84(%rbp)
.LBB4_84:
	cmpl	$-1, %eax
	je	.LBB4_86
# %bb.85:
	movl	$42, __A_VARIABLE(%rip)
	orb	$2, 136(%r14)
	xorl	%r12d, %r12d
	jmp	.LBB4_74
.LBB4_86:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm0, -208(%rbp)
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm0, -240(%rbp)
	movaps	%xmm0, -256(%rbp)
	movaps	%xmm0, -272(%rbp)
	movaps	%xmm0, -288(%rbp)
	leaq	-288(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.9, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r12
	addq	$-288, %r12             # imm = 0xFEE0
	subq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__xpg_strerror_r
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	132(%r14), %edi
	testl	%edi, %edi
	js	.LBB4_88
# %bb.87:
	callq	close
	movl	$-1, 132(%r14)
.LBB4_88:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_73
.Lfunc_end4:
	.size	_redisContextConnectTcp, .Lfunc_end4-_redisContextConnectTcp
                                        # -- End function
	.globl	redisContextConnectBindTcp # -- Begin function redisContextConnectBindTcp
	.p2align	4, 0x90
	.type	redisContextConnectBindTcp,@function
redisContextConnectBindTcp:             # @redisContextConnectBindTcp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	_redisContextConnectTcp
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	redisContextConnectBindTcp, .Lfunc_end5-redisContextConnectBindTcp
                                        # -- End function
	.globl	redisContextConnectUnix # -- Begin function redisContextConnectUnix
	.p2align	4, 0x90
	.type	redisContextConnectUnix,@function
redisContextConnectUnix:                # @redisContextConnectUnix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, %r13
	movl	136(%rdi), %ebx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jb	.LBB6_2
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB6_14
.LBB6_2:
	movq	%rsi, %r14
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edi
	movl	$1, %esi
	xorl	%r12d, %r12d
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp0, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp18:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp18
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	socket
	movq	%rax, %rsi
.Ltmp19:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp19
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp0, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	movq	%rsi, %r11
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB6_15
.LBB6_3:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	%eax, 132(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	redisSetBlocking
	movl	$-1, %r12d
	testl	%eax, %eax
	jne	.LBB6_27
# %bb.4:
	movl	$1, 160(%r13)
	cmpq	%r14, 200(%r13)
	je	.LBB6_6
# %bb.5:
	movq	%r14, %rdi
	callq	strdup
	movq	%rax, 200(%r13)
.LBB6_6:
	movq	168(%r13), %rdi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB6_16
# %bb.7:
	cmpq	%rbx, %rdi
	je	.LBB6_11
# %bb.8:
	testq	%rdi, %rdi
	jne	.LBB6_10
# %bb.9:
	movl	$16, %edi
	callq	malloc
	movq	%rax, %rdi
	movq	%rax, 168(%r13)
.LBB6_10:
	movl	$16, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	168(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB6_19
.LBB6_11:
	movq	8(%rbx), %rax
	cmpq	$1000000, %rax          # imm = 0xF4240
	jg	.LBB6_13
# %bb.12:
	movq	(%rbx), %rcx
	movabsq	$9223372036854774, %rdx # imm = 0x20C49BA5E353F6
	cmpq	%rdx, %rcx
	jle	.LBB6_20
.LBB6_13:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_27
.LBB6_14:
	movq	%rsi, %r14
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, -48(%rbp)
	cmpl	$-1, %eax
	jne	.LBB6_3
.LBB6_15:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm0, -192(%rbp)
	callq	__errno
	movl	(%rax), %edi
	leaq	-192(%rbp), %r14
	movl	$128, %edx
	movq	%r14, %rsi
	callq	__xpg_strerror_r
	movq	%r13, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	jmp	.LBB6_27
.LBB6_16:
	testq	%rdi, %rdi
	je	.LBB6_18
# %bb.17:
	callq	free
.LBB6_18:
	movq	$0, 168(%r13)
.LBB6_19:
	movq	$-1, %r15
	jmp	.LBB6_21
.LBB6_20:
	imulq	$1000, %rcx, %rcx       # imm = 0x3E8
	addq	$999, %rax              # imm = 0x3E7
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	imulq	%rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	addq	%rcx, %rdx
	cmpq	$2147483647, %rdx       # imm = 0x7FFFFFFF
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	cmovbq	%rdx, %r15
.LBB6_21:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, -192(%rbp)
	leaq	-191(%rbp), %rdi
	movl	$107, %edx
	movq	%r14, %rsi
	callq	strncpy
	movl	132(%r13), %edi
	leaq	-192(%rbp), %rsi
	movl	$109, %edx
	callq	connect
	cmpl	$-1, %eax
	je	.LBB6_24
.LBB6_22:
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB6_26
# %bb.23:
	movq	%r13, %rdi
	movl	$1, %esi
	callq	redisSetBlocking
	testl	%eax, %eax
	jne	.LBB6_27
	jmp	.LBB6_26
.LBB6_24:
	callq	__errno
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB6_28
# %bb.25:
	cmpl	$119, (%rax)
	jne	.LBB6_28
.LBB6_26:
	orb	$2, 136(%r13)
	xorl	%r12d, %r12d
.LBB6_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_28:
	movq	%r13, %rdi
	movq	%r15, %rsi
	callq	redisContextWaitReady
	testl	%eax, %eax
	jne	.LBB6_27
	jmp	.LBB6_22
.Lfunc_end6:
	.size	redisContextConnectUnix, .Lfunc_end6-redisContextConnectUnix
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisSetBlocking
	.type	redisSetBlocking,@function
redisSetBlocking:                       # @redisSetBlocking
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	132(%rdi), %edi
	xorl	%ebx, %ebx
	movl	$3, %esi
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB7_1
# %bb.2:
	movl	%eax, %ecx
	andl	$-16385, %ecx           # imm = 0xBFFF
	orl	$16384, %eax            # imm = 0x4000
	testl	%r15d, %r15d
	cmovnel	%ecx, %eax
	movl	132(%r14), %edi
	movl	$4, %esi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	jne	.LBB7_7
# %bb.3:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	leaq	-160(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.11, %ecx
	jmp	.LBB7_4
.LBB7_1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	leaq	-160(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.10, %ecx
.LBB7_4:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r12
	addq	$-160, %r12
	subq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__xpg_strerror_r
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	132(%r14), %edi
	testl	%edi, %edi
	js	.LBB7_6
# %bb.5:
	callq	close
	movl	$-1, 132(%r14)
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	redisSetBlocking, .Lfunc_end7-redisSetBlocking
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function redisContextWaitReady
	.type	redisContextWaitReady,@function
redisContextWaitReady:                  # @redisContextWaitReady
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$144, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	132(%rdi), %eax
	movl	%eax, -40(%rbp)
	movw	$2, -36(%rbp)
	callq	__errno
	cmpl	$119, (%rax)
	jne	.LBB8_6
# %bb.1:
	leaq	-40(%rbp), %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	callq	poll
	testl	%eax, %eax
	je	.LBB8_5
# %bb.2:
	cmpl	$-1, %eax
	jne	.LBB8_4
# %bb.3:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	leaq	-176(%rbp), %r15
	movl	$128, %ebx
	movl	$128, %esi
	movl	$.L.str.3, %edx
	movl	$.L.str.12, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	cltq
	leaq	(%rax,%rbp), %r12
	addq	$-176, %r12
	subq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	__xpg_strerror_r
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%r15, %rdx
	jmp	.LBB8_7
.LBB8_5:
	callq	__errno
	movl	$116, (%rax)
.LBB8_6:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm0, -176(%rbp)
	callq	__errno
	movl	(%rax), %edi
	leaq	-176(%rbp), %rbx
	movl	$128, %edx
	movq	%rbx, %rsi
	callq	__xpg_strerror_r
	movq	%r14, %rdi
	movl	$1, %esi
	movq	%rbx, %rdx
.LBB8_7:
	callq	__redisSetError
	movl	$42, __A_VARIABLE(%rip)
	movl	132(%r14), %edi
	testl	%edi, %edi
	js	.LBB8_9
# %bb.8:
	callq	close
	movl	$-1, 132(%r14)
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$144, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_4:
	movq	%r14, %rdi
	callq	redisCheckSocketError
	negl	%eax
	sbbl	%eax, %eax
	jmp	.LBB8_10
.Lfunc_end8:
	.size	redisContextWaitReady, .Lfunc_end8-redisContextWaitReady
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"getsockopt(SO_ERROR)"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"setsockopt(SO_RCVTIMEO)"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"setsockopt(SO_SNDTIMEO)"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s: "
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid timeout specified"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%d"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Can't get addr: %s"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Can't bind socket: %s"
	.size	.L.str.7, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Can't create socket: %s"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"setsockopt(TCP_NODELAY)"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"fcntl(F_GETFL)"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"fcntl(F_SETFL)"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"poll(2)"
	.size	.L.str.12, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
