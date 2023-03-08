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
	movq	%rsi, %r13
	movl	12(%rsi), %ecx
	movslq	%ecx, %rdx
	cmpq	%r15, %rdx
	ja	.LBB0_6
# %bb.1:
	movzwl	16(%r13), %eax
	testl	$1152, %eax             # imm = 0x480
	je	.LBB0_6
# %bb.2:
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	(%r13), %rcx
	movq	24(%r13), %rdi
	subq	%rdi, %rcx
	movl	32(%r13), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movslq	%esi, %rbx
	movslq	%ecx, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	addq	%r15, %rcx
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	cmoval	%ecx, %ebx
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB0_3
# %bb.7:
	movslq	%ebx, %rsi
	callq	realloc
	movq	%rax, %r12
	testq	%rax, %rax
	jne	.LBB0_5
# %bb.8:
	movq	24(%r13), %rdi
	callq	free
	jmp	.LBB0_9
.LBB0_3:
	movslq	%ebx, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_9
# %bb.4:
	movq	%rax, %r12
	movq	24(%r13), %rsi
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movl	$-1153, %eax            # imm = 0xFB7F
	andl	16(%r13), %eax
	orl	$128, %eax
	movw	%ax, 16(%r13)
.LBB0_5:
	movq	%r12, 24(%r13)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r12
	movq	%r12, (%r13)
	movl	%ebx, 32(%r13)
	subl	%eax, %ebx
	movl	%ebx, 12(%r13)
	movslq	%r15d, %rdx
	movl	%r15d, %ecx
.LBB0_6:
	cmpq	%r15, %rdx
	cmovbel	%ecx, %r15d
	movq	(%r13), %rdi
	movslq	%r15d, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	subl	%ebx, 12(%r13)
	addq	%rbx, (%r13)
	xorl	%eax, %eax
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_9:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	orb	$64, 16(%r13)
	movl	$-1, %eax
	jmp	.LBB0_10
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
	movq	%rdx, %r15
	cmpq	$0, 16(%rdx)
	je	.LBB1_1
# %bb.2:
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	(%r15), %r13
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_3
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	callq	realloc
	movq	%rax, %r15
	testq	%rax, %rax
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	je	.LBB1_15
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%r15, 24(%rsi)
	addq	%rdx, %r15
	movq	%r15, (%rsi)
	movl	%ebx, 32(%rsi)
	subl	%edx, %ebx
	movl	%ebx, 12(%rsi)
	movslq	%r12d, %rdx
	movl	%r12d, %ecx
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	cmpq	%rdx, %r12
	cmovbl	%r12d, %ecx
	movq	(%rsi), %rdi
	movslq	%ecx, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memmove
	movq	-48(%rbp), %rsi         # 8-byte Reload
	subl	%ebx, 12(%rsi)
	addq	%rbx, (%rsi)
	movslq	%r12d, %rax
	addq	%rax, %r14
	subq	%rax, %r12
	subq	%rax, 16(%r15)
	je	.LBB1_13
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	testq	%r12, %r12
	jne	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%r13), %r12
	addq	$16, %r13
	testq	%r12, %r12
	je	.LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%r13), %r14
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	12(%rsi), %ecx
	movslq	%ecx, %rdx
	cmpq	%rdx, %r12
	jb	.LBB1_12
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	movzwl	16(%rsi), %eax
	testl	$1152, %eax             # imm = 0x480
	je	.LBB1_12
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	movq	(%rsi), %rcx
	movq	24(%rsi), %rdi
	subq	%rdi, %rcx
	movl	32(%rsi), %edx
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	sarl	%esi
	movslq	%esi, %rbx
	movslq	%ecx, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	addq	%r12, %rcx
	addq	$1, %rcx
	cmpq	%rbx, %rcx
	cmoval	%ecx, %ebx
	movslq	%ebx, %rsi
	testl	$1024, %eax             # imm = 0x400
	je	.LBB1_14
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	movq	%rsi, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_16
# %bb.10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rax, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rsi
	movq	%r15, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	16(%rsi), %eax
	movl	$-1153, %ecx            # imm = 0xFB7F
	andl	%ecx, %eax
	orl	$128, %eax
	movw	%ax, 16(%rsi)
	jmp	.LBB1_11
.LBB1_13:
	xorl	%eax, %eax
	jmp	.LBB1_17
.LBB1_1:
	xorl	%eax, %eax
	jmp	.LBB1_18
.LBB1_15:
	movq	24(%rsi), %rdi
	callq	free
.LBB1_16:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$64, 16(%rax)
	movl	$-1, %eax
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB1_17:
	movq	$0, 16(%r15)
.LBB1_18:
	movl	$0, 8(%r15)
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
	movq	%rsi, %r15
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	cmpb	$0, 16(%rsi)
	jns	.LBB2_4
# %bb.1:
	cmpq	$0, 24(%r15)
	jne	.LBB2_4
# %bb.2:
	movl	$64, %edi
	callq	malloc
	movq	%rax, (%r15)
	movq	%rax, 24(%r15)
	testq	%rax, %rax
	je	.LBB2_235
# %bb.3:
	movl	$64, 32(%r15)
.LBB2_4:
	leaq	8(%r13), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r13, -136(%rbp)        # 8-byte Spill
	movq	%r15, -96(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
.LBB2_5:                                #   in Loop: Header=BB2_8 Depth=1
	movl	%r14d, %eax
.LBB2_6:                                #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	je	.LBB2_233
.LBB2_7:                                #   in Loop: Header=BB2_8 Depth=1
	cmpl	%ecx, %eax
	cmovgel	%eax, %ecx
	addl	%r12d, %ecx
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_21 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_27 Depth 6
                                        #           Child Loop BB2_32 Depth 5
                                        #     Child Loop BB2_179 Depth 2
                                        #     Child Loop BB2_226 Depth 2
                                        #     Child Loop BB2_184 Depth 2
                                        #     Child Loop BB2_193 Depth 2
                                        #     Child Loop BB2_205 Depth 2
                                        #     Child Loop BB2_211 Depth 2
                                        #     Child Loop BB2_219 Depth 2
	movl	%ecx, %r12d
.LBB2_9:                                #   Parent Loop BB2_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_10 Depth 3
                                        #       Child Loop BB2_20 Depth 3
                                        #         Child Loop BB2_21 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_27 Depth 6
                                        #           Child Loop BB2_32 Depth 5
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB2_10:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14), %eax
	testb	%al, %al
	je	.LBB2_13
# %bb.11:                               #   in Loop: Header=BB2_10 Depth=3
	cmpb	$37, %al
	je	.LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_10 Depth=3
	addq	$1, %r14
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%r14, %r15
	subq	%rbx, %r15
	testl	%r15d, %r15d
	je	.LBB2_16
# %bb.14:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	%r15d, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_236
# %bb.15:                               #   in Loop: Header=BB2_9 Depth=2
	addl	%r15d, %r12d
	movb	(%r14), %al
.LBB2_16:                               #   in Loop: Header=BB2_9 Depth=2
	testb	%al, %al
	movq	-96(%rbp), %r15         # 8-byte Reload
	je	.LBB2_233
# %bb.17:                               #   in Loop: Header=BB2_9 Depth=2
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	addq	$1, %r14
	movb	$0, -41(%rbp)
	movl	$-1, %r12d
	xorl	%r8d, %r8d
	movq	%r14, %rbx
	xorl	%edi, %edi
	movl	$-1, %r14d
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_20 Depth=3
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_19:                               #   in Loop: Header=BB2_20 Depth=3
	movl	(%rax), %r12d
	cmpl	$-2, %r12d
	cmovlel	%r14d, %r12d
.LBB2_20:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_21 Depth 4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_27 Depth 6
                                        #           Child Loop BB2_32 Depth 5
	movb	(%rbx), %cl
	addq	$1, %rbx
.LBB2_21:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_23 Depth 5
                                        #             Child Loop BB2_27 Depth 6
                                        #           Child Loop BB2_32 Depth 5
	movsbl	%cl, %eax
	jmp	.LBB2_23
	.p2align	4, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_23 Depth=5
	movl	%ecx, %r12d
.LBB2_23:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        #         Parent Loop BB2_21 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_27 Depth 6
	cmpl	$46, %eax
	jne	.LBB2_29
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=5
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	cmpl	$42, %eax
	je	.LBB2_33
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=5
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$9, %edx
	ja	.LBB2_22
# %bb.26:                               # %.preheader
                                        #   in Loop: Header=BB2_23 Depth=5
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_27:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        #         Parent Loop BB2_21 Depth=4
                                        #           Parent Loop BB2_23 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB2_27
# %bb.28:                               #   in Loop: Header=BB2_23 Depth=5
	movl	$-1, %r12d
	testl	%ecx, %ecx
	js	.LBB2_23
	jmp	.LBB2_22
	.p2align	4, 0x90
.LBB2_29:                               #   in Loop: Header=BB2_21 Depth=4
	cmpl	$122, %eax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	ja	.LBB2_115
# %bb.30:                               #   in Loop: Header=BB2_21 Depth=4
	movl	%eax, %ecx
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_31:                               #   in Loop: Header=BB2_21 Depth=4
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB2_32:                               #   Parent Loop BB2_8 Depth=1
                                        #     Parent Loop BB2_9 Depth=2
                                        #       Parent Loop BB2_20 Depth=3
                                        #         Parent Loop BB2_21 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%rdi,%rdi,4), %ecx
	leal	(%rax,%rcx,2), %edi
	addl	$-48, %edi
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	movsbl	%cl, %eax
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB2_32
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_20 Depth=3
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_18
# %bb.34:                               #   in Loop: Header=BB2_20 Depth=3
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_19
.LBB2_35:                               #   in Loop: Header=BB2_20 Depth=3
	cmpb	$0, -41(%rbp)
	jne	.LBB2_20
# %bb.36:                               #   in Loop: Header=BB2_20 Depth=3
	movb	$32, -41(%rbp)
	jmp	.LBB2_20
.LBB2_37:                               #   in Loop: Header=BB2_20 Depth=3
	orl	$1, %r8d
	jmp	.LBB2_20
.LBB2_38:                               #   in Loop: Header=BB2_20 Depth=3
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movl	$-1, %r14d
	callq	_localeconv_r
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_20
# %bb.39:                               #   in Loop: Header=BB2_20 Depth=3
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB2_20
# %bb.40:                               #   in Loop: Header=BB2_20 Depth=3
	movl	%r8d, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %r8d
	jmp	.LBB2_20
.LBB2_41:                               #   in Loop: Header=BB2_20 Depth=3
	orl	$128, %r8d
	jmp	.LBB2_20
.LBB2_42:                               #   in Loop: Header=BB2_20 Depth=3
	cmpb	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r8d
	jmp	.LBB2_20
.LBB2_43:                               #   in Loop: Header=BB2_20 Depth=3
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_48
# %bb.44:                               #   in Loop: Header=BB2_20 Depth=3
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_49
.LBB2_45:                               #   in Loop: Header=BB2_20 Depth=3
	movb	$43, -41(%rbp)
	jmp	.LBB2_20
.LBB2_46:                               #   in Loop: Header=BB2_20 Depth=3
	cmpb	$108, (%rbx)
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB2_47:                               #   in Loop: Header=BB2_20 Depth=3
	orl	$16, %r8d
	jmp	.LBB2_20
.LBB2_48:                               #   in Loop: Header=BB2_20 Depth=3
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_49:                               #   in Loop: Header=BB2_20 Depth=3
	movl	(%rax), %edi
	testl	%edi, %edi
	jns	.LBB2_20
# %bb.50:                               #   in Loop: Header=BB2_20 Depth=3
	negl	%edi
.LBB2_51:                               # %.loopexit1
                                        #   in Loop: Header=BB2_20 Depth=3
	orl	$4, %r8d
	jmp	.LBB2_20
.LBB2_52:                               #   in Loop: Header=BB2_9 Depth=2
	testb	$16, %r8b
	jne	.LBB2_57
# %bb.53:                               #   in Loop: Header=BB2_9 Depth=2
	testb	$64, %r8b
	jne	.LBB2_59
# %bb.54:                               #   in Loop: Header=BB2_9 Depth=2
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB2_63
# %bb.55:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	ja	.LBB2_67
# %bb.56:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_68
.LBB2_57:                               #   in Loop: Header=BB2_9 Depth=2
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movslq	%r12d, %rax
	movslq	(%r13), %rdx
	cmpq	$40, %rdx
	ja	.LBB2_61
# %bb.58:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB2_62
.LBB2_59:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_65
# %bb.60:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_66
.LBB2_61:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB2_62:                               #   in Loop: Header=BB2_9 Depth=2
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB2_9
.LBB2_63:                               #   in Loop: Header=BB2_9 Depth=2
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	movl	-48(%rbp), %r12d        # 4-byte Reload
	ja	.LBB2_69
# %bb.64:                               #   in Loop: Header=BB2_9 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_70
.LBB2_65:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_66:                               #   in Loop: Header=BB2_9 Depth=2
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB2_9
.LBB2_67:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_68:                               #   in Loop: Header=BB2_9 Depth=2
	movq	(%rax), %rax
	movl	%r12d, (%rax)
	jmp	.LBB2_9
.LBB2_69:                               #   in Loop: Header=BB2_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_70:                               #   in Loop: Header=BB2_9 Depth=2
	movq	(%rax), %rax
	movb	%r12b, (%rax)
	jmp	.LBB2_9
.LBB2_71:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_95
# %bb.72:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_96
.LBB2_73:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_97
# %bb.74:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_98
.LBB2_75:                               #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %r8d
.LBB2_76:                               #   in Loop: Header=BB2_8 Depth=1
	testb	$16, %r8b
	jne	.LBB2_101
# %bb.77:                               #   in Loop: Header=BB2_8 Depth=1
	testb	$64, %r8b
	movq	-64(%rbp), %r15         # 8-byte Reload
	jne	.LBB2_120
# %bb.78:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB2_136
# %bb.79:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_151
# %bb.80:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_152
.LBB2_81:                               #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %r8d
.LBB2_82:                               #   in Loop: Header=BB2_8 Depth=1
	testb	$16, %r8b
	jne	.LBB2_103
# %bb.83:                               #   in Loop: Header=BB2_8 Depth=1
	testb	$64, %r8b
	jne	.LBB2_122
# %bb.84:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB2_138
# %bb.85:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_153
# %bb.86:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_154
.LBB2_87:                               #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.2, %r15d
	movb	$88, %al
	testb	$16, %r8b
	je	.LBB2_91
.LBB2_88:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_124
# %bb.89:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	movq	(%rdx), %r14
	jmp	.LBB2_164
.LBB2_90:                               # %.loopexit5
                                        #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str, %r15d
	movb	$120, %al
	testb	$16, %r8b
	jne	.LBB2_88
.LBB2_91:                               #   in Loop: Header=BB2_8 Depth=1
	testb	$64, %r8b
	jne	.LBB2_125
# %bb.92:                               #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	testl	$512, %r8d              # imm = 0x200
	jne	.LBB2_140
# %bb.93:                               #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB2_155
# %bb.94:                               #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_156
.LBB2_95:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_96:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movb	(%rax), %al
	movb	%al, -256(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %eax
	xorl	%r12d, %r12d
	leaq	-256(%rbp), %r13
	jmp	.LBB2_190
.LBB2_97:                               #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_98:                               #   in Loop: Header=BB2_8 Depth=1
	movq	(%rax), %r13
	movb	$0, -41(%rbp)
	testq	%r13, %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
	je	.LBB2_116
# %bb.99:                               #   in Loop: Header=BB2_8 Depth=1
	movl	%r8d, %r14d
	testl	%r12d, %r12d
	js	.LBB2_132
# %bb.100:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%r12d, %rdx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memchr
	movl	%eax, %ecx
	subl	%r13d, %ecx
	testq	%rax, %rax
	cmovel	%r12d, %ecx
	xorl	%r12d, %r12d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %r8d
	movq	%rcx, %rax
	jmp	.LBB2_190
.LBB2_101:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	cmpq	$40, %rax
	movq	-64(%rbp), %r15         # 8-byte Reload
	ja	.LBB2_127
# %bb.102:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	movq	(%rcx), %r14
	jmp	.LBB2_159
.LBB2_103:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_128
# %bb.104:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_129
.LBB2_105:                              #   in Loop: Header=BB2_8 Depth=1
	orl	$16, %r8d
.LBB2_106:                              #   in Loop: Header=BB2_8 Depth=1
	testb	$16, %r8b
	jne	.LBB2_111
# %bb.107:                              #   in Loop: Header=BB2_8 Depth=1
	testb	$64, %r8b
	jne	.LBB2_117
# %bb.108:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	testl	$512, %r8d              # imm = 0x200
	movq	-64(%rbp), %r15         # 8-byte Reload
	jne	.LBB2_133
# %bb.109:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_146
# %bb.110:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_147
.LBB2_111:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	cmpq	$40, %rax
	ja	.LBB2_119
# %bb.112:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	movq	(%rcx), %r14
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_149
.LBB2_113:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_130
# %bb.114:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_131
.LBB2_115:                              #   in Loop: Header=BB2_8 Depth=1
	movb	%al, -256(%rbp)
	movb	$0, -41(%rbp)
	movl	$1, %eax
	xorl	%r12d, %r12d
	leaq	-256(%rbp), %r13
	jmp	.LBB2_189
.LBB2_116:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$6, %r12d
	movl	$6, %eax
	cmovbl	%r12d, %eax
	xorl	%r12d, %r12d
	movl	$.L.str.1, %r13d
	jmp	.LBB2_190
.LBB2_117:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rax
	cmpq	$40, %rax
	movq	-64(%rbp), %r15         # 8-byte Reload
	ja	.LBB2_135
# %bb.118:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	movswq	(%rcx), %r14
	jmp	.LBB2_149
.LBB2_119:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %r14
	movq	-64(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_149
.LBB2_120:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_142
# %bb.121:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	movzwl	(%rax), %r14d
	jmp	.LBB2_159
.LBB2_122:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rcx
	cmpq	$40, %rcx
	ja	.LBB2_143
# %bb.123:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_144
.LBB2_124:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
	movq	(%rcx), %r14
	jmp	.LBB2_164
.LBB2_125:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%r13), %rdx
	cmpq	$40, %rdx
	ja	.LBB2_145
# %bb.126:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	movzwl	(%rcx), %r14d
	jmp	.LBB2_164
.LBB2_127:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %r14
	jmp	.LBB2_159
.LBB2_128:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_129:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%rax), %r14
	movl	$1, %eax
	jmp	.LBB2_169
.LBB2_130:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_131:                              #   in Loop: Header=BB2_8 Depth=1
	movq	(%rax), %r14
	orl	$2, %r8d
	movw	$30768, -70(%rbp)       # imm = 0x7830
	movl	$.L.str, %r15d
	jmp	.LBB2_168
.LBB2_132:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r13, %rdi
	callq	strlen
	xorl	%r12d, %r12d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %r8d
	jmp	.LBB2_190
.LBB2_133:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_148
# %bb.134:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	movsbq	(%rcx), %r14
	jmp	.LBB2_149
.LBB2_135:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %r14
	jmp	.LBB2_149
.LBB2_136:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_157
# %bb.137:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_158
.LBB2_138:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB2_160
# %bb.139:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB2_161
.LBB2_140:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB2_162
# %bb.141:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB2_163
.LBB2_142:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %r14d
	jmp	.LBB2_159
.LBB2_143:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB2_144:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movzwl	(%rax), %r14d
	movl	$1, %eax
	jmp	.LBB2_169
.LBB2_145:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
	movzwl	(%rcx), %r14d
	jmp	.LBB2_164
.LBB2_146:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_147:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	(%rcx), %r14
	jmp	.LBB2_149
.LBB2_148:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %r14
.LBB2_149:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %eax
	testq	%r14, %r14
	jns	.LBB2_170
# %bb.150:                              #   in Loop: Header=BB2_8 Depth=1
	negq	%r14
	movb	$45, -41(%rbp)
	jmp	.LBB2_170
.LBB2_151:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_152:                              #   in Loop: Header=BB2_8 Depth=1
	movl	(%rcx), %r14d
	jmp	.LBB2_159
.LBB2_153:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_154:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB2_169
.LBB2_155:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB2_156:                              #   in Loop: Header=BB2_8 Depth=1
	movl	(%rdx), %r14d
	jmp	.LBB2_164
.LBB2_157:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_158:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	(%rcx), %r14d
.LBB2_159:                              #   in Loop: Header=BB2_8 Depth=1
	andl	$-1025, %r8d            # imm = 0xFBFF
	xorl	%eax, %eax
	jmp	.LBB2_169
.LBB2_160:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB2_161:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movzbl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB2_169
.LBB2_162:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB2_163:                              #   in Loop: Header=BB2_8 Depth=1
	movzbl	(%rdx), %r14d
.LBB2_164:                              #   in Loop: Header=BB2_8 Depth=1
	testb	$1, %r8b
	je	.LBB2_167
# %bb.165:                              #   in Loop: Header=BB2_8 Depth=1
	testq	%r14, %r14
	je	.LBB2_167
# %bb.166:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, -70(%rbp)
	movb	%al, -69(%rbp)
	orl	$2, %r8d
.LBB2_167:                              #   in Loop: Header=BB2_8 Depth=1
	andl	$-1025, %r8d            # imm = 0xFBFF
.LBB2_168:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %eax
.LBB2_169:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$0, -41(%rbp)
.LBB2_170:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r8d, %ecx
	andl	$-129, %r8d
	testl	%r12d, %r12d
	cmovsl	%ecx, %r8d
	jne	.LBB2_176
# %bb.171:                              #   in Loop: Header=BB2_8 Depth=1
	testq	%r14, %r14
	jne	.LBB2_176
# %bb.172:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -64(%rbp)         # 8-byte Spill
	testl	%eax, %eax
	jne	.LBB2_182
# %bb.173:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r8d, %eax
	andl	$1, %eax
	je	.LBB2_182
# %bb.174:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, -157(%rbp)
.LBB2_175:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-157(%rbp), %r13
	jmp	.LBB2_188
	.p2align	4, 0x90
.LBB2_176:                              #   in Loop: Header=BB2_8 Depth=1
	testl	%eax, %eax
	je	.LBB2_183
# %bb.177:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$1, %eax
	je	.LBB2_221
# %bb.178:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-156(%rbp), %r13
	cmpl	$2, %eax
	jne	.LBB2_223
	.p2align	4, 0x90
.LBB2_179:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	andl	$15, %eax
	movzbl	(%r15,%rax), %eax
	movb	%al, -1(%r13)
	addq	$-1, %r13
	shrq	$4, %r14
	jne	.LBB2_179
# %bb.180:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_188
.LBB2_182:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-156(%rbp), %r13
.LBB2_188:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	-156(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%r13d, %eax
.LBB2_189:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB2_190:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	%eax, %r12d
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	%eax, %ecx
	cmovgel	%r12d, %ecx
	movb	-41(%rbp), %al
	cmpb	$1, %al
	sbbl	$-1, %ecx
	leal	2(%rcx), %edx
	testb	$2, %r8b
	cmovel	%ecx, %edx
	movl	%r8d, %r14d
	andl	$132, %r14d
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	jne	.LBB2_198
# %bb.191:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%edi, %r15d
	subl	%edx, %r15d
	jle	.LBB2_198
# %bb.192:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$17, %r15d
	jl	.LBB2_195
	.p2align	4, 0x90
.LBB2_193:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_231
# %bb.194:                              #   in Loop: Header=BB2_193 Depth=2
	leal	-16(%r15), %eax
	cmpl	$32, %r15d
	movl	%eax, %r15d
	jg	.LBB2_193
	jmp	.LBB2_196
.LBB2_195:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r15d, %eax
.LBB2_196:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.blanks, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
# %bb.197:                              #   in Loop: Header=BB2_8 Depth=1
	movb	-41(%rbp), %al
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	-68(%rbp), %r8d         # 4-byte Reload
	.p2align	4, 0x90
.LBB2_198:                              #   in Loop: Header=BB2_8 Depth=1
	testb	%al, %al
	movq	-96(%rbp), %r15         # 8-byte Reload
	je	.LBB2_200
# %bb.199:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$1, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-41(%rbp), %rdx
	callq	__ssputs_r
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpl	$-1, %eax
	je	.LBB2_232
.LBB2_200:                              #   in Loop: Header=BB2_8 Depth=1
	testb	$2, %r8b
	je	.LBB2_202
# %bb.201:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$2, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	leaq	-70(%rbp), %rdx
	callq	__ssputs_r
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpl	$-1, %eax
	je	.LBB2_232
.LBB2_202:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$128, %r14d
	jne	.LBB2_209
# %bb.203:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%edi, %r14d
	subl	-112(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB2_209
# %bb.204:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB2_207
	.p2align	4, 0x90
.LBB2_205:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
# %bb.206:                              #   in Loop: Header=BB2_205 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB2_205
	jmp	.LBB2_208
.LBB2_207:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r14d, %eax
.LBB2_208:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
.LBB2_209:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-144(%rbp), %r14        # 8-byte Reload
	subl	%r14d, %r12d
	jle	.LBB2_215
# %bb.210:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$17, %r12d
	jl	.LBB2_213
	.p2align	4, 0x90
.LBB2_211:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.zeroes, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
# %bb.212:                              #   in Loop: Header=BB2_211 Depth=2
	leal	-16(%r12), %eax
	cmpl	$32, %r12d
	movl	%eax, %r12d
	jg	.LBB2_211
	jmp	.LBB2_214
	.p2align	4, 0x90
.LBB2_213:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%r12d, %eax
.LBB2_214:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%eax, %rcx
	movl	$_svfiprintf_r.zeroes, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
.LBB2_215:                              #   in Loop: Header=BB2_8 Depth=1
	movslq	%r14d, %rcx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_232
# %bb.216:                              #   in Loop: Header=BB2_8 Depth=1
	testb	$4, -68(%rbp)           # 1-byte Folded Reload
	movq	-136(%rbp), %r13        # 8-byte Reload
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	je	.LBB2_7
# %bb.217:                              #   in Loop: Header=BB2_8 Depth=1
	movl	%eax, %r14d
	subl	%ecx, %r14d
	jle	.LBB2_7
# %bb.218:                              #   in Loop: Header=BB2_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB2_5
	.p2align	4, 0x90
.LBB2_219:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$_svfiprintf_r.blanks, %edx
	movl	$16, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__ssputs_r
	cmpl	$-1, %eax
	je	.LBB2_233
# %bb.220:                              #   in Loop: Header=BB2_219 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB2_219
	jmp	.LBB2_6
.LBB2_183:                              # %.preheader19
                                        #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -64(%rbp)         # 8-byte Spill
	leaq	-157(%rbp), %rax
	.p2align	4, 0x90
.LBB2_184:                              #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r14
	addq	$-1, %rax
	testq	%r14, %r14
	jne	.LBB2_184
# %bb.185:                              #   in Loop: Header=BB2_8 Depth=1
	leaq	1(%rax), %r13
	testb	$1, %r8b
	je	.LBB2_188
# %bb.186:                              #   in Loop: Header=BB2_8 Depth=1
	cmpb	$48, %cl
	je	.LBB2_188
# %bb.187:                              #   in Loop: Header=BB2_8 Depth=1
	movb	$48, (%rax)
	movq	%rax, %r13
	jmp	.LBB2_188
.LBB2_221:                              #   in Loop: Header=BB2_8 Depth=1
	movq	%r15, -64(%rbp)         # 8-byte Spill
	cmpq	$10, %r14
	jae	.LBB2_224
# %bb.222:                              #   in Loop: Header=BB2_8 Depth=1
	addb	$48, %r14b
	movb	%r14b, -157(%rbp)
	jmp	.LBB2_175
.LBB2_223:                              #   in Loop: Header=BB2_8 Depth=1
	movl	$.L.str.3, %r13d
	movl	$.L.str.3, %edi
	movl	%r8d, %r14d
	callq	strlen
	movl	%r14d, %r8d
	movq	-88(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB2_190
.LBB2_224:                              #   in Loop: Header=BB2_8 Depth=1
	movq	-120(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	-156(%rbp), %r13
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	jmp	.LBB2_226
	.p2align	4, 0x90
.LBB2_225:                              #   in Loop: Header=BB2_226 Depth=2
	cmpq	$9, %r15
	jbe	.LBB2_188
.LBB2_226:                              #   Parent Loop BB2_8 Depth=1
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
	testl	$1024, %r8d             # imm = 0x400
	je	.LBB2_225
# %bb.227:                              #   in Loop: Header=BB2_226 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %ecx
	jne	.LBB2_225
# %bb.228:                              #   in Loop: Header=BB2_226 Depth=2
	cmpq	$10, %r15
	jb	.LBB2_225
# %bb.229:                              #   in Loop: Header=BB2_226 Depth=2
	cmpb	$127, %al
	je	.LBB2_225
# %bb.230:                              #   in Loop: Header=BB2_226 Depth=2
	addq	-112(%rbp), %r13        # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB2_225
.LBB2_231:
	movq	-96(%rbp), %r15         # 8-byte Reload
.LBB2_232:                              # %.loopexit6
	movl	-48(%rbp), %r12d        # 4-byte Reload
.LBB2_233:
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB2_234:
	movl	$42, __A_VARIABLE(%rip)
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_235:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$12, (%rax)
	movl	$-1, %eax
	jmp	.LBB2_234
.LBB2_236:
	movq	-96(%rbp), %r15         # 8-byte Reload
	jmp	.LBB2_233
.Lfunc_end2:
	.size	_svfiprintf_r, .Lfunc_end2-_svfiprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_232
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_35
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_37
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_38
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_43
	.quad	.LBB2_45
	.quad	.LBB2_115
	.quad	.LBB2_51
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_41
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_31
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_71
	.quad	.LBB2_105
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_75
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_73
	.quad	.LBB2_115
	.quad	.LBB2_81
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_87
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_71
	.quad	.LBB2_106
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_42
	.quad	.LBB2_106
	.quad	.LBB2_47
	.quad	.LBB2_115
	.quad	.LBB2_46
	.quad	.LBB2_115
	.quad	.LBB2_52
	.quad	.LBB2_76
	.quad	.LBB2_113
	.quad	.LBB2_47
	.quad	.LBB2_115
	.quad	.LBB2_73
	.quad	.LBB2_47
	.quad	.LBB2_82
	.quad	.LBB2_115
	.quad	.LBB2_115
	.quad	.LBB2_90
	.quad	.LBB2_115
	.quad	.LBB2_47
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
