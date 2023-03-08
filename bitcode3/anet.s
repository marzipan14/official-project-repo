	.text
	.file	"anet.c"
	.globl	anetSetBlock            # -- Begin function anetSetBlock
	.p2align	4, 0x90
	.type	anetSetBlock,@function
anetSetBlock:                           # @anetSetBlock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r12d
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movl	%esi, %edi
	movl	$3, %esi
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	je	.LBB0_1
# %bb.2:
	movl	%eax, %ecx
	orl	$16384, %ecx            # imm = 0x4000
	andl	$-16385, %eax           # imm = 0xBFFF
	testl	%r12d, %r12d
	cmovnel	%ecx, %eax
	movl	%ebx, %edi
	movl	$4, %esi
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	fcntl
	cmpl	$-1, %eax
	jne	.LBB0_5
# %bb.3:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.1, %esi
	jmp	.LBB0_4
.LBB0_1:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str, %esi
.LBB0_4:
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %r15d
.LBB0_5:
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	anetSetBlock, .Lfunc_end0-anetSetBlock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetSetError
	.type	anetSetError,@function
anetSetError:                           # @anetSetError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rsi, %r10
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
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.3:
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rcx
	movl	$256, %esi              # imm = 0x100
	movq	%r10, %rdx
	callq	vsnprintf
.LBB1_4:
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	anetSetError, .Lfunc_end1-anetSetError
                                        # -- End function
	.globl	anetNonBlock            # -- Begin function anetNonBlock
	.p2align	4, 0x90
	.type	anetNonBlock,@function
anetNonBlock:                           # @anetNonBlock
# %bb.0:
	movl	$1, %edx
	jmp	anetSetBlock            # TAILCALL
.Lfunc_end2:
	.size	anetNonBlock, .Lfunc_end2-anetNonBlock
                                        # -- End function
	.globl	anetBlock               # -- Begin function anetBlock
	.p2align	4, 0x90
	.type	anetBlock,@function
anetBlock:                              # @anetBlock
# %bb.0:
	xorl	%edx, %edx
	jmp	anetSetBlock            # TAILCALL
.Lfunc_end3:
	.size	anetBlock, .Lfunc_end3-anetBlock
                                        # -- End function
	.globl	anetKeepAlive           # -- Begin function anetKeepAlive
	.p2align	4, 0x90
	.type	anetKeepAlive,@function
anetKeepAlive:                          # @anetKeepAlive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	leaq	65496(%rbp), %r13
	movl	$1, 65496(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB4_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB4_2
.LBB4_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB4_4
.LBB4_2:
	movl	%esi, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$8, %edx
	movq	%r13, %rcx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB4_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB4_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB4_6:
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	anetKeepAlive, .Lfunc_end4-anetKeepAlive
                                        # -- End function
	.globl	anetEnableTcpNoDelay    # -- Begin function anetEnableTcpNoDelay
	.p2align	4, 0x90
	.type	anetEnableTcpNoDelay,@function
anetEnableTcpNoDelay:                   # @anetEnableTcpNoDelay
# %bb.0:
	movl	$1, %edx
	jmp	anetSetTcpNoDelay       # TAILCALL
.Lfunc_end5:
	.size	anetEnableTcpNoDelay, .Lfunc_end5-anetEnableTcpNoDelay
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetSetTcpNoDelay
	.type	anetSetTcpNoDelay,@function
anetSetTcpNoDelay:                      # @anetSetTcpNoDelay
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	leaq	65496(%rbp), %r13
	movl	%edx, 65496(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB6_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB6_2
.LBB6_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB6_4
.LBB6_2:
	movl	%esi, %edi
	movl	$6, %esi
	movl	$1, %edx
	movq	%r13, %rcx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB6_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB6_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB6_6:
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	anetSetTcpNoDelay, .Lfunc_end6-anetSetTcpNoDelay
                                        # -- End function
	.globl	anetDisableTcpNoDelay   # -- Begin function anetDisableTcpNoDelay
	.p2align	4, 0x90
	.type	anetDisableTcpNoDelay,@function
anetDisableTcpNoDelay:                  # @anetDisableTcpNoDelay
# %bb.0:
	xorl	%edx, %edx
	jmp	anetSetTcpNoDelay       # TAILCALL
.Lfunc_end7:
	.size	anetDisableTcpNoDelay, .Lfunc_end7-anetDisableTcpNoDelay
                                        # -- End function
	.globl	anetSetSendBuffer       # -- Begin function anetSetSendBuffer
	.p2align	4, 0x90
	.type	anetSetSendBuffer,@function
anetSetSendBuffer:                      # @anetSetSendBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movl	%edx, -40(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB8_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB8_2
.LBB8_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
	leaq	-40(%rbp), %r13
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4097, %r12d            # imm = 0x1001
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB8_4
.LBB8_2:
	leaq	-40(%rbp), %rcx
	movl	%esi, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4097, %edx             # imm = 0x1001
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB8_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB8_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB8_6:
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	anetSetSendBuffer, .Lfunc_end8-anetSetSendBuffer
                                        # -- End function
	.globl	anetTcpKeepAlive        # -- Begin function anetTcpKeepAlive
	.p2align	4, 0x90
	.type	anetTcpKeepAlive,@function
anetTcpKeepAlive:                       # @anetTcpKeepAlive
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movl	$1, -40(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB9_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB9_2
.LBB9_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
	leaq	-40(%rbp), %r13
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
	callq	setsockopt
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB9_4
.LBB9_2:
	leaq	-40(%rbp), %rcx
	movl	%esi, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$8, %edx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB9_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB9_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB9_6:
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	anetTcpKeepAlive, .Lfunc_end9-anetTcpKeepAlive
                                        # -- End function
	.globl	anetSendTimeout         # -- Begin function anetSendTimeout
	.p2align	4, 0x90
	.type	anetSendTimeout,@function
anetSendTimeout:                        # @anetSendTimeout
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, %rcx
	movabsq	$2361183241434822607, %rdx # imm = 0x20C49BA5E353F7CF
	movq	%rcx, %rax
	imulq	%rdx
	movq	%rdi, %rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$7, %rdx
	addq	%rax, %rdx
	movq	%rdx, -56(%rbp)
	imulq	$1000, %rdx, %rax       # imm = 0x3E8
	subq	%rax, %rcx
	imulq	$1000, %rcx, %rax       # imm = 0x3E8
	movq	%rax, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB10_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB10_2
.LBB10_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
	leaq	-56(%rbp), %r13
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
	callq	setsockopt
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB10_4
.LBB10_2:
	leaq	-56(%rbp), %rcx
	movl	%esi, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4101, %edx             # imm = 0x1005
	movl	$16, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB10_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB10_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB10_6:
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	anetSendTimeout, .Lfunc_end10-anetSendTimeout
                                        # -- End function
	.globl	anetGenericResolve      # -- Begin function anetGenericResolve
	.p2align	4, 0x90
	.type	anetGenericResolve,@function
anetGenericResolve:                     # @anetGenericResolve
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%r8d, %ebx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	leaq	-128(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	testb	$1, %bl
	je	.LBB11_2
# %bb.1:
	movl	$4, -128(%rbp)
.LBB11_2:
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -124(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB11_5
# %bb.3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB11_4
.LBB11_5:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	leaq	-128(%rbp), %r12
	leaq	-56(%rbp), %r13
	movq	%r14, %rdi
	xorl	%esi, %esi
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
.Ltmp10:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp10
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
	je	.LBB11_8
.LBB11_7:
	callq	gai_strerror
	movl	$.L.str.5, %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %eax
	jmp	.LBB11_12
.LBB11_4:
	leaq	-128(%rbp), %rdx
	leaq	-56(%rbp), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	getaddrinfo
	movl	%eax, %edi
	movl	%eax, -44(%rbp)
	testl	%edi, %edi
	jne	.LBB11_7
.LBB11_8:
	movq	-56(%rbp), %rax
	cmpl	$2, 4(%rax)
	jne	.LBB11_10
# %bb.9:
	movq	24(%rax), %rsi
	addq	$4, %rsi
	movl	$2, %edi
	jmp	.LBB11_11
.LBB11_10:
	movq	24(%rax), %rsi
	addq	$8, %rsi
	movl	$10, %edi
.LBB11_11:
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	callq	inet_ntop
	movq	-56(%rbp), %rdi
	callq	freeaddrinfo
	xorl	%eax, %eax
.LBB11_12:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	anetGenericResolve, .Lfunc_end11-anetGenericResolve
                                        # -- End function
	.globl	anetResolve             # -- Begin function anetResolve
	.p2align	4, 0x90
	.type	anetResolve,@function
anetResolve:                            # @anetResolve
# %bb.0:
	xorl	%r8d, %r8d
	jmp	anetGenericResolve      # TAILCALL
.Lfunc_end12:
	.size	anetResolve, .Lfunc_end12-anetResolve
                                        # -- End function
	.globl	anetResolveIP           # -- Begin function anetResolveIP
	.p2align	4, 0x90
	.type	anetResolveIP,@function
anetResolveIP:                          # @anetResolveIP
# %bb.0:
	movl	$1, %r8d
	jmp	anetGenericResolve      # TAILCALL
.Lfunc_end13:
	.size	anetResolveIP, .Lfunc_end13-anetResolveIP
                                        # -- End function
	.globl	anetTcpConnect          # -- Begin function anetTcpConnect
	.p2align	4, 0x90
	.type	anetTcpConnect,@function
anetTcpConnect:                         # @anetTcpConnect
# %bb.0:
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	jmp	anetTcpGenericConnect   # TAILCALL
.Lfunc_end14:
	.size	anetTcpConnect, .Lfunc_end14-anetTcpConnect
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetTcpGenericConnect
	.type	anetTcpGenericConnect,@function
anetTcpGenericConnect:                  # @anetTcpGenericConnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	$-1, -44(%rbp)
	leaq	-98(%rbp), %rdi
	movl	$6, %esi
	movl	$.L.str.11, %edx
	movl	%r14d, %ecx
	xorl	%eax, %eax
	callq	snprintf
	leaq	-160(%rbp), %rdi
	movl	$48, %edx
	xorl	%esi, %esi
	callq	memset
	movabsq	$4294967296, %rax       # imm = 0x100000000
	movq	%rax, -156(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	jb	.LBB15_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_2
.LBB15_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	leaq	-98(%rbp), %rsi
	leaq	-160(%rbp), %r12
	leaq	-88(%rbp), %r13
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
	#APP
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %edi
	jmp	.LBB15_4
.LBB15_2:
	leaq	-98(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	leaq	-88(%rbp), %rcx
	movq	%rbx, %rdi
	callq	getaddrinfo
	movl	%eax, %edi
	movl	%eax, -48(%rbp)
.LBB15_4:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	testl	%edi, %edi
	je	.LBB15_5
# %bb.42:
	callq	gai_strerror
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %eax
	jmp	.LBB15_41
.LBB15_5:
	movl	%r14d, -92(%rbp)        # 4-byte Spill
	movq	-88(%rbp), %r14
	testq	%r14, %r14
	je	.LBB15_31
# %bb.6:
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	sete	%al
	xorb	$1, %al
	movb	%al, -64(%rbp)          # 1-byte Spill
	leaq	-80(%rbp), %r13
	jmp	.LBB15_7
	.p2align	4, 0x90
.LBB15_29:                              #   in Loop: Header=BB15_7 Depth=1
	movl	-44(%rbp), %edi
	callq	close
	movl	$-1, -44(%rbp)
.LBB15_30:                              #   in Loop: Header=BB15_7 Depth=1
	movq	40(%r14), %r14
	testq	%r14, %r14
	je	.LBB15_31
.LBB15_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_25 Depth 2
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_10
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_9
.LBB15_10:                              #   in Loop: Header=BB15_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	12(%r14), %r12
	movslq	4(%r14), %rdi
	movslq	8(%r14), %rsi
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
.Ltmp14:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp14
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
	movl	-44(%rbp), %esi
	cmpl	$-1, %esi
	jne	.LBB15_12
	jmp	.LBB15_30
	.p2align	4, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_7 Depth=1
	movl	4(%r14), %edi
	movl	8(%r14), %esi
	movl	12(%r14), %edx
	callq	socket
	movl	%eax, %esi
	movl	%eax, -44(%rbp)
	cmpl	$-1, %esi
	je	.LBB15_30
.LBB15_12:                              #   in Loop: Header=BB15_7 Depth=1
	movq	%rbx, %rdi
	callq	anetSetReuseAddr
	cmpl	$-1, %eax
	je	.LBB15_35
# %bb.13:                               #   in Loop: Header=BB15_7 Depth=1
	testb	$1, -52(%rbp)           # 1-byte Folded Reload
	je	.LBB15_15
# %bb.14:                               #   in Loop: Header=BB15_7 Depth=1
	movl	-44(%rbp), %esi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	anetSetBlock
	testl	%eax, %eax
	jne	.LBB15_35
.LBB15_15:                              #   in Loop: Header=BB15_7 Depth=1
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB15_27
# %bb.16:                               #   in Loop: Header=BB15_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB15_19
# %bb.17:                               #   in Loop: Header=BB15_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB15_18
.LBB15_19:                              #   in Loop: Header=BB15_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	-72(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	leaq	-160(%rbp), %r12
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
	callq	getaddrinfo
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
	movl	%r11d, -48(%rbp)

	#NO_APP
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	je	.LBB15_21
	jmp	.LBB15_23
.LBB15_18:                              #   in Loop: Header=BB15_7 Depth=1
	movq	-72(%rbp), %rdi         # 8-byte Reload
	xorl	%esi, %esi
	leaq	-160(%rbp), %rdx
	movq	%r13, %rcx
	callq	getaddrinfo
	movl	%eax, -48(%rbp)
	testl	%eax, %eax
	jne	.LBB15_23
.LBB15_21:                              #   in Loop: Header=BB15_7 Depth=1
	movq	%rbx, %r15
	movq	-80(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB15_22
	.p2align	4, 0x90
.LBB15_25:                              #   Parent Loop BB15_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %edi
	movq	24(%rbx), %rsi
	movl	16(%rbx), %edx
	callq	bind
	cmpl	$-1, %eax
	jne	.LBB15_26
# %bb.24:                               #   in Loop: Header=BB15_25 Depth=2
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB15_25
	jmp	.LBB15_32
.LBB15_26:                              #   in Loop: Header=BB15_7 Depth=1
	movq	-80(%rbp), %rdi
	callq	freeaddrinfo
	movq	%r15, %rbx
.LBB15_27:                              #   in Loop: Header=BB15_7 Depth=1
	movl	-44(%rbp), %edi
	movq	24(%r14), %rsi
	movl	16(%r14), %edx
	callq	connect
	cmpl	$-1, %eax
	jne	.LBB15_37
# %bb.28:                               #   in Loop: Header=BB15_7 Depth=1
	callq	__errno
	cmpl	$119, (%rax)
	sete	%al
	testb	%al, -64(%rbp)          # 1-byte Folded Reload
	je	.LBB15_29
	jmp	.LBB15_37
.LBB15_31:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.13, %esi
	jmp	.LBB15_34
.LBB15_32:
	movq	-80(%rbp), %rdi
	movq	%r15, %rbx
.LBB15_33:
	callq	freeaddrinfo
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.12, %esi
.LBB15_34:
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
.LBB15_35:
	movl	-44(%rbp), %edi
	cmpl	$-1, %edi
	je	.LBB15_37
# %bb.36:
	callq	close
	movl	$-1, -44(%rbp)
.LBB15_37:
	movq	-88(%rbp), %rdi
	callq	freeaddrinfo
	movl	-44(%rbp), %eax
	movl	-52(%rbp), %r8d         # 4-byte Reload
	testb	$2, %r8b
	je	.LBB15_41
# %bb.38:
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB15_41
# %bb.39:
	cmpl	$-1, %eax
	jne	.LBB15_41
# %bb.40:
	movq	%rbx, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movl	-92(%rbp), %edx         # 4-byte Reload
	xorl	%ecx, %ecx
	callq	anetTcpGenericConnect
.LBB15_41:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_23:
	movl	%eax, %edi
	callq	gai_strerror
	movl	$.L.str.5, %esi
	jmp	.LBB15_34
.LBB15_22:
	movq	%r15, %rbx
	xorl	%edi, %edi
	jmp	.LBB15_33
.Lfunc_end15:
	.size	anetTcpGenericConnect, .Lfunc_end15-anetTcpGenericConnect
                                        # -- End function
	.globl	anetTcpNonBlockConnect  # -- Begin function anetTcpNonBlockConnect
	.p2align	4, 0x90
	.type	anetTcpNonBlockConnect,@function
anetTcpNonBlockConnect:                 # @anetTcpNonBlockConnect
# %bb.0:
	xorl	%ecx, %ecx
	movl	$1, %r8d
	jmp	anetTcpGenericConnect   # TAILCALL
.Lfunc_end16:
	.size	anetTcpNonBlockConnect, .Lfunc_end16-anetTcpNonBlockConnect
                                        # -- End function
	.globl	anetTcpNonBlockBindConnect # -- Begin function anetTcpNonBlockBindConnect
	.p2align	4, 0x90
	.type	anetTcpNonBlockBindConnect,@function
anetTcpNonBlockBindConnect:             # @anetTcpNonBlockBindConnect
# %bb.0:
	movl	$1, %r8d
	jmp	anetTcpGenericConnect   # TAILCALL
.Lfunc_end17:
	.size	anetTcpNonBlockBindConnect, .Lfunc_end17-anetTcpNonBlockBindConnect
                                        # -- End function
	.globl	anetTcpNonBlockBestEffortBindConnect # -- Begin function anetTcpNonBlockBestEffortBindConnect
	.p2align	4, 0x90
	.type	anetTcpNonBlockBestEffortBindConnect,@function
anetTcpNonBlockBestEffortBindConnect:   # @anetTcpNonBlockBestEffortBindConnect
# %bb.0:
	movl	$3, %r8d
	jmp	anetTcpGenericConnect   # TAILCALL
.Lfunc_end18:
	.size	anetTcpNonBlockBestEffortBindConnect, .Lfunc_end18-anetTcpNonBlockBestEffortBindConnect
                                        # -- End function
	.globl	anetUnixGenericConnect  # -- Begin function anetUnixGenericConnect
	.p2align	4, 0x90
	.type	anetUnixGenericConnect,@function
anetUnixGenericConnect:                 # @anetUnixGenericConnect
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	callq	anetCreateSocket
	movl	$-1, %r14d
	cmpl	$-1, %eax
	je	.LBB19_10
# %bb.1:
	movl	%eax, %r13d
	movb	$1, -152(%rbp)
	leaq	-151(%rbp), %rdi
	movl	$107, %edx
	movq	%rbx, %rsi
	callq	strncpy
	testb	$1, %r12b
	je	.LBB19_3
# %bb.2:
	movq	%r15, %rdi
	movl	%r13d, %esi
	movl	$1, %edx
	callq	anetSetBlock
	testl	%eax, %eax
	jne	.LBB19_9
.LBB19_3:
	leaq	-152(%rbp), %rsi
	movl	%r13d, %edi
	movl	$109, %edx
	callq	connect
	cmpl	$-1, %eax
	jne	.LBB19_4
# %bb.5:
	callq	__errno
	cmpl	$119, (%rax)
	jne	.LBB19_8
# %bb.6:
	andl	$1, %r12d
	je	.LBB19_8
.LBB19_4:
	movl	%r13d, %r14d
	jmp	.LBB19_10
.LBB19_8:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
.LBB19_9:
	movl	%r13d, %edi
	callq	close
.LBB19_10:
	movl	%r14d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	anetUnixGenericConnect, .Lfunc_end19-anetUnixGenericConnect
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetCreateSocket
	.type	anetCreateSocket,@function
anetCreateSocket:                       # @anetCreateSocket
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB20_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB20_2
.LBB20_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
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
	movl	%r11d, -28(%rbp)

	#NO_APP
	movl	-28(%rbp), %esi
	cmpl	$-1, %esi
	je	.LBB20_5
.LBB20_6:
	movq	%rbx, %rdi
	callq	anetSetReuseAddr
	movl	%eax, %ecx
	movl	-28(%rbp), %eax
	cmpl	$-1, %ecx
	jne	.LBB20_9
# %bb.7:
	movl	%eax, %edi
	callq	close
	jmp	.LBB20_8
.LBB20_2:
	movl	$1, %edi
	movl	$1, %esi
	xorl	%edx, %edx
	callq	socket
	movl	%eax, %esi
	movl	%eax, -28(%rbp)
	cmpl	$-1, %esi
	jne	.LBB20_6
.LBB20_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
.LBB20_8:
	movl	$-1, %eax
.LBB20_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	anetCreateSocket, .Lfunc_end20-anetCreateSocket
                                        # -- End function
	.globl	anetUnixConnect         # -- Begin function anetUnixConnect
	.p2align	4, 0x90
	.type	anetUnixConnect,@function
anetUnixConnect:                        # @anetUnixConnect
# %bb.0:
	xorl	%edx, %edx
	jmp	anetUnixGenericConnect  # TAILCALL
.Lfunc_end21:
	.size	anetUnixConnect, .Lfunc_end21-anetUnixConnect
                                        # -- End function
	.globl	anetUnixNonBlockConnect # -- Begin function anetUnixNonBlockConnect
	.p2align	4, 0x90
	.type	anetUnixNonBlockConnect,@function
anetUnixNonBlockConnect:                # @anetUnixNonBlockConnect
# %bb.0:
	movl	$1, %edx
	jmp	anetUnixGenericConnect  # TAILCALL
.Lfunc_end22:
	.size	anetUnixNonBlockConnect, .Lfunc_end22-anetUnixNonBlockConnect
                                        # -- End function
	.globl	anetRead                # -- Begin function anetRead
	.p2align	4, 0x90
	.type	anetRead,@function
anetRead:                               # @anetRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testl	%edx, %edx
	je	.LBB23_1
# %bb.2:                                # %.preheader
	movl	%edx, %r14d
	movq	%rsi, %r12
	movl	%edi, %r15d
	movslq	%edx, %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movl	%r15d, %edi
	movq	%r12, %rsi
	callq	read
	cmpq	$-1, %rax
	je	.LBB23_4
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	testq	%rax, %rax
	je	.LBB23_6
# %bb.7:                                #   in Loop: Header=BB23_3 Depth=1
	addq	%rax, %rbx
	addq	%rax, %r12
	cmpq	%r13, %rbx
	jne	.LBB23_3
	jmp	.LBB23_8
.LBB23_1:
	xorl	%r14d, %r14d
	jmp	.LBB23_8
.LBB23_4:
	movl	$-1, %r14d
	jmp	.LBB23_8
.LBB23_6:
	movl	%ebx, %r14d
.LBB23_8:
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	anetRead, .Lfunc_end23-anetRead
                                        # -- End function
	.globl	anetWrite               # -- Begin function anetWrite
	.p2align	4, 0x90
	.type	anetWrite,@function
anetWrite:                              # @anetWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testl	%edx, %edx
	je	.LBB24_1
# %bb.2:                                # %.preheader
	movl	%edx, %r14d
	movq	%rsi, %r12
	movl	%edi, %r15d
	movslq	%edx, %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdx
	subq	%rbx, %rdx
	movl	%r15d, %edi
	movq	%r12, %rsi
	callq	write
	cmpq	$-1, %rax
	je	.LBB24_4
# %bb.5:                                #   in Loop: Header=BB24_3 Depth=1
	testq	%rax, %rax
	je	.LBB24_6
# %bb.7:                                #   in Loop: Header=BB24_3 Depth=1
	addq	%rax, %rbx
	addq	%rax, %r12
	cmpq	%r13, %rbx
	jne	.LBB24_3
	jmp	.LBB24_8
.LBB24_1:
	xorl	%r14d, %r14d
	jmp	.LBB24_8
.LBB24_4:
	movl	$-1, %r14d
	jmp	.LBB24_8
.LBB24_6:
	movl	%ebx, %r14d
.LBB24_8:
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
	.size	anetWrite, .Lfunc_end24-anetWrite
                                        # -- End function
	.globl	anetTcpServer           # -- Begin function anetTcpServer
	.p2align	4, 0x90
	.type	anetTcpServer,@function
anetTcpServer:                          # @anetTcpServer
# %bb.0:
	movl	%ecx, %r8d
	movl	$2, %ecx
	jmp	_anetTcpServer          # TAILCALL
.Lfunc_end25:
	.size	anetTcpServer, .Lfunc_end25-anetTcpServer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _anetTcpServer
	.type	_anetTcpServer,@function
_anetTcpServer:                         # @_anetTcpServer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%r8d, -76(%rbp)         # 4-byte Spill
	movl	%ecx, %ebx
	movq	%rdx, %r14
	movl	%esi, %ecx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$-1, -44(%rbp)
	leaq	65446(%rbp), %r12
	leaq	65392(%rbp), %r13
	leaq	65464(%rbp), %r15
	movl	$6, %esi
	movl	$.L.str.11, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	$48, %edx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	%ebx, -80(%rbp)         # 4-byte Spill
	movl	%ebx, 65396(%rbp)
	movl	$1, 65400(%rbp)
	movl	$1, 65392(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB26_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB26_2
.LBB26_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movq	%r12, %rsi
	movq	%r13, %r12
	movq	%r15, %r13
	movl	4096(%rax), %r15d
	movq	%r14, %rdi
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
.Ltmp20:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp20
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
.Ltmp21:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp21
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
	movl	%r11d, -60(%rbp)

	#NO_APP
	movl	-60(%rbp), %edi
	testl	%edi, %edi
	je	.LBB26_5
.LBB26_33:
	callq	gai_strerror
	movl	$.L.str.5, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %eax
	jmp	.LBB26_32
.LBB26_2:
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	getaddrinfo
	movl	%eax, %edi
	movl	%eax, -60(%rbp)
	testl	%edi, %edi
	jne	.LBB26_33
.LBB26_5:
	movq	65464(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB26_23
# %bb.6:
	movl	$_intrstack_start, %r13d
	movl	$_end, %r8d
	.p2align	4, 0x90
.LBB26_7:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r13, %rax
	jb	.LBB26_10
# %bb.8:                                #   in Loop: Header=BB26_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	cmpq	%r8, %rax
	jbe	.LBB26_9
.LBB26_10:                              #   in Loop: Header=BB26_7 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	12(%rbx), %r12
	movslq	4(%rbx), %rdi
	movslq	8(%rbx), %rsi
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
.Ltmp22:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp22
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
.Ltmp23:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp23
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %r14d
	cmpl	$-1, %r14d
	je	.LBB26_22
	jmp	.LBB26_12
	.p2align	4, 0x90
.LBB26_9:                               #   in Loop: Header=BB26_7 Depth=1
	movl	4(%rbx), %edi
	movl	8(%rbx), %esi
	movl	12(%rbx), %edx
	callq	socket
	movl	$_end, %r8d
	movl	%eax, %r14d
	movl	%eax, -44(%rbp)
	cmpl	$-1, %r14d
	jne	.LBB26_12
.LBB26_22:                              #   in Loop: Header=BB26_7 Depth=1
	movq	40(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB26_7
.LBB26_23:
	callq	__errno
	movl	(%rax), %edx
	movl	$.L.str.15, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	anetSetError
.LBB26_24:
	movl	-44(%rbp), %edi
	cmpl	$-1, %edi
	je	.LBB26_26
# %bb.25:
	callq	close
.LBB26_26:
	movl	$-1, -44(%rbp)
.LBB26_27:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB26_30
# %bb.28:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB26_29
.LBB26_30:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	65464(%rbp), %rdi
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
.Ltmp24:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp24
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	freeaddrinfo
.Ltmp25:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp25
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
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB26_31
.LBB26_12:
	cmpl	$10, -80(%rbp)          # 4-byte Folded Reload
	jne	.LBB26_20
# %bb.13:
	leaq	65452(%rbp), %r13
	movl	$1, 65452(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB26_16
# %bb.14:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB26_15
.LBB26_16:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%r14d, %rdi
	movl	$41, %esi
	movl	$27, %r12d
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
.Ltmp26:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp26
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
.Ltmp27:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp27
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
	movl	%r11d, -64(%rbp)

	#NO_APP
	movl	-64(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB26_18
.LBB26_19:
	movl	-44(%rbp), %r14d
.LBB26_20:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movq	%rdi, %r14
	callq	anetSetReuseAddr
	cmpl	$-1, %eax
	je	.LBB26_24
# %bb.21:
	movl	-44(%rbp), %esi
	movq	24(%rbx), %rdx
	movl	16(%rbx), %ecx
	movq	%r14, %rdi
	movl	-76(%rbp), %r8d         # 4-byte Reload
	callq	anetListen
	cmpl	$-1, %eax
	jne	.LBB26_27
	jmp	.LBB26_26
.LBB26_29:
	movq	65464(%rbp), %rdi
	callq	freeaddrinfo
.LBB26_31:
	movl	-44(%rbp), %eax
.LBB26_32:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_15:
	movl	%r14d, %edi
	movl	$41, %esi
	movl	$27, %edx
	movq	%r13, %rcx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -64(%rbp)
	cmpl	$-1, %eax
	jne	.LBB26_19
.LBB26_18:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.16, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	%r14d, %edi
	callq	close
	jmp	.LBB26_24
.Lfunc_end26:
	.size	_anetTcpServer, .Lfunc_end26-_anetTcpServer
                                        # -- End function
	.globl	anetTcp6Server          # -- Begin function anetTcp6Server
	.p2align	4, 0x90
	.type	anetTcp6Server,@function
anetTcp6Server:                         # @anetTcp6Server
# %bb.0:
	movl	%ecx, %r8d
	movl	$10, %ecx
	jmp	_anetTcpServer          # TAILCALL
.Lfunc_end27:
	.size	anetTcp6Server, .Lfunc_end27-anetTcp6Server
                                        # -- End function
	.globl	anetUnixServer          # -- Begin function anetUnixServer
	.p2align	4, 0x90
	.type	anetUnixServer,@function
anetUnixServer:                         # @anetUnixServer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%ecx, %r12d
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	anetCreateSocket
	movl	$-1, %r15d
	cmpl	$-1, %eax
	je	.LBB28_5
# %bb.1:
	movl	%eax, %r13d
	leaq	-160(%rbp), %rdi
	movl	$109, %edx
	xorl	%esi, %esi
	callq	memset
	movb	$1, -160(%rbp)
	leaq	-159(%rbp), %rdi
	movl	$107, %edx
	movq	%r14, %rsi
	callq	strncpy
	movq	%rbx, %rdi
	movl	%r13d, %esi
	leaq	-160(%rbp), %rdx
	movl	$109, %ecx
	movl	%r12d, %r8d
	callq	anetListen
	cmpl	$-1, %eax
	je	.LBB28_5
# %bb.2:
	movl	-44(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	je	.LBB28_4
# %bb.3:
	leaq	-159(%rbp), %rdi
	callq	chmod
.LBB28_4:
	movl	%r13d, %r15d
.LBB28_5:
	movl	%r15d, %eax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	anetUnixServer, .Lfunc_end28-anetUnixServer
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetListen
	.type	anetListen,@function
anetListen:                             # @anetListen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r13d
	movq	%rdi, %rbx
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %esi
	movslq	%r13d, %r14
	cmpq	%rsi, %rax
	jb	.LBB29_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %esi
	cmpq	%rsi, %rax
	jbe	.LBB29_2
.LBB29_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	%ecx, %r12d
	movq	%r14, %rdi
	movq	%rdx, %rsi
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
.Ltmp28:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp28
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	bind
	movq	%rax, %rsi
.Ltmp29:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp29
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	cmpl	$-1, %eax
	je	.LBB29_5
.LBB29_6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB29_9
# %bb.7:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB29_8
.LBB29_9:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%r8d, %rsi
	movq	%r14, %rdi
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
.Ltmp30:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp30
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	listen
	movq	%rax, %rsi
.Ltmp31:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp31
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %ecx
	jmp	.LBB29_10
.LBB29_2:
	movl	%r13d, %edi
	movq	%rdx, %rsi
	movl	%ecx, %edx
	movl	%r8d, %r15d
	callq	bind
	movl	%r15d, %r8d
	movl	%eax, -44(%rbp)
	cmpl	$-1, %eax
	jne	.LBB29_6
.LBB29_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.12, %esi
	jmp	.LBB29_12
.LBB29_8:
	movl	%r13d, %edi
	movl	%r8d, %esi
	callq	listen
	movl	%eax, %ecx
	movl	%eax, -44(%rbp)
.LBB29_10:
	xorl	%eax, %eax
	cmpl	$-1, %ecx
	jne	.LBB29_13
# %bb.11:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.17, %esi
.LBB29_12:
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	%r13d, %edi
	callq	close
	movl	$-1, %eax
.LBB29_13:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	anetListen, .Lfunc_end29-anetListen
                                        # -- End function
	.globl	anetTcpAccept           # -- Begin function anetTcpAccept
	.p2align	4, 0x90
	.type	anetTcpAccept,@function
anetTcpAccept:                          # @anetTcpAccept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movl	$sa, %edx
	movl	$salen, %ecx
	callq	anetGenericAccept
	movl	%eax, %ebx
	cmpl	$-1, %eax
	je	.LBB30_9
# %bb.1:
	cmpb	$2, sa+1(%rip)
	jne	.LBB30_4
# %bb.2:
	testq	%r12, %r12
	je	.LBB30_7
# %bb.3:
	movl	$sa+4, %esi
	movl	$2, %edi
	jmp	.LBB30_6
.LBB30_4:
	testq	%r12, %r12
	je	.LBB30_7
# %bb.5:
	movl	$sa+8, %esi
	movl	$10, %edi
.LBB30_6:
	movq	%r12, %rdx
	movl	%r15d, %ecx
	callq	inet_ntop
.LBB30_7:
	testq	%r14, %r14
	je	.LBB30_9
# %bb.8:
	movzwl	sa+2(%rip), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, (%r14)
.LBB30_9:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	anetTcpAccept, .Lfunc_end30-anetTcpAccept
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetGenericAccept
	.type	anetGenericAccept,@function
anetGenericAccept:                      # @anetGenericAccept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movslq	%esi, %r14
	.p2align	4, 0x90
.LBB31_1:                               # =>This Inner Loop Header: Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB31_4
# %bb.2:                                #   in Loop: Header=BB31_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB31_3
.LBB31_4:                               #   in Loop: Header=BB31_1 Depth=1
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movq	%r14, %rdi
	movq	%r13, %rsi
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
.Ltmp32:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp32
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	accept
	movq	%rax, %rsi
.Ltmp33:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp33
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %ebx
	cmpl	$-1, %ebx
	je	.LBB31_6
	jmp	.LBB31_8
	.p2align	4, 0x90
.LBB31_3:                               #   in Loop: Header=BB31_1 Depth=1
	movl	-48(%rbp), %edi         # 4-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	accept
	movl	%eax, %ebx
	movl	%eax, -44(%rbp)
	cmpl	$-1, %ebx
	jne	.LBB31_8
.LBB31_6:                               #   in Loop: Header=BB31_1 Depth=1
	callq	__errno
	cmpl	$4, (%rax)
	je	.LBB31_1
# %bb.7:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.18, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
.LBB31_8:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end31:
	.size	anetGenericAccept, .Lfunc_end31-anetGenericAccept
                                        # -- End function
	.globl	anetUnixAccept          # -- Begin function anetUnixAccept
	.p2align	4, 0x90
	.type	anetUnixAccept,@function
anetUnixAccept:                         # @anetUnixAccept
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movl	$109, -4(%rbp)
	leaq	-120(%rbp), %rdx
	leaq	-4(%rbp), %rcx
	callq	anetGenericAccept
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	anetUnixAccept, .Lfunc_end32-anetUnixAccept
                                        # -- End function
	.globl	anetPeerToString        # -- Begin function anetPeerToString
	.p2align	4, 0x90
	.type	anetPeerToString,@function
anetPeerToString:                       # @anetPeerToString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movl	$28, -48(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB33_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB33_2
.LBB33_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%edi, %rdi
	leaq	-80(%rbp), %rsi
	leaq	-48(%rbp), %r12
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
.Ltmp34:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp34
	movq	%r12, %rdx
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	getpeername
	movq	%rax, %rsi
.Ltmp35:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp35
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
	movl	%r11d, -44(%rbp)

	#NO_APP
	movl	-44(%rbp), %eax
	testq	%rbx, %rbx
	jne	.LBB33_5
	jmp	.LBB33_19
.LBB33_2:
	leaq	-80(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	getpeername
	movl	%eax, -44(%rbp)
	testq	%rbx, %rbx
	je	.LBB33_19
.LBB33_5:
	cmpl	$-1, %eax
	je	.LBB33_19
# %bb.6:
	movb	-79(%rbp), %al
	cmpb	$1, %al
	je	.LBB33_16
# %bb.7:
	cmpb	$10, %al
	je	.LBB33_14
# %bb.8:
	cmpb	$2, %al
	jne	.LBB33_19
# %bb.9:
	testq	%r13, %r13
	je	.LBB33_12
# %bb.10:
	leaq	-76(%rbp), %rsi
	movl	$2, %edi
	jmp	.LBB33_11
.LBB33_19:
	testq	%r13, %r13
	je	.LBB33_24
# %bb.20:
	cmpq	$2, %rbx
	jb	.LBB33_22
# %bb.21:
	movw	$63, (%r13)
	jmp	.LBB33_24
.LBB33_22:
	cmpq	$1, %rbx
	jne	.LBB33_24
# %bb.23:
	movb	$0, (%r13)
.LBB33_24:
	movl	$-1, %ebx
	testq	%r14, %r14
	je	.LBB33_27
.LBB33_26:
	movl	$0, (%r14)
	jmp	.LBB33_27
.LBB33_16:
	testq	%r13, %r13
	je	.LBB33_18
# %bb.17:
	movl	$.L.str.7, %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	callq	strncpy
.LBB33_18:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	jne	.LBB33_26
	jmp	.LBB33_27
.LBB33_14:
	testq	%r13, %r13
	je	.LBB33_12
# %bb.15:
	leaq	-72(%rbp), %rsi
	movl	$10, %edi
.LBB33_11:
	movq	%r13, %rdx
	movl	%ebx, %ecx
	callq	inet_ntop
.LBB33_12:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB33_27
# %bb.13:
	movzwl	-78(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, (%r14)
.LBB33_27:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	anetPeerToString, .Lfunc_end33-anetPeerToString
                                        # -- End function
	.globl	anetFormatAddr          # -- Begin function anetFormatAddr
	.p2align	4, 0x90
	.type	anetFormatAddr,@function
anetFormatAddr:                         # @anetFormatAddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r14d
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rdx, %rdi
	movl	$58, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.9, %eax
	movl	$.L.str.8, %edx
	cmoveq	%rax, %rdx
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	snprintf                # TAILCALL
.Lfunc_end34:
	.size	anetFormatAddr, .Lfunc_end34-anetFormatAddr
                                        # -- End function
	.globl	anetFormatPeer          # -- Begin function anetFormatPeer
	.p2align	4, 0x90
	.type	anetFormatPeer,@function
anetFormatPeer:                         # @anetFormatPeer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r12
	leaq	-96(%rbp), %r15
	leaq	-36(%rbp), %rcx
	movl	$46, %edx
	movq	%r15, %rsi
	callq	anetPeerToString
	movl	-36(%rbp), %ebx
	movq	%r15, %rdi
	movl	$58, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.9, %eax
	movl	$.L.str.8, %edx
	cmoveq	%rax, %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	snprintf
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	anetFormatPeer, .Lfunc_end35-anetFormatPeer
                                        # -- End function
	.globl	anetSockName            # -- Begin function anetSockName
	.p2align	4, 0x90
	.type	anetSockName,@function
anetSockName:                           # @anetSockName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	$28, -28(%rbp)
	leaq	-56(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	callq	getsockname
	cmpl	$-1, %eax
	je	.LBB36_1
# %bb.4:
	cmpb	$2, -55(%rbp)
	jne	.LBB36_7
# %bb.5:
	testq	%rbx, %rbx
	je	.LBB36_10
# %bb.6:
	leaq	-52(%rbp), %rsi
	movl	$2, %edi
	jmp	.LBB36_9
.LBB36_1:
	testq	%r14, %r14
	je	.LBB36_3
# %bb.2:
	movl	$0, (%r14)
.LBB36_3:
	movw	$63, (%rbx)
	movl	$-1, %ebx
	jmp	.LBB36_12
.LBB36_7:
	testq	%rbx, %rbx
	je	.LBB36_10
# %bb.8:
	leaq	-48(%rbp), %rsi
	movl	$10, %edi
.LBB36_9:
	movq	%rbx, %rdx
	movl	%r15d, %ecx
	callq	inet_ntop
.LBB36_10:
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB36_12
# %bb.11:
	movzwl	-54(%rbp), %edi
	callq	lwip_htons
	movzwl	%ax, %eax
	movl	%eax, (%r14)
.LBB36_12:
	movl	%ebx, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	anetSockName, .Lfunc_end36-anetSockName
                                        # -- End function
	.globl	anetFormatSock          # -- Begin function anetFormatSock
	.p2align	4, 0x90
	.type	anetFormatSock,@function
anetFormatSock:                         # @anetFormatSock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r12
	leaq	-96(%rbp), %r15
	leaq	-36(%rbp), %rcx
	movl	$46, %edx
	movq	%r15, %rsi
	callq	anetSockName
	movl	-36(%rbp), %ebx
	movq	%r15, %rdi
	movl	$58, %esi
	callq	strchr
	testq	%rax, %rax
	movl	$.L.str.9, %eax
	movl	$.L.str.8, %edx
	cmoveq	%rax, %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	snprintf
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end37:
	.size	anetFormatSock, .Lfunc_end37-anetFormatSock
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function anetSetReuseAddr
	.type	anetSetReuseAddr,@function
anetSetReuseAddr:                       # @anetSetReuseAddr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	leaq	65496(%rbp), %r13
	movl	$1, 65496(%rbp)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB38_3
# %bb.1:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB38_2
.LBB38_3:
	#APP
	movq	%rsp, %rax
	#NO_APP
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movslq	%esi, %rdi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4, %r12d
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
.Ltmp36:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp36
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
.Ltmp37:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp37
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
	movl	%r11d, -36(%rbp)

	#NO_APP
	movl	-36(%rbp), %eax
	jmp	.LBB38_4
.LBB38_2:
	movl	%esi, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4, %edx
	movq	%r13, %rcx
	movl	$4, %r8d
	callq	setsockopt
	movl	%eax, -36(%rbp)
.LBB38_4:
	xorl	%ecx, %ecx
	cmpl	$-1, %eax
	jne	.LBB38_6
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.14, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	anetSetError
	movl	$-1, %ecx
.LBB38_6:
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end38:
	.size	anetSetReuseAddr, .Lfunc_end38-anetSetReuseAddr
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"fcntl(F_GETFL): %s"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"fcntl(F_SETFL,O_NONBLOCK): %s"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"setsockopt SO_KEEPALIVE: %s"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"setsockopt SO_SNDBUF: %s"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"setsockopt SO_SNDTIMEO: %s"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"connect: %s"
	.size	.L.str.6, 12

	.type	sa,@object              # @sa
	.section	.data_shared,"aw",@progbits
	.p2align	2
sa:
	.zero	28
	.size	sa, 28

	.type	salen,@object           # @salen
	.p2align	2
salen:
	.long	28                      # 0x1c
	.size	salen, 4

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"/unixsocket"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"[%s]:%d"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s:%d"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"setsockopt TCP_NODELAY: %s"
	.size	.L.str.10, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%d"
	.size	.L.str.11, 3

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"bind: %s"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"creating socket: %s"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"setsockopt SO_REUSEADDR: %s"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"unable to bind socket, errno: %d"
	.size	.L.str.15, 33

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"setsockopt: %s"
	.size	.L.str.16, 15

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"listen: %s"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"accept: %s"
	.size	.L.str.18, 11

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
