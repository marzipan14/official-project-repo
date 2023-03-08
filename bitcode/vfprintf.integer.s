	.text
	.file	"vfprintf.c"
	.globl	__sfputs_r              # -- Begin function __sfputs_r
	.p2align	4, 0x90
	.type	__sfputs_r,@function
__sfputs_r:                             # @__sfputs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rcx, %rcx
	je	.LBB0_5
# %bb.1:                                # %.preheader
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jb	.LBB0_2
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_6:
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
	.size	__sfputs_r, .Lfunc_end0-__sfputs_r
                                        # -- End function
	.globl	__sprint_r              # -- Begin function __sprint_r
	.p2align	4, 0x90
	.type	__sprint_r,@function
__sprint_r:                             # @__sprint_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	cmpq	$0, 16(%rdx)
	je	.LBB1_1
# %bb.2:
	movq	%rbx, %rdx
	callq	__sfvwrite_r
	movq	$0, 16(%rbx)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__sprint_r, .Lfunc_end1-__sprint_r
                                        # -- End function
	.globl	vfiprintf               # -- Begin function vfiprintf
	.p2align	4, 0x90
	.type	vfiprintf,@function
vfiprintf:                              # @vfiprintf
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
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_vfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	vfiprintf, .Lfunc_end2-vfiprintf
                                        # -- End function
	.globl	_vfiprintf_r            # -- Begin function _vfiprintf_r
	.p2align	4, 0x90
	.type	_vfiprintf_r,@function
_vfiprintf_r:                           # @_vfiprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%r15)
	jne	.LBB3_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
.LBB3_3:
	leaq	-100(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%r14)
	je	.LBB3_5
# %bb.4:
	cmpq	$0, 24(%r14)
	jne	.LBB3_7
.LBB3_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__swsetup_r
	testl	%eax, %eax
	je	.LBB3_7
# %bb.6:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB3_322
.LBB3_7:
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	-144(%rbp), %rdi        # 8-byte Reload
	leaq	8(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%r15, -88(%rbp)         # 8-byte Spill
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_30 Depth 6
                                        #           Child Loop BB3_35 Depth 5
                                        #     Child Loop BB3_182 Depth 2
                                        #     Child Loop BB3_306 Depth 2
                                        #     Child Loop BB3_186 Depth 2
                                        #     Child Loop BB3_224 Depth 2
                                        #     Child Loop BB3_300 Depth 2
                                        #     Child Loop BB3_204 Depth 2
                                        #     Child Loop BB3_244 Depth 2
                                        #     Child Loop BB3_249 Depth 2
                                        #     Child Loop BB3_269 Depth 2
                                        #     Child Loop BB3_274 Depth 2
                                        #     Child Loop BB3_280 Depth 2
                                        #     Child Loop BB3_313 Depth 2
	movl	%edx, %r12d
	movq	%rcx, -136(%rbp)        # 8-byte Spill
.LBB3_9:                                #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_23 Depth 3
                                        #         Child Loop BB3_24 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_30 Depth 6
                                        #           Child Loop BB3_35 Depth 5
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %eax
	testb	%al, %al
	je	.LBB3_13
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=3
	cmpb	$37, %al
	je	.LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=3
	addq	$1, %r15
	jmp	.LBB3_10
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%r15, %r14
	subq	%rbx, %r14
	testl	%r14d, %r14d
	je	.LBB3_19
# %bb.14:                               #   in Loop: Header=BB3_9 Depth=2
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	movq	%r14, %rax
	shlq	$32, %rax
	je	.LBB3_18
# %bb.15:                               # %.preheader8
                                        #   in Loop: Header=BB3_9 Depth=2
	movslq	%r14d, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_16:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rbx,%r13), %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=3
	addq	$1, %r13
	cmpq	%r12, %r13
	jb	.LBB3_16
.LBB3_18:                               #   in Loop: Header=BB3_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r12d        # 4-byte Reload
	addl	%r14d, %r12d
	movb	(%r15), %al
	movq	-144(%rbp), %rdi        # 8-byte Reload
.LBB3_19:                               #   in Loop: Header=BB3_9 Depth=2
	testb	%al, %al
	je	.LBB3_323
# %bb.20:                               #   in Loop: Header=BB3_9 Depth=2
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	addq	$1, %r15
	movl	$-1, %r13d
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	xorl	%r12d, %r12d
	movq	%r15, %rbx
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_23
	.p2align	4, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_23 Depth=3
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_22:                               #   in Loop: Header=BB3_23 Depth=3
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	movl	$-1, %eax
	cmovlel	%eax, %r13d
.LBB3_23:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_24 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_30 Depth 6
                                        #           Child Loop BB3_35 Depth 5
	movb	(%rbx), %cl
	addq	$1, %rbx
.LBB3_24:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_23 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_30 Depth 6
                                        #           Child Loop BB3_35 Depth 5
	movsbl	%cl, %eax
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_25:                               #   in Loop: Header=BB3_26 Depth=5
	movl	%ecx, %r13d
.LBB3_26:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_23 Depth=3
                                        #         Parent Loop BB3_24 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_30 Depth 6
	cmpl	$46, %eax
	jne	.LBB3_32
# %bb.27:                               #   in Loop: Header=BB3_26 Depth=5
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	cmpl	$42, %eax
	je	.LBB3_36
# %bb.28:                               #   in Loop: Header=BB3_26 Depth=5
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$9, %edx
	ja	.LBB3_25
# %bb.29:                               # %.preheader
                                        #   in Loop: Header=BB3_26 Depth=5
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_30:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_23 Depth=3
                                        #         Parent Loop BB3_24 Depth=4
                                        #           Parent Loop BB3_26 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB3_30
# %bb.31:                               #   in Loop: Header=BB3_26 Depth=5
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB3_26
	jmp	.LBB3_25
	.p2align	4, 0x90
.LBB3_32:                               #   in Loop: Header=BB3_24 Depth=4
	cmpl	$122, %eax
	ja	.LBB3_118
# %bb.33:                               #   in Loop: Header=BB3_24 Depth=4
	movl	%eax, %ecx
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_34:                               #   in Loop: Header=BB3_24 Depth=4
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_35:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_23 Depth=3
                                        #         Parent Loop BB3_24 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r12,%r12,4), %ecx
	leal	(%rax,%rcx,2), %r12d
	addl	$-48, %r12d
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	movsbl	%cl, %eax
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB3_35
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_36:                               #   in Loop: Header=BB3_23 Depth=3
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_21
# %bb.37:                               #   in Loop: Header=BB3_23 Depth=3
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_22
.LBB3_38:                               #   in Loop: Header=BB3_23 Depth=3
	testb	%r8b, %r8b
	movzbl	%r8b, %eax
	movl	$32, %r8d
	cmovnel	%eax, %r8d
	jmp	.LBB3_23
.LBB3_39:                               #   in Loop: Header=BB3_23 Depth=3
	orl	$1, %esi
	jmp	.LBB3_23
.LBB3_40:                               #   in Loop: Header=BB3_23 Depth=3
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %r14
	movq	-88(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r14, %rax
	movq	%r14, -152(%rbp)        # 8-byte Spill
	testq	%r14, %r14
	je	.LBB3_23
# %bb.41:                               #   in Loop: Header=BB3_23 Depth=3
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB3_23
# %bb.42:                               #   in Loop: Header=BB3_23 Depth=3
	movl	%esi, %eax
	orl	$1024, %eax             # imm = 0x400
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, (%rcx)
	cmovnel	%eax, %esi
	jmp	.LBB3_23
.LBB3_43:                               #   in Loop: Header=BB3_23 Depth=3
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_50
# %bb.44:                               #   in Loop: Header=BB3_23 Depth=3
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_51
.LBB3_45:                               # %.loopexit2
                                        #   in Loop: Header=BB3_23 Depth=3
	movb	$43, %r8b
	jmp	.LBB3_23
.LBB3_46:                               #   in Loop: Header=BB3_23 Depth=3
	orl	$128, %esi
	jmp	.LBB3_23
.LBB3_47:                               #   in Loop: Header=BB3_23 Depth=3
	cmpb	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %esi
	jmp	.LBB3_23
.LBB3_48:                               #   in Loop: Header=BB3_23 Depth=3
	cmpb	$108, (%rbx)
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB3_49:                               #   in Loop: Header=BB3_23 Depth=3
	orl	$16, %esi
	jmp	.LBB3_23
.LBB3_50:                               #   in Loop: Header=BB3_23 Depth=3
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_51:                               #   in Loop: Header=BB3_23 Depth=3
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB3_23
# %bb.52:                               #   in Loop: Header=BB3_23 Depth=3
	negl	%r12d
.LBB3_53:                               # %.loopexit1
                                        #   in Loop: Header=BB3_23 Depth=3
	orl	$4, %esi
	jmp	.LBB3_23
.LBB3_54:                               #   in Loop: Header=BB3_9 Depth=2
	testb	$16, %sil
	jne	.LBB3_59
# %bb.55:                               #   in Loop: Header=BB3_9 Depth=2
	testb	$64, %sil
	jne	.LBB3_61
# %bb.56:                               #   in Loop: Header=BB3_9 Depth=2
	testl	$512, %esi              # imm = 0x200
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jne	.LBB3_65
# %bb.57:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_69
# %bb.58:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_70
.LBB3_59:                               #   in Loop: Header=BB3_9 Depth=2
	movl	-44(%rbp), %r12d        # 4-byte Reload
	movslq	%r12d, %rax
	movslq	(%rdi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_63
# %bb.60:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %edx
	movl	%edx, (%rdi)
	jmp	.LBB3_64
.LBB3_61:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	movl	-44(%rbp), %r12d        # 4-byte Reload
	ja	.LBB3_67
# %bb.62:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_68
.LBB3_63:                               #   in Loop: Header=BB3_9 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_64:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB3_9
.LBB3_65:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_71
# %bb.66:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_72
.LBB3_67:                               #   in Loop: Header=BB3_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_68:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB3_9
.LBB3_69:                               #   in Loop: Header=BB3_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_70:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movl	%r12d, (%rax)
	jmp	.LBB3_9
.LBB3_71:                               #   in Loop: Header=BB3_9 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_72:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movb	%r12b, (%rax)
	jmp	.LBB3_9
.LBB3_73:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_106
# %bb.74:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_107
.LBB3_75:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_108
# %bb.76:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_109
.LBB3_77:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %esi
.LBB3_78:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %sil
	jne	.LBB3_83
# %bb.79:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %sil
	jne	.LBB3_120
# %bb.80:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_138
# %bb.81:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_151
# %bb.82:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	jmp	.LBB3_152
.LBB3_83:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	cmpq	$40, %rax
	ja	.LBB3_122
# %bb.84:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	movq	(%rcx), %rax
	jmp	.LBB3_154
.LBB3_85:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %esi
.LBB3_86:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %sil
	jne	.LBB3_112
# %bb.87:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %sil
	jne	.LBB3_124
# %bb.88:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_141
# %bb.89:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_155
# %bb.90:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	jmp	.LBB3_156
.LBB3_91:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %esi
.LBB3_92:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %sil
	jne	.LBB3_114
# %bb.93:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %sil
	jne	.LBB3_126
# %bb.94:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_143
# %bb.95:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_157
# %bb.96:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	jmp	.LBB3_158
.LBB3_97:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$.L.str.2, %ecx
	movb	$88, %al
	jmp	.LBB3_101
.LBB3_98:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_128
# %bb.99:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_129
.LBB3_100:                              # %.loopexit6
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$.L.str, %ecx
	movb	$120, %al
.LBB3_101:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %sil
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	jne	.LBB3_116
# %bb.102:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %sil
	jne	.LBB3_130
# %bb.103:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_145
# %bb.104:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_159
# %bb.105:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rdi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_160
.LBB3_106:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_107:                              #   in Loop: Header=BB3_8 Depth=1
	movb	(%rax), %al
	movb	%al, -288(%rbp)
	jmp	.LBB3_119
.LBB3_108:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_109:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB3_123
# %bb.110:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%r13d, %r13d
	js	.LBB3_136
# %bb.111:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%r13d, %rdx
	movl	%esi, %r14d
	movq	%rdi, %r15
	xorl	%esi, %esi
	callq	memchr
	xorl	%r8d, %r8d
	movq	%r15, %rdi
	movl	%r14d, %esi
	movl	%eax, %ecx
	subl	%edi, %ecx
	testq	%rax, %rax
	cmovel	%r13d, %ecx
	jmp	.LBB3_137
.LBB3_112:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	cmpq	$40, %rax
	ja	.LBB3_132
# %bb.113:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	movq	(%rcx), %r14
	jmp	.LBB3_163
.LBB3_114:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_133
# %bb.115:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_134
.LBB3_116:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_135
# %bb.117:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rdi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	movq	(%rdx), %r14
	jmp	.LBB3_168
.LBB3_118:                              #   in Loop: Header=BB3_8 Depth=1
	movb	%al, -288(%rbp)
.LBB3_119:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %ecx
	xorl	%r8d, %r8d
	leaq	-288(%rbp), %rdi
	jmp	.LBB3_137
.LBB3_120:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rax
	cmpq	$40, %rax
	ja	.LBB3_140
# %bb.121:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	movswq	(%rcx), %rax
	jmp	.LBB3_154
.LBB3_122:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %rax
	jmp	.LBB3_154
.LBB3_123:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$6, %r13d
	movl	$6, %ecx
	cmovbl	%r13d, %ecx
	xorl	%r8d, %r8d
	movl	$.L.str.1, %edi
	jmp	.LBB3_137
.LBB3_124:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_147
# %bb.125:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	movzwl	(%rax), %r14d
	jmp	.LBB3_163
.LBB3_126:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_148
# %bb.127:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rdi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_149
.LBB3_128:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_129:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %r14
	orl	$2, %esi
	movw	$30768, -58(%rbp)       # imm = 0x7830
	movl	$.L.str, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB3_172
.LBB3_130:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rdi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_150
# %bb.131:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %edx
	movl	%edx, (%rdi)
	movzwl	(%rcx), %r14d
	jmp	.LBB3_168
.LBB3_132:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	(%rax), %r14
	jmp	.LBB3_163
.LBB3_133:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_134:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %r14
	movl	$1, %eax
	jmp	.LBB3_173
.LBB3_135:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %r14
	jmp	.LBB3_168
.LBB3_136:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%esi, %r14d
	movq	%rdi, %r15
	callq	strlen
	movq	%r15, %rdi
	movl	%r14d, %esi
	movq	%rax, %rcx
	xorl	%r8d, %r8d
.LBB3_137:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB3_194
.LBB3_138:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_153
# %bb.139:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	movsbq	(%rcx), %rax
	jmp	.LBB3_154
.LBB3_140:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movswq	(%rax), %rax
	jmp	.LBB3_154
.LBB3_141:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_161
# %bb.142:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	jmp	.LBB3_162
.LBB3_143:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_164
# %bb.144:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %eax
	movl	%eax, (%rdi)
	jmp	.LBB3_165
.LBB3_145:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_166
# %bb.146:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rdi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_167
.LBB3_147:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movzwl	(%rax), %r14d
	jmp	.LBB3_163
.LBB3_148:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_149:                              #   in Loop: Header=BB3_8 Depth=1
	movzwl	(%rax), %r14d
	movl	$1, %eax
	jmp	.LBB3_173
.LBB3_150:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
	movzwl	(%rcx), %r14d
	jmp	.LBB3_168
.LBB3_151:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_152:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rcx), %rax
	jmp	.LBB3_154
.LBB3_153:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
	movsbq	(%rax), %rax
.LBB3_154:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%rax, %rax
	movzbl	%r8b, %ecx
	movl	$45, %r8d
	cmovnsl	%ecx, %r8d
	movq	%rax, %r14
	negq	%r14
	cmovlq	%rax, %r14
	movl	$1, %eax
	jmp	.LBB3_174
.LBB3_155:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_156:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rcx), %r14d
	jmp	.LBB3_163
.LBB3_157:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_158:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB3_173
.LBB3_159:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_160:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rdx), %r14d
	jmp	.LBB3_168
.LBB3_161:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_162:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rcx), %r14d
.LBB3_163:                              #   in Loop: Header=BB3_8 Depth=1
	andl	$-1025, %esi            # imm = 0xFBFF
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB3_174
.LBB3_164:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_165:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB3_173
.LBB3_166:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_167:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rdx), %r14d
.LBB3_168:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$1, %sil
	je	.LBB3_171
# %bb.169:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%r14, %r14
	je	.LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, -58(%rbp)
	movb	%al, -57(%rbp)
	orl	$2, %esi
.LBB3_171:                              #   in Loop: Header=BB3_8 Depth=1
	andl	$-1025, %esi            # imm = 0xFBFF
.LBB3_172:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$2, %eax
.LBB3_173:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%r8d, %r8d
.LBB3_174:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%esi, %ecx
	andl	$-129, %esi
	testl	%r13d, %r13d
	cmovsl	%ecx, %esi
	jne	.LBB3_179
# %bb.175:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%r14, %r14
	jne	.LBB3_179
# %bb.176:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_184
# %bb.177:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%esi, %eax
	andl	$1, %eax
	je	.LBB3_184
# %bb.178:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, -189(%rbp)
	jmp	.LBB3_192
.LBB3_179:                              #   in Loop: Header=BB3_8 Depth=1
	testb	%al, %al
	je	.LBB3_185
# %bb.180:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$1, %al
	je	.LBB3_190
# %bb.181:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-188(%rbp), %rdi
	cmpb	$2, %al
	movq	-136(%rbp), %rcx        # 8-byte Reload
	jne	.LBB3_303
	.p2align	4, 0x90
.LBB3_182:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	andl	$15, %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, -1(%rdi)
	addq	$-1, %rdi
	shrq	$4, %r14
	jne	.LBB3_182
	jmp	.LBB3_193
.LBB3_184:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-188(%rbp), %rdi
	jmp	.LBB3_193
.LBB3_185:                              # %.preheader20
                                        #   in Loop: Header=BB3_8 Depth=1
	leaq	-189(%rbp), %rax
	.p2align	4, 0x90
.LBB3_186:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r14
	addq	$-1, %rax
	testq	%r14, %r14
	jne	.LBB3_186
# %bb.187:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	1(%rax), %rdi
	testb	$1, %sil
	je	.LBB3_193
# %bb.188:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$48, %cl
	je	.LBB3_193
# %bb.189:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, (%rax)
	movq	%rax, %rdi
	jmp	.LBB3_193
.LBB3_190:                              #   in Loop: Header=BB3_8 Depth=1
	cmpq	$10, %r14
	jae	.LBB3_304
# %bb.191:                              #   in Loop: Header=BB3_8 Depth=1
	addb	$48, %r14b
	movb	%r14b, -189(%rbp)
.LBB3_192:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-189(%rbp), %rdi
.LBB3_193:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-188(%rbp), %rax
	movl	%eax, %ecx
	subl	%edi, %ecx
.LBB3_194:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	%ecx, %r13d
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cmovgel	%r13d, %eax
	cmpb	$1, %r8b
	sbbl	$-1, %eax
	leal	2(%rax), %r14d
	testb	$2, %sil
	cmovel	%eax, %r14d
	movl	%esi, %eax
	andl	$132, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movq	%r14, -128(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	je	.LBB3_222
.LBB3_195:                              #   in Loop: Header=BB3_8 Depth=1
	testb	%r8b, %r8b
	movq	-72(%rbp), %r15         # 8-byte Reload
	je	.LBB3_197
# %bb.196:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	%r8b, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	callq	_fputc_r
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_320
.LBB3_197:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$2, %sil
	je	.LBB3_201
# %bb.198:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	-58(%rbp), %esi
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.199:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	-57(%rbp), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.200:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
.LBB3_201:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$128, -120(%rbp)        # 4-byte Folded Reload
	jne	.LBB3_247
# %bb.202:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %ecx
	subl	%r14d, %ecx
	jle	.LBB3_247
# %bb.203:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %ecx
	jl	.LBB3_242
.LBB3_204:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.205:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.206:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.207:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.208:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.209:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.210:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.211:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.212:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.213:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.214:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.215:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.216:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.217:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.218:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.219:                              #   in Loop: Header=BB3_204 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.220:                              #   in Loop: Header=BB3_204 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rcx        # 8-byte Reload
	leal	-16(%rcx), %eax
	cmpl	$32, %ecx
	movl	%eax, %ecx
	jg	.LBB3_204
# %bb.221:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_243
	jmp	.LBB3_246
.LBB3_222:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %ecx
	subl	%r14d, %ecx
	jle	.LBB3_195
# %bb.223:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	cmpl	$17, %ecx
	jl	.LBB3_298
.LBB3_224:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	-88(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	$32, %esi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.225:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.226:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.227:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.228:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.229:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.230:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.231:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.232:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.233:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.234:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.235:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.236:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.237:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.238:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.239:                              #   in Loop: Header=BB3_224 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.240:                              #   in Loop: Header=BB3_224 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leal	-16(%rcx), %eax
	cmpl	$32, %ecx
	movl	%eax, %ecx
	jg	.LBB3_224
# %bb.241:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_299
	jmp	.LBB3_302
.LBB3_242:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%ecx, %eax
.LBB3_243:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_244:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.245:                              #   in Loop: Header=BB3_244 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_244
.LBB3_246:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_247:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	subl	%eax, %r13d
	jle	.LBB3_272
# %bb.248:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %r13d
	jl	.LBB3_267
.LBB3_249:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.250:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.251:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.252:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.253:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.254:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.255:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.256:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.257:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.258:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.259:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.260:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.261:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.262:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.263:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.264:                              #   in Loop: Header=BB3_249 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.265:                              #   in Loop: Header=BB3_249 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%r13), %eax
	cmpl	$32, %r13d
	movl	%eax, %r13d
	jg	.LBB3_249
# %bb.266:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
	jne	.LBB3_268
	jmp	.LBB3_271
.LBB3_267:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r13d, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
.LBB3_268:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_269:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	%r13, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.270:                              #   in Loop: Header=BB3_269 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_269
.LBB3_271:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-168(%rbp), %rax        # 8-byte Reload
.LBB3_272:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	movq	-88(%rbp), %r13         # 8-byte Reload
	je	.LBB3_276
# %bb.273:                              # %.preheader12
                                        #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_274:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%rdi,%r15), %esi
	movq	%r13, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	movq	-96(%rbp), %rdi         # 8-byte Reload
	jb	.LBB3_274
.LBB3_276:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -76(%rbp)           # 1-byte Folded Reload
	je	.LBB3_316
# %bb.277:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %r14d
	subl	-128(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB3_316
# %bb.278:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB3_311
# %bb.279:                              # %.preheader11
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB3_280:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.281:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.282:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.283:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.284:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.285:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.286:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.287:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.288:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.289:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.290:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.291:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.292:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.293:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.294:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.295:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_318
# %bb.296:                              #   in Loop: Header=BB3_280 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB3_280
# %bb.297:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_312
	jmp	.LBB3_315
.LBB3_298:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%ecx, %eax
.LBB3_299:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r15
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_300:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r14), %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.301:                              #   in Loop: Header=BB3_300 Depth=2
	addq	$1, %r14
	cmpq	%r15, %r14
	jb	.LBB3_300
.LBB3_302:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-104(%rbp), %r8d        # 4-byte Reload
	jmp	.LBB3_195
.LBB3_303:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%esi, %r14d
	movl	$.L.str.3, %edi
	movl	%r8d, %r15d
	callq	strlen
	movl	%r15d, %r8d
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movq	%rax, %rcx
	jmp	.LBB3_194
.LBB3_304:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-152(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	-188(%rbp), %rdi
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	%r8d, -104(%rbp)        # 4-byte Spill
	jmp	.LBB3_306
	.p2align	4, 0x90
.LBB3_305:                              #   in Loop: Header=BB3_306 Depth=2
	cmpq	$9, %r15
	jbe	.LBB3_193
.LBB3_306:                              #   Parent Loop BB3_8 Depth=1
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
	movb	%dl, -1(%rdi)
	addq	$-1, %rdi
	testl	$1024, %esi             # imm = 0x400
	je	.LBB3_305
# %bb.307:                              #   in Loop: Header=BB3_306 Depth=2
	movq	-112(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	cmpl	%eax, %ecx
	jne	.LBB3_305
# %bb.308:                              #   in Loop: Header=BB3_306 Depth=2
	cmpq	$10, %r15
	jb	.LBB3_305
# %bb.309:                              #   in Loop: Header=BB3_306 Depth=2
	cmpb	$127, %al
	je	.LBB3_305
# %bb.310:                              #   in Loop: Header=BB3_306 Depth=2
	addq	-120(%rbp), %rdi        # 8-byte Folded Reload
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-152(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	movl	-104(%rbp), %r8d        # 4-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-76(%rbp), %esi         # 4-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpb	$0, 1(%rcx)
	leaq	1(%rcx), %rax
	cmovneq	%rax, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB3_305
.LBB3_311:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r14d, %eax
.LBB3_312:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_313:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r15), %esi
	movq	%r13, %rdi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_317
# %bb.314:                              #   in Loop: Header=BB3_313 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_313
.LBB3_315:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_316:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-128(%rbp), %rdx        # 8-byte Reload
	cmpl	%edx, %r12d
	cmovgel	%r12d, %edx
	addl	-44(%rbp), %edx         # 4-byte Folded Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	jmp	.LBB3_8
.LBB3_317:
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_320
.LBB3_318:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_320
.LBB3_319:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r15
.LBB3_320:                              # %.loopexit7
	movl	-44(%rbp), %r12d        # 4-byte Reload
.LBB3_321:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB3_322:
	movl	$42, __A_VARIABLE(%rip)
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_323:
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_321
.Lfunc_end3:
	.size	_vfiprintf_r, .Lfunc_end3-_vfiprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_320
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_38
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_39
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_40
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_43
	.quad	.LBB3_45
	.quad	.LBB3_118
	.quad	.LBB3_53
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_46
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_34
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_73
	.quad	.LBB3_77
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_85
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_75
	.quad	.LBB3_118
	.quad	.LBB3_91
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_97
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_73
	.quad	.LBB3_78
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_47
	.quad	.LBB3_78
	.quad	.LBB3_49
	.quad	.LBB3_118
	.quad	.LBB3_48
	.quad	.LBB3_118
	.quad	.LBB3_54
	.quad	.LBB3_86
	.quad	.LBB3_98
	.quad	.LBB3_49
	.quad	.LBB3_118
	.quad	.LBB3_75
	.quad	.LBB3_49
	.quad	.LBB3_92
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_100
	.quad	.LBB3_118
	.quad	.LBB3_49
                                        # -- End function
	.type	_vfiprintf_r.blanks,@object # @_vfiprintf_r.blanks
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
_vfiprintf_r.blanks:
	.zero	16,32
	.size	_vfiprintf_r.blanks, 16

	.type	_vfiprintf_r.zeroes,@object # @_vfiprintf_r.zeroes
	.p2align	4
_vfiprintf_r.zeroes:
	.zero	16,48
	.size	_vfiprintf_r.zeroes, 16

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
