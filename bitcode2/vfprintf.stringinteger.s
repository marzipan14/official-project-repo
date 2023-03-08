	.text
	.file	"vfprintf.c"
	.globl	__ssputs_r              # -- Begin function __ssputs_r
	.p2align	4, 0x90
	.type	__ssputs_r,@function
__ssputs_r:                             # @__ssputs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movl	12(%rsi), %r13d
	movslq	%r13d, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	ja	.LBB0_8
# %bb.1:
	movzwl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1152, %eax             # imm = 0x480
	je	.LBB0_8
# %bb.2:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	(%r12), %rcx
	movq	24(%r12), %rdi
	subq	%rdi, %rcx
	movl	32(%r12), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %r13d
	shrl	$31, %r13d
	addl	%edx, %r13d
	sarl	%r13d
	movslq	%r13d, %rdx
	movslq	%ecx, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	addq	%r15, %rcx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB0_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r13d
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rsi
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB0_5
# %bb.11:
	callq	realloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_7
# %bb.12:
	movq	24(%r12), %rdi
	callq	free
	jmp	.LBB0_13
.LBB0_5:
	movq	%rsi, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.6:
	movq	%rax, %rbx
	movq	24(%r12), %rsi
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$-1153, %eax            # imm = 0xFB7F
	andl	16(%r12), %eax
	orl	$128, %eax
	movw	%ax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movq	%rbx, 24(%r12)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rbx
	movq	%rbx, (%r12)
	movl	%r13d, 32(%r12)
	subl	%eax, %r13d
	movl	%r13d, 12(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rbx
	movl	%r15d, %r13d
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jbe	.LBB0_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rbx
	movl	%r15d, %r13d
.LBB0_10:
	movq	(%r12), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	subl	%r13d, 12(%r12)
	addq	%rbx, (%r12)
	xorl	%eax, %eax
.LBB0_14:
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
.LBB0_13:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orb	$64, 16(%r12)
	movl	$-1, %eax
	jmp	.LBB0_14
.Lfunc_end0:
	.size	__ssputs_r, .Lfunc_end0-__ssputs_r
                                        # -- End function
	.globl	__ssprint_r             # -- Begin function __ssprint_r
	.p2align	4, 0x90
	.type	__ssprint_r,@function
__ssprint_r:                            # @__ssprint_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	(%rdx), %r14
	cmpq	$0, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_1
# %bb.2:
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	xorl	%r15d, %r15d
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	movq	(%rsi), %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	subl	%r12d, 12(%rsi)
	addq	%rbx, (%rsi)
	movslq	%r13d, %rax
	addq	%rax, %r15
	subq	%rax, %r13
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subq	%rax, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_17
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r14), %r13
	addq	$16, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%r14), %r15
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	12(%rsi), %r12d
	movslq	%r12d, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	jb	.LBB1_14
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	movzwl	16(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1152, %eax             # imm = 0x480
	je	.LBB1_14
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movq	(%rsi), %rcx
	movq	24(%rsi), %rdi
	subq	%rdi, %rcx
	movl	32(%rsi), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %r12d
	shrl	$31, %r12d
	addl	%edx, %r12d
	sarl	%r12d
	movslq	%r12d, %rdx
	movslq	%ecx, %rsi
	leaq	(%rsi,%r13), %rcx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jbe	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r12d
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r12d, %rsi
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB1_11
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	callq	realloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jne	.LBB1_13
	jmp	.LBB1_19
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_20
# %bb.12:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rbx, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	16(%rsi), %eax
	movl	$-1153, %ecx            # imm = 0xFB7F
	andl	%ecx, %eax
	orl	$128, %eax
	movw	%ax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rbx, 24(%rsi)
	addq	%rdx, %rbx
	movq	%rbx, (%rsi)
	movl	%r12d, 32(%rsi)
	subl	%edx, %r12d
	movl	%r12d, 12(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rbx
	movl	%r13d, %r12d
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	jae	.LBB1_16
# %bb.15:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rbx
	movl	%r13d, %r12d
	jmp	.LBB1_16
.LBB1_17:
	xorl	%eax, %eax
	jmp	.LBB1_21
.LBB1_1:
	xorl	%eax, %eax
	jmp	.LBB1_22
.LBB1_19:
	movq	24(%rsi), %rdi
	callq	free
.LBB1_20:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$64, 16(%rax)
	movl	$-1, %eax
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB1_21:
	movq	$0, 16(%rdx)
.LBB1_22:
	movl	$0, 8(%rdx)
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
.Lfunc_end1:
	.size	__ssprint_r, .Lfunc_end1-__ssprint_r
                                        # -- End function
	.globl	_svfiprintf_r           # -- Begin function _svfiprintf_r
	.p2align	4, 0x90
	.type	_svfiprintf_r,@function
_svfiprintf_r:                          # @_svfiprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	cmpb	$0, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB2_4
# %bb.1:
	cmpq	$0, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_4
# %bb.2:
	movl	$64, %edi
	callq	malloc
	movq	%rax, (%r14)
	movq	%rax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_256
# %bb.3:
	movl	$64, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%esi, %esi
	xorl	%edi, %edi
	movq	%r14, -120(%rbp)        # 8-byte Spill
	movq	%r13, -152(%rbp)        # 8-byte Spill
	jmp	.LBB2_8
.LBB2_5:                                #   in Loop: Header=BB2_8 Depth=1
	movl	%r14d, %eax
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	je	.LBB2_265
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	addl	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_11 Depth 3
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_22 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_25 Depth 6
                                        #               Child Loop BB2_29 Depth 7
                                        #             Child Loop BB2_35 Depth 6
                                        #     Child Loop BB2_196 Depth 2
                                        #     Child Loop BB2_208 Depth 2
                                        #     Child Loop BB2_198 Depth 2
                                        #     Child Loop BB2_225 Depth 2
                                        #     Child Loop BB2_237 Depth 2
                                        #     Child Loop BB2_243 Depth 2
                                        #     Child Loop BB2_251 Depth 2
	movl	%ecx, %r12d
	movq	%rdi, -104(%rbp)        # 8-byte Spill
.LBB2_9:                                #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_11 Depth 3
                                        #       Child Loop BB2_21 Depth 3
                                        #         Child Loop BB2_22 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_25 Depth 6
                                        #               Child Loop BB2_29 Depth 7
                                        #             Child Loop BB2_35 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testb	%al, %al
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	je	.LBB2_13
# %bb.10:                               # %.preheader6
                                        #   in Loop: Header=BB2_9 Depth=2
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB2_11:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r14), %eax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB2_11
.LBB2_13:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB2_14:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%r14, %r15
	subq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB2_17
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	%r15d, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%rbx, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_257
# %bb.16:                               #   in Loop: Header=BB2_9 Depth=2
	addl	%r15d, %r12d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_17:                               #   in Loop: Header=BB2_9 Depth=2
	cmpb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %r15        # 8-byte Reload
	je	.LBB2_265
# %bb.18:                               #   in Loop: Header=BB2_9 Depth=2
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	addq	$1, %r14
	movb	$0, -41(%rbp)
	movl	$-1, %r12d
	xorl	%esi, %esi
	movq	%r14, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_19:                               #   in Loop: Header=BB2_21 Depth=3
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_20:                               #   in Loop: Header=BB2_21 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r12d
	cmpl	$-2, %r12d
	movl	$-1, %eax
	cmovlel	%eax, %r12d
.LBB2_21:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_22 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_25 Depth 6
                                        #               Child Loop BB2_29 Depth 7
                                        #             Child Loop BB2_35 Depth 6
	movl	$42, __A_VARIABLE(%rip)
.LBB2_22:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_25 Depth 6
                                        #               Child Loop BB2_29 Depth 7
                                        #             Child Loop BB2_35 Depth 6
	movb	(%rbx), %cl
	addq	$1, %rbx
.LBB2_23:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        #         Parent Loop BB2_22 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_25 Depth 6
                                        #               Child Loop BB2_29 Depth 7
                                        #             Child Loop BB2_35 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%cl, %eax
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_25 Depth=6
	movl	$42, __A_VARIABLE(%rip)
.LBB2_25:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        #         Parent Loop BB2_22 Depth=4
                                        #           Parent Loop BB2_23 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB2_29 Depth 7
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB2_32
# %bb.26:                               #   in Loop: Header=BB2_25 Depth=6
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %eax
	je	.LBB2_42
# %bb.27:                               #   in Loop: Header=BB2_25 Depth=6
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %ecx
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB2_24
# %bb.28:                               # %.preheader
                                        #   in Loop: Header=BB2_25 Depth=6
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB2_29:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        #         Parent Loop BB2_22 Depth=4
                                        #           Parent Loop BB2_23 Depth=5
                                        #             Parent Loop BB2_25 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	leal	(%r12,%r12,4), %eax
	leal	(%rcx,%rax,2), %r12d
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB2_29
# %bb.30:                               #   in Loop: Header=BB2_25 Depth=6
	testl	%r12d, %r12d
	jns	.LBB2_24
# %bb.31:                               #   in Loop: Header=BB2_25 Depth=6
	movl	$-1, %r12d
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_32:                               #   in Loop: Header=BB2_23 Depth=5
	leal	-32(%rax), %ecx
	cmpl	$90, %ecx
	ja	.LBB2_121
# %bb.33:                               #   in Loop: Header=BB2_23 Depth=5
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_34:                               #   in Loop: Header=BB2_23 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_35:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_21 Depth=3
                                        #         Parent Loop BB2_22 Depth=4
                                        #           Parent Loop BB2_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r14,%r14,4), %ecx
	leal	(%rax,%rcx,2), %r14d
	addl	$-48, %r14d
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	movsbl	%cl, %eax
	leal	-48(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jb	.LBB2_35
	jmp	.LBB2_23
.LBB2_36:                               #   in Loop: Header=BB2_22 Depth=4
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_22 Depth=4
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_22 Depth=4
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_39:                               #   in Loop: Header=BB2_22 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jns	.LBB2_22
# %bb.40:                               #   in Loop: Header=BB2_21 Depth=3
	negl	%r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_41:                               # %.loopexit1
                                        #   in Loop: Header=BB2_21 Depth=3
	orl	$4, %esi
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_21 Depth=3
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_19
# %bb.43:                               #   in Loop: Header=BB2_21 Depth=3
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_20
.LBB2_44:                               #   in Loop: Header=BB2_21 Depth=3
	cmpb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_21
# %bb.45:                               #   in Loop: Header=BB2_21 Depth=3
	movb	$32, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_21
.LBB2_46:                               #   in Loop: Header=BB2_21 Depth=3
	orl	$1, %esi
	jmp	.LBB2_21
.LBB2_47:                               #   in Loop: Header=BB2_21 Depth=3
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%rax, %r14
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	movq	%r14, -128(%rbp)        # 8-byte Spill
	testq	%r14, %r14
	movq	-64(%rbp), %r14         # 8-byte Reload
	je	.LBB2_21
# %bb.48:                               #   in Loop: Header=BB2_21 Depth=3
	cmpq	$0, -96(%rbp)           # 8-byte Folded Reload
	je	.LBB2_21
# %bb.49:                               #   in Loop: Header=BB2_21 Depth=3
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_21
# %bb.50:                               #   in Loop: Header=BB2_21 Depth=3
	orl	$1024, %esi             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_21
.LBB2_51:                               #   in Loop: Header=BB2_21 Depth=3
	movb	$43, -41(%rbp)
	jmp	.LBB2_21
.LBB2_52:                               #   in Loop: Header=BB2_21 Depth=3
	orl	$128, %esi
	jmp	.LBB2_21
.LBB2_53:                               #   in Loop: Header=BB2_21 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edx
	cmovel	%ecx, %edx
	cmoveq	%rax, %rbx
	orl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_21
.LBB2_54:                               #   in Loop: Header=BB2_21 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB2_55:                               #   in Loop: Header=BB2_21 Depth=3
	orl	$16, %esi
	jmp	.LBB2_21
.LBB2_56:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB2_61
# %bb.57:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB2_63
# %bb.58:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB2_67
# %bb.59:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	ja	.LBB2_71
# %bb.60:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_72
.LBB2_61:                               #   in Loop: Header=BB2_9 Depth=2
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movslq	%r12d, %rax
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB2_65
# %bb.62:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB2_66
.LBB2_63:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_69
# %bb.64:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_70
.LBB2_65:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB2_66:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_75
.LBB2_67:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	ja	.LBB2_73
# %bb.68:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_74
.LBB2_69:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_70:                               #   in Loop: Header=BB2_9 Depth=2
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB2_75
.LBB2_71:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_72:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	%r12d, (%rax)
	jmp	.LBB2_75
.LBB2_73:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_74:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r12b, (%rax)
.LBB2_75:                               #   in Loop: Header=BB2_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_9
.LBB2_76:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_109
# %bb.77:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_110
.LBB2_78:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_111
# %bb.79:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_112
.LBB2_80:                               #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB2_81:                               # %.loopexit2
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jne	.LBB2_86
# %bb.82:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB2_123
# %bb.83:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB2_143
# %bb.84:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_159
# %bb.85:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_160
.LBB2_86:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_125
# %bb.87:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_126
.LBB2_88:                               #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB2_89:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jne	.LBB2_115
# %bb.90:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB2_128
# %bb.91:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB2_147
# %bb.92:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_165
# %bb.93:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_166
.LBB2_94:                               #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB2_95:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	movq	-104(%rbp), %r15        # 8-byte Reload
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jne	.LBB2_117
# %bb.96:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB2_130
# %bb.97:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB2_149
# %bb.98:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_167
# %bb.99:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_168
.LBB2_100:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.2, %r15d
	movb	$88, %al
	jmp	.LBB2_104
.LBB2_101:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movq	%r14, -64(%rbp)         # 8-byte Spill
	ja	.LBB2_132
# %bb.102:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_133
.LBB2_103:                              # %.loopexit5
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str, %r15d
	movb	$120, %al
.LBB2_104:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	movq	%r14, -64(%rbp)         # 8-byte Spill
	jne	.LBB2_119
# %bb.105:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB2_134
# %bb.106:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB2_151
# %bb.107:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB2_169
# %bb.108:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_170
.LBB2_109:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_110:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %al
	movb	%al, -256(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %ecx
	xorl	%r12d, %r12d
	leaq	-256(%rbp), %r13
	jmp	.LBB2_218
.LBB2_111:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_112:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r13
	movb	$0, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_127
# %bb.113:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB2_142
# %bb.114:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%r12d, %rdx
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memchr
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	%eax, %ecx
	subl	%r13d, %ecx
	testq	%rax, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB2_218
.LBB2_115:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_136
# %bb.116:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_137
.LBB2_117:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_138
# %bb.118:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_139
.LBB2_119:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB2_140
# %bb.120:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB2_141
.LBB2_121:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_264
# %bb.122:                              #   in Loop: Header=BB2_8 Depth=1
	movb	%al, -256(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %ecx
	xorl	%r12d, %r12d
	leaq	-256(%rbp), %r13
	movq	-104(%rbp), %r15        # 8-byte Reload
	jmp	.LBB2_218
.LBB2_123:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_145
# %bb.124:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_146
.LBB2_125:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_126:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB2_163
.LBB2_127:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$6, %r12d
	movl	$6, %ecx
	cmovbl	%r12d, %ecx
	xorl	%r12d, %r12d
	movl	$.L.str.1, %r13d
	jmp	.LBB2_218
.LBB2_128:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_153
# %bb.129:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_154
.LBB2_130:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB2_155
# %bb.131:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_156
.LBB2_132:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_133:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	orl	$2, %esi
	movw	$30768, -82(%rbp)       # imm = 0x7830
	movl	$.L.str, %r15d
	jmp	.LBB2_183
.LBB2_134:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB2_157
# %bb.135:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB2_158
.LBB2_136:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_137:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB2_173
.LBB2_138:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_139:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB2_176
.LBB2_140:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB2_141:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	jmp	.LBB2_179
.LBB2_142:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%esi, %r12d
	movq	%r13, %rdi
	callq	strlen
	movl	%r12d, %esi
	movq	%rax, %rcx
	xorl	%r12d, %r12d
	jmp	.LBB2_218
.LBB2_143:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_161
# %bb.144:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_162
.LBB2_145:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_146:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %r14
	jmp	.LBB2_163
.LBB2_147:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_171
# %bb.148:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_172
.LBB2_149:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_174
# %bb.150:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_175
.LBB2_151:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB2_177
# %bb.152:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_178
.LBB2_153:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_154:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r14d
	jmp	.LBB2_173
.LBB2_155:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_156:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r14d
	jmp	.LBB2_176
.LBB2_157:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB2_158:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rcx), %r14d
	jmp	.LBB2_179
.LBB2_159:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_160:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %r14
	jmp	.LBB2_163
.LBB2_161:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_162:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %r14
.LBB2_163:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r14, %r14
	jns	.LBB2_185
# %bb.164:                              #   in Loop: Header=BB2_8 Depth=1
	negq	%r14
	movb	$45, -41(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_185
.LBB2_165:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_166:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r14d
	jmp	.LBB2_173
.LBB2_167:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_168:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r14d
	jmp	.LBB2_176
.LBB2_169:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB2_170:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %r14d
	jmp	.LBB2_179
.LBB2_171:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_172:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r14d
.LBB2_173:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %esi            # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB2_184
.LBB2_174:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_175:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r14d
.LBB2_176:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB2_184
.LBB2_177:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB2_178:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %r14d
.LBB2_179:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB2_182
# %bb.180:                              #   in Loop: Header=BB2_8 Depth=1
	testq	%r14, %r14
	je	.LBB2_182
# %bb.181:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, -82(%rbp)
	movb	%al, -81(%rbp)
	orl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB2_182:                              #   in Loop: Header=BB2_8 Depth=1
	andl	$-1025, %esi            # imm = 0xFBFF
.LBB2_183:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %eax
.LBB2_184:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$0, -41(%rbp)
.LBB2_185:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB2_191
# %bb.186:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%esi, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB2_192
# %bb.187:                              #   in Loop: Header=BB2_8 Depth=1
	testq	%r14, %r14
	jne	.LBB2_192
# %bb.188:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_190
# %bb.189:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB2_215
.LBB2_190:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%ecx, %esi
	leaq	-156(%rbp), %r13
	jmp	.LBB2_217
	.p2align	4, 0x90
.LBB2_191:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_193
.LBB2_192:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%ecx, %esi
.LBB2_193:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_197
# %bb.194:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, %eax
	je	.LBB2_202
# %bb.195:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-156(%rbp), %r13
	cmpl	$2, %eax
	jne	.LBB2_204
	.p2align	4, 0x90
.LBB2_196:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	andl	$15, %eax
	movzbl	(%r15,%rax), %eax
	movb	%al, -1(%r13)
	addq	$-1, %r13
	shrq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_196
	jmp	.LBB2_217
.LBB2_197:                              # %.preheader21
                                        #   in Loop: Header=BB2_8 Depth=1
	leaq	-157(%rbp), %rax
	.p2align	4, 0x90
.LBB2_198:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r14
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB2_198
# %bb.199:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	1(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB2_217
# %bb.200:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	je	.LBB2_217
# %bb.201:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB2_217
.LBB2_202:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r14
	ja	.LBB2_205
# %bb.203:                              #   in Loop: Header=BB2_8 Depth=1
	addb	$48, %r14b
	movb	%r14b, -157(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_216
.LBB2_204:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.3, %r13d
	movl	%esi, %r14d
	movl	$.L.str.3, %edi
	callq	strlen
	movl	%r14d, %esi
	movq	%rax, %rcx
	movq	-64(%rbp), %r14         # 8-byte Reload
	jmp	.LBB2_218
.LBB2_205:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	-156(%rbp), %r13
	movl	%esi, -68(%rbp)         # 4-byte Spill
	jmp	.LBB2_208
.LBB2_206:                              #   in Loop: Header=BB2_208 Depth=2
	movl	-68(%rbp), %esi         # 4-byte Reload
	.p2align	4, 0x90
.LBB2_207:                              #   in Loop: Header=BB2_208 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r15
	jbe	.LBB2_214
.LBB2_208:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %r15
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r14, %rax
	mulq	%rdx
	movq	%rdx, %r14
	shrq	$3, %r14
	leal	(%r14,%r14), %eax
	leal	(%rax,%rax,4), %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	orb	$48, %dl
	addl	$1, %ecx
	movb	%dl, -1(%r13)
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %esi             # imm = 0x400
	je	.LBB2_207
# %bb.209:                              #   in Loop: Header=BB2_208 Depth=2
	movq	-96(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jne	.LBB2_207
# %bb.210:                              #   in Loop: Header=BB2_208 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %r15
	jb	.LBB2_207
# %bb.211:                              #   in Loop: Header=BB2_208 Depth=2
	cmpb	$127, %al
	je	.LBB2_207
# %bb.212:                              #   in Loop: Header=BB2_208 Depth=2
	addq	-112(%rbp), %r13        # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	-136(%rbp), %rsi        # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	xorl	%ecx, %ecx
	movq	-96(%rbp), %rax         # 8-byte Reload
	cmpb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_206
# %bb.213:                              #   in Loop: Header=BB2_208 Depth=2
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_206
.LBB2_214:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-104(%rbp), %r15        # 8-byte Reload
	jmp	.LBB2_217
.LBB2_215:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, -157(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB2_216:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-157(%rbp), %r13
	.p2align	4, 0x90
.LBB2_217:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	leaq	-156(%rbp), %rax
	movl	%eax, %ecx
	subl	%r13d, %ecx
.LBB2_218:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	%ecx, %r12d
	movq	%rcx, -144(%rbp)        # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	cmovgel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movb	-41(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB2_220
# %bb.219:                              #   in Loop: Header=BB2_8 Depth=1
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB2_220:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	movq	%r14, -64(%rbp)         # 8-byte Spill
	je	.LBB2_222
# %bb.221:                              #   in Loop: Header=BB2_8 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB2_222:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -104(%rbp)        # 8-byte Spill
	movl	%esi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r14d
	movl	%esi, -68(%rbp)         # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jne	.LBB2_230
# %bb.223:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r15d
	jle	.LBB2_230
# %bb.224:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r15d
	jl	.LBB2_227
	.p2align	4, 0x90
.LBB2_225:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_255
# %bb.226:                              #   in Loop: Header=BB2_225 Depth=2
	leal	-16(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB2_225
	jmp	.LBB2_228
.LBB2_227:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r15d, %eax
.LBB2_228:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-120(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
# %bb.229:                              #   in Loop: Header=BB2_8 Depth=1
	movb	-41(%rbp), %al
	movl	-68(%rbp), %esi         # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB2_230:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	movq	-120(%rbp), %r15        # 8-byte Reload
	je	.LBB2_232
# %bb.231:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-41(%rbp), %rdx
	callq	__ssputs_r
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	-68(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
.LBB2_232:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	je	.LBB2_234
# %bb.233:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-82(%rbp), %rdx
	callq	__ssputs_r
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
.LBB2_234:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r14d
	jne	.LBB2_241
# %bb.235:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r14d
	jle	.LBB2_241
# %bb.236:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB2_239
	.p2align	4, 0x90
.LBB2_237:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
# %bb.238:                              #   in Loop: Header=BB2_237 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB2_237
	jmp	.LBB2_240
.LBB2_239:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r14d, %eax
.LBB2_240:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
.LBB2_241:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax        # 8-byte Reload
	subl	%eax, %r12d
	jle	.LBB2_247
# %bb.242:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB2_245
	.p2align	4, 0x90
.LBB2_243:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
# %bb.244:                              #   in Loop: Header=BB2_243 Depth=2
	leal	-16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB2_243
	jmp	.LBB2_246
	.p2align	4, 0x90
.LBB2_245:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r12d, %eax
.LBB2_246:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	-144(%rbp), %rax        # 8-byte Reload
	je	.LBB2_264
.LBB2_247:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_264
# %bb.248:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -68(%rbp)           # 1-byte Folded Reload
	movq	-152(%rbp), %r13        # 8-byte Reload
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	je	.LBB2_7
# %bb.249:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
                                        # kill: def $r14d killed $r14d killed $r14 def $r14
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %r14d
	jle	.LBB2_7
# %bb.250:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r14d
	jl	.LBB2_5
	.p2align	4, 0x90
.LBB2_251:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_265
# %bb.252:                              #   in Loop: Header=BB2_251 Depth=2
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB2_251
	jmp	.LBB2_6
.LBB2_255:
	movq	-120(%rbp), %r15        # 8-byte Reload
.LBB2_264:
	movl	-48(%rbp), %r12d        # 4-byte Reload
.LBB2_265:
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB2_266:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_256:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB2_266
.LBB2_257:
	movq	-120(%rbp), %r15        # 8-byte Reload
	jmp	.LBB2_265
.Lfunc_end2:
	.size	_svfiprintf_r, .Lfunc_end2-_svfiprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_44
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_46
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_47
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_36
	.quad	.LBB2_51
	.quad	.LBB2_121
	.quad	.LBB2_41
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_52
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_34
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_76
	.quad	.LBB2_80
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_88
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_78
	.quad	.LBB2_121
	.quad	.LBB2_94
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_100
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_76
	.quad	.LBB2_81
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_53
	.quad	.LBB2_81
	.quad	.LBB2_55
	.quad	.LBB2_121
	.quad	.LBB2_54
	.quad	.LBB2_121
	.quad	.LBB2_56
	.quad	.LBB2_89
	.quad	.LBB2_101
	.quad	.LBB2_55
	.quad	.LBB2_121
	.quad	.LBB2_78
	.quad	.LBB2_55
	.quad	.LBB2_95
	.quad	.LBB2_121
	.quad	.LBB2_121
	.quad	.LBB2_103
	.quad	.LBB2_121
	.quad	.LBB2_55
                                        # -- End function
	.type	_svfiprintf_r.blanks,@object # @_svfiprintf_r.blanks
	.p2align	4
_svfiprintf_r.blanks:
	.zero	16,32
	.size	_svfiprintf_r.blanks, 16

	.type	_svfiprintf_r.zeroes,@object # @_svfiprintf_r.zeroes
	.p2align	4
_svfiprintf_r.zeroes:
	.zero	16,48
	.size	_svfiprintf_r.zeroes, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(null)"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.3, 26

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
