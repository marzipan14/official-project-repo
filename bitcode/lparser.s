	.text
	.file	"lparser.c"
	.hidden	luaY_parser             # -- Begin function luaY_parser
	.globl	luaY_parser
	.p2align	4, 0x90
	.type	luaY_parser,@function
luaY_parser:                            # @luaY_parser
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$696, %rsp              # imm = 0x2B8
	movq	%rcx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%rdx, -48(%rbp)
	movq	%rcx, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	leaq	-120(%rbp), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	luaX_setinput
	leaq	-720(%rbp), %rsi
	movq	%rbx, %rdi
	callq	open_func
	movq	-720(%rbp), %rax
	movb	$2, 114(%rax)
	movq	%rbx, %rdi
	callq	luaX_next
	movq	-64(%rbp), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	cmpl	$201, %eax
	jb	.LBB0_2
# %bb.1:
	leaq	-120(%rbp), %rdi
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	callq	luaX_lexerror
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-120(%rbp), %r14
	movl	$134283271, %r15d       # imm = 0x8010007
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	testl	%ebx, %ebx
	jne	.LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	leal	-260(%rax), %ecx
	cmpl	$27, %ecx
	ja	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	btl	%ecx, %r15d
	jb	.LBB0_5
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, -104(%rbp)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %rdi
	callq	luaX_next
	jmp	.LBB0_8
.LBB0_9:
	movl	-104(%rbp), %eax
	jmp	.LBB0_10
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movq	-64(%rbp), %rbx
	addw	$-1, 96(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$287, %eax              # imm = 0x11F
	je	.LBB0_12
# %bb.11:
	leaq	-120(%rbp), %r14
	movq	%r14, %rdi
	movl	$287, %esi              # imm = 0x11F
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-120(%rbp), %rdi
	callq	close_func
	movq	-720(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$696, %rsp              # imm = 0x2B8
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaY_parser, .Lfunc_end0-luaY_parser
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function open_func
.LCPI1_0:
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.text
	.p2align	4, 0x90
	.type	open_func,@function
open_func:                              # @open_func
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	56(%rdi), %r15
	movq	%r15, %rdi
	callq	luaF_newproto
	movq	%rax, %r14
	movq	%rax, (%rbx)
	movq	48(%r12), %rax
	movq	%rax, 16(%rbx)
	movq	%r12, 24(%rbx)
	movq	%r15, 32(%rbx)
	movq	%rbx, 48(%r12)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [0,4294967295,4294967295,0]
	movups	%xmm0, 48(%rbx)
	movq	$0, 64(%rbx)
	movw	$0, 72(%rbx)
	movb	$0, 74(%rbx)
	movq	$0, 40(%rbx)
	movq	80(%r12), %rax
	movq	%rax, 64(%r14)
	movb	$2, 115(%r14)
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaH_new
	movq	%rax, 8(%rbx)
	movq	16(%r15), %rcx
	movq	%rax, (%rcx)
	movl	$5, 8(%rcx)
	movq	16(%r15), %rax
	movq	56(%r15), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB1_2
# %bb.1:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r15), %rax
.LBB1_2:
	leaq	16(%rax), %rcx
	movq	%rcx, 16(%r15)
	movq	%r14, 16(%rax)
	movl	$9, 24(%rax)
	movq	16(%r15), %rax
	movq	56(%r15), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB1_4
# %bb.3:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r15), %rax
.LBB1_4:
	addq	$16, %rax
	movq	%rax, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	open_func, .Lfunc_end1-open_func
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function close_func
	.type	close_func,@function
close_func:                             # @close_func
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
	movq	48(%rdi), %rbx
	movq	56(%rdi), %r15
	movq	(%rbx), %r12
	movzbl	74(%rbx), %esi
	testq	%rsi, %rsi
	je	.LBB2_7
# %bb.1:
	movl	48(%rbx), %eax
	movq	48(%r12), %rcx
	movq	%rsi, %rdx
	testb	$1, %sil
	je	.LBB2_3
# %bb.2:
	leal	-1(%rsi), %edx
	movzbl	%dl, %edx
	movzwl	196(%rbx,%rdx,2), %edx
	shlq	$4, %rdx
	movl	%eax, 12(%rcx,%rdx)
	leaq	-1(%rsi), %rdx
.LBB2_3:
	cmpb	$1, %sil
	je	.LBB2_6
# %bb.4:                                # %.preheader
	addq	$255, %rdx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movzbl	%dl, %esi
	movzwl	196(%rbx,%rsi,2), %esi
	shlq	$4, %rsi
	movl	%eax, 12(%rcx,%rsi)
	leal	-1(%rdx), %esi
	movzbl	%sil, %esi
	movzwl	196(%rbx,%rsi,2), %esi
	shlq	$4, %rsi
	movl	%eax, 12(%rcx,%rsi)
	addq	$-2, %rdx
	cmpb	$-1, %dl
	jne	.LBB2_5
.LBB2_6:
	movb	$0, 74(%rbx)
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaK_ret
	movslq	48(%rbx), %rcx
	cmpq	$-1, %rcx
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jl	.LBB2_9
# %bb.8:
	leaq	24(%r12), %r14
	movq	24(%r12), %rsi
	leaq	80(%r12), %r13
	movslq	80(%r12), %rdx
	shlq	$2, %rdx
	shlq	$2, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_10
.LBB2_9:
	movq	%r15, %rdi
	callq	luaM_toobig
	leaq	24(%r12), %r14
	leaq	80(%r12), %r13
.LBB2_10:
	movq	%rax, (%r14)
	movslq	48(%rbx), %rcx
	movl	%ecx, (%r13)
	cmpq	$-1, %rcx
	jl	.LBB2_12
# %bb.11:
	leaq	40(%r12), %r14
	movq	40(%r12), %rsi
	leaq	84(%r12), %r13
	movslq	84(%r12), %rdx
	shlq	$2, %rdx
	shlq	$2, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_13
.LBB2_12:
	movq	%r15, %rdi
	callq	luaM_toobig
	leaq	40(%r12), %r14
	leaq	84(%r12), %r13
.LBB2_13:
	movq	%rax, (%r14)
	movl	48(%rbx), %eax
	movl	%eax, (%r13)
	movslq	64(%rbx), %rcx
	cmpq	$-1, %rcx
	jl	.LBB2_15
# %bb.14:
	leaq	16(%r12), %r14
	movq	16(%r12), %rsi
	leaq	76(%r12), %r13
	movslq	76(%r12), %rdx
	shlq	$4, %rdx
	shlq	$4, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_16
.LBB2_15:
	movq	%r15, %rdi
	callq	luaM_toobig
	leaq	16(%r12), %r14
	leaq	76(%r12), %r13
.LBB2_16:
	movq	%rax, (%r14)
	movl	64(%rbx), %eax
	movl	%eax, (%r13)
	movslq	68(%rbx), %rcx
	cmpq	$-1, %rcx
	jl	.LBB2_18
# %bb.17:
	leaq	32(%r12), %r14
	movq	32(%r12), %rsi
	leaq	88(%r12), %r13
	movslq	88(%r12), %rdx
	shlq	$3, %rdx
	shlq	$3, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_19
.LBB2_18:
	movq	%r15, %rdi
	callq	luaM_toobig
	leaq	32(%r12), %r14
	leaq	88(%r12), %r13
.LBB2_19:
	movq	%rax, (%r14)
	movl	68(%rbx), %eax
	movl	%eax, (%r13)
	movswq	72(%rbx), %rcx
	leaq	1(%rcx), %rax
	shrq	$60, %rax
	jne	.LBB2_21
# %bb.20:
	movq	48(%r12), %rsi
	movslq	92(%r12), %rdx
	shlq	$4, %rdx
	shlq	$4, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_22
.LBB2_21:
	movq	%r15, %rdi
	callq	luaM_toobig
.LBB2_22:
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%rax, 48(%r12)
	movswl	72(%rbx), %eax
	movl	%eax, 92(%r12)
	movzbl	112(%r12), %ecx
	movq	56(%r12), %rsi
	movslq	72(%r12), %rdx
	shlq	$3, %rdx
	shlq	$3, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movq	%rax, 56(%r12)
	movzbl	112(%r12), %eax
	movl	%eax, 72(%r12)
	movq	16(%rbx), %rax
	movq	%rax, 48(%r14)
	movl	$-285, %eax             # imm = 0xFEE3
	addl	16(%r14), %eax
	cmpl	$1, %eax
	ja	.LBB2_24
# %bb.23:
	movq	24(%r14), %rsi
	movq	16(%rsi), %rdx
	addq	$24, %rsi
	movq	%r14, %rdi
	callq	luaX_newstring
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$-32, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	close_func, .Lfunc_end2-close_func
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function statement
.LCPI3_0:
	.quad	4607182418800017408     # double 1
	.text
	.p2align	4, 0x90
	.type	statement,@function
statement:                              # @statement
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rdi, %r13
	movl	$-258, %eax             # imm = 0xFEFE
	addl	16(%rdi), %eax
	cmpl	$19, %eax
	ja	.LBB3_25
# %bb.1:
	movl	4(%r13), %r12d
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_2:
	movq	%r13, %rdi
	callq	luaX_next
	movq	48(%r13), %r14
	movq	40(%r14), %rbx
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB3_5
	.p2align	4, 0x90
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 14(%rbx)
	jne	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	movzbl	13(%rbx), %eax
	orl	%eax, %r15d
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB3_3
.LBB3_5:
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	luaX_syntaxerror
	xorl	%ebx, %ebx
.LBB3_6:
	testl	%r15d, %r15d
	je	.LBB3_8
# %bb.7:
	movzbl	12(%rbx), %edx
	movq	%r14, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_8:
	addq	$8, %rbx
	movq	%r14, %rdi
	callq	luaK_jump
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	luaK_concat
	jmp	.LBB3_51
.LBB3_9:
	movq	48(%r13), %r15
	movl	$-1, -104(%rbp)
	movb	$1, -98(%rbp)
	movb	74(%r15), %al
	movb	%al, -100(%rbp)
	movb	$0, -99(%rbp)
	movq	40(%r15), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_11
# %bb.10:
	movq	56(%r13), %r14
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	cmpl	$44, %eax
	je	.LBB3_90
# %bb.12:
	cmpl	$267, %eax              # imm = 0x10B
	je	.LBB3_90
# %bb.13:
	cmpl	$61, %eax
	jne	.LBB3_123
# %bb.14:
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movq	48(%r13), %r12
	movl	60(%r12), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	$.L.str.19, %esi
	movl	$11, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	new_localvar
	movl	$.L.str.20, %esi
	movl	$11, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	new_localvar
	movl	$.L.str.21, %esi
	movl	$10, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	new_localvar
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	new_localvar
	cmpl	$61, 16(%r13)
	je	.LBB3_16
# %bb.15:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$61, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	je	.LBB3_18
# %bb.17:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$44, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	jne	.LBB3_149
# %bb.19:
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_150
.LBB3_20:
	movq	%r13, %rdi
	callq	luaX_next
	movl	16(%r13), %eax
	cmpl	$265, %eax              # imm = 0x109
	jne	.LBB3_95
# %bb.21:
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %r14
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_23
# %bb.22:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r15
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	new_localvar
	movl	60(%r14), %eax
	movq	$-1, -64(%rbp)
	movl	$6, -80(%rbp)
	movl	%eax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaK_reserveregs
	movq	48(%r13), %rax
	movb	74(%rax), %cl
	addb	$1, %cl
	movb	%cl, 74(%rax)
	movl	48(%rax), %edx
	movq	(%rax), %rsi
	movq	48(%rsi), %rsi
	movzbl	%cl, %ecx
	movzwl	194(%rax,%rcx,2), %eax
	shlq	$4, %rax
	movl	%edx, 8(%rsi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %ecx
	leaq	-112(%rbp), %r15
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	body
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	luaK_storevar
	movl	48(%r14), %eax
	movq	(%r14), %rcx
	movq	48(%rcx), %rcx
	movzbl	74(%r14), %edx
	movzwl	194(%r14,%rdx,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_163
.LBB3_24:
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r13, %rdi
	callq	block
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$259, %edx              # imm = 0x103
	movl	%r12d, %ecx
	callq	check_match
	jmp	.LBB3_162
.LBB3_25:
	movq	48(%r13), %rbx
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	callq	primaryexp
	cmpl	$13, -72(%rbp)
	jne	.LBB3_104
# %bb.26:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	-64(%rbp), %rcx
	movl	$-8372225, %edx         # imm = 0xFF803FFF
	andl	(%rax,%rcx,4), %edx
	orl	$16384, %edx            # imm = 0x4000
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB3_161
.LBB3_27:
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_29
# %bb.28:
	movq	56(%r13), %r14
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_29:
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rbx
	leaq	-112(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$1, %ecx
	callq	singlevaraux
	cmpl	$8, %eax
	jne	.LBB3_31
# %bb.30:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaK_stringK
	movl	%eax, -104(%rbp)
.LBB3_31:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %r12
	leaq	-80(%rbp), %r14
	jmp	.LBB3_33
	.p2align	4, 0x90
.LBB3_32:                               #   in Loop: Header=BB3_33 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_stringK
	movq	$-1, -64(%rbp)
	movl	$4, -80(%rbp)
	movl	%eax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	luaK_indexed
	movl	$42, __A_VARIABLE(%rip)
.LBB3_33:                               # =>This Inner Loop Header: Depth=1
	movl	16(%r13), %eax
	cmpl	$46, %eax
	jne	.LBB3_65
# %bb.34:                               #   in Loop: Header=BB3_33 Depth=1
	movq	48(%r13), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2anyreg
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_32
# %bb.35:                               #   in Loop: Header=BB3_33 Depth=1
	movq	%r14, %rbx
	movq	56(%r13), %r14
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rbx, %r14
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_32
.LBB3_36:
	movl	%r12d, %r14d
	movq	48(%r13), %rbx
	movl	$-1, -80(%rbp)
	movq	%r13, %rdi
	callq	test_then_block
	movl	%eax, %r15d
	leaq	-80(%rbp), %r12
	.p2align	4, 0x90
.LBB3_37:                               # =>This Inner Loop Header: Depth=1
	movl	16(%r13), %eax
	cmpl	$261, %eax              # imm = 0x105
	jne	.LBB3_69
# %bb.38:                               #   in Loop: Header=BB3_37 Depth=1
	movq	%rbx, %rdi
	callq	luaK_jump
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	luaK_concat
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	callq	test_then_block
	movl	%eax, %r15d
	jmp	.LBB3_37
.LBB3_39:
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movq	48(%r13), %r15
	movq	%r15, %rdi
	callq	luaK_getlabel
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	$-1, -104(%rbp)
	movb	$1, -98(%rbp)
	movb	74(%r15), %al
	movb	%al, -100(%rbp)
	movb	$0, -99(%rbp)
	movq	40(%r15), %rcx
	movq	%rcx, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, -128(%rbp)
	movb	%al, -124(%rbp)
	movw	$0, -123(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, -136(%rbp)
	leaq	-136(%rbp), %rax
	movq	%rax, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movq	56(%r13), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	cmpl	$201, %eax
	jb	.LBB3_41
# %bb.40:
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
.LBB3_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r14d            # imm = 0xFEFC
	movl	$134283271, %r12d       # imm = 0x8010007
	jmp	.LBB3_43
	.p2align	4, 0x90
.LBB3_42:                               #   in Loop: Header=BB3_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	testl	%ebx, %ebx
	jne	.LBB3_72
.LBB3_43:                               # =>This Inner Loop Header: Depth=1
	movl	16(%r13), %eax
	addl	%r14d, %eax
	cmpl	$27, %eax
	ja	.LBB3_45
# %bb.44:                               #   in Loop: Header=BB3_43 Depth=1
	btl	%eax, %r12d
	jb	.LBB3_71
.LBB3_45:                               #   in Loop: Header=BB3_43 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r13)
	jne	.LBB3_42
# %bb.46:                               #   in Loop: Header=BB3_43 Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	jmp	.LBB3_42
.LBB3_47:
	movq	48(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	16(%r13), %eax
	leal	-260(%rax), %ecx
	cmpl	$27, %ecx
	ja	.LBB3_140
# %bb.48:
	movl	$134283271, %edx        # imm = 0x8010007
	btl	%ecx, %edx
	jae	.LBB3_140
# %bb.49:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%r15d, %r15d
.LBB3_50:
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	luaK_ret
.LBB3_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB3_163
.LBB3_52:
	movq	48(%r13), %r15
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r15, %rdi
	callq	luaK_getlabel
	movl	%eax, %r14d
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -80(%rbp)
	jne	.LBB3_54
# %bb.53:
	movl	$3, -80(%rbp)
.LBB3_54:
	movq	48(%r13), %rdi
	leaq	-80(%rbp), %rbx
	movq	%rbx, %rsi
	callq	luaK_goiftrue
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, -72(%rbp)
	movb	$1, -66(%rbp)
	movb	74(%r15), %al
	movb	%al, -68(%rbp)
	movb	$0, -67(%rbp)
	movq	40(%r15), %rax
	movq	%rax, -80(%rbp)
	movq	%rbx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$259, 16(%r13)          # imm = 0x103
	je	.LBB3_56
# %bb.55:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$259, %esi              # imm = 0x103
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_56:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	block
	movq	%r15, %rdi
	callq	luaK_jump
	movq	%r15, %rdi
	movl	%eax, %esi
	movl	%r14d, %edx
	callq	luaK_patchlist
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$277, %edx              # imm = 0x115
	movl	%r12d, %ecx
	callq	check_match
	movq	24(%r15), %rcx
	movq	40(%r15), %r14
	movq	(%r14), %rax
	movq	%rax, 40(%r15)
	movb	12(%r14), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB3_62
# %bb.57:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB3_59
# %bb.58:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB3_59:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB3_61
	.p2align	4, 0x90
.LBB3_60:                               # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB3_60
.LBB3_61:
	movb	%al, 74(%rcx)
.LBB3_62:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r14)
	je	.LBB3_64
# %bb.63:
	movzbl	%al, %edx
	movq	%r15, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_64:
	movzbl	74(%r15), %eax
	movl	%eax, 60(%r15)
	movl	8(%r14), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	luaK_patchtohere
	jmp	.LBB3_161
.LBB3_65:
	cmpl	$58, %eax
	jne	.LBB3_105
# %bb.66:
	movq	48(%r13), %r15
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaK_exp2anyreg
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_68
# %bb.67:
	movq	56(%r13), %r14
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_68:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_stringK
	movq	$-1, -64(%rbp)
	movl	$4, -80(%rbp)
	movl	%eax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rsi
	leaq	-80(%rbp), %rdx
	movq	%r15, %rdi
	callq	luaK_indexed
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB3_106
.LBB3_69:
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB3_107
# %bb.70:
	movq	%rbx, %rdi
	callq	luaK_jump
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%eax, %edx
	callq	luaK_concat
	movq	%rbx, %rdi
	movl	%r15d, %esi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r13, %rdi
	callq	block
	jmp	.LBB3_108
.LBB3_71:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_72:
	movq	56(%r13), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$276, %esi              # imm = 0x114
	movl	$272, %edx              # imm = 0x110
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -80(%rbp)
	jne	.LBB3_74
# %bb.73:
	movl	$3, -80(%rbp)
.LBB3_74:
	movq	48(%r13), %rdi
	leaq	-80(%rbp), %rsi
	callq	luaK_goiftrue
	movl	-60(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -123(%rbp)
	je	.LBB3_109
# %bb.75:
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movq	48(%r13), %rbx
	movq	40(%rbx), %r12
	xorl	%r14d, %r14d
	testq	%r12, %r12
	je	.LBB3_78
	.p2align	4, 0x90
.LBB3_76:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, 14(%r12)
	jne	.LBB3_79
# %bb.77:                               #   in Loop: Header=BB3_76 Depth=1
	movzbl	13(%r12), %eax
	orl	%eax, %r14d
	movq	(%r12), %r12
	testq	%r12, %r12
	jne	.LBB3_76
.LBB3_78:
	movl	$.L.str.25, %esi
	movq	%r13, %rdi
	callq	luaX_syntaxerror
	xorl	%r12d, %r12d
.LBB3_79:
	testl	%r14d, %r14d
	je	.LBB3_81
# %bb.80:
	movzbl	12(%r12), %edx
	movq	%rbx, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_81:
	addq	$8, %r12
	movq	%rbx, %rdi
	callq	luaK_jump
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	luaK_patchtohere
	movq	24(%r15), %rcx
	movq	40(%r15), %r14
	movq	(%r14), %rax
	movq	%rax, 40(%r15)
	movb	12(%r14), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB3_87
# %bb.82:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB3_84
# %bb.83:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB3_84:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB3_86
	.p2align	4, 0x90
.LBB3_85:                               # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB3_85
.LBB3_86:
	movb	%al, 74(%rcx)
.LBB3_87:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r14)
	je	.LBB3_89
# %bb.88:
	movzbl	%al, %edx
	movq	%r15, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_89:
	movzbl	74(%r15), %eax
	movl	%eax, 60(%r15)
	movl	8(%r14), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rbx
	movq	%r15, %rdi
	callq	luaK_jump
	movq	%rbx, %rdi
	movl	%eax, %esi
	jmp	.LBB3_118
.LBB3_90:
	movl	%r12d, -48(%rbp)        # 4-byte Spill
	movq	48(%r13), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movl	60(%rax), %eax
	movl	%eax, -84(%rbp)         # 4-byte Spill
	movl	$.L.str.22, %esi
	movl	$15, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	new_localvar
	movl	$.L.str.23, %esi
	movl	$11, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movl	$1, %r12d
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$1, %edx
	callq	new_localvar
	movl	$.L.str.24, %esi
	movl	$13, %edx
	movq	%r13, %rdi
	callq	luaX_newstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	$2, %edx
	callq	new_localvar
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	$3, %edx
	callq	new_localvar
	movl	16(%r13), %eax
	cmpl	$44, %eax
	jne	.LBB3_125
# %bb.91:
	movl	$4, %ebx
	jmp	.LBB3_93
	.p2align	4, 0x90
.LBB3_92:                               #   in Loop: Header=BB3_93 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %r12d
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	new_localvar
	movl	16(%r13), %eax
	movl	%r12d, %ebx
	cmpl	$44, %eax
	jne	.LBB3_124
.LBB3_93:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, 16(%r13)          # imm = 0x11D
	je	.LBB3_92
# %bb.94:                               #   in Loop: Header=BB3_93 Depth=1
	movq	56(%r13), %r14
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_92
.LBB3_95:
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
	xorl	%r14d, %r14d
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB3_97
	jmp	.LBB3_96
	.p2align	4, 0x90
.LBB3_98:                               #   in Loop: Header=BB3_97 Depth=1
	addl	$1, %r14d
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	addq	$-1, %r12
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB3_97
.LBB3_96:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_97:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	new_localvar
	movl	16(%r13), %eax
	cmpl	$44, %eax
	je	.LBB3_98
# %bb.99:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rbx
	negq	%rbx
	cmpl	$61, %eax
	jne	.LBB3_131
# %bb.100:
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	cmpl	$44, 16(%r13)
	jne	.LBB3_103
# %bb.101:
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB3_102:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	leaq	-80(%rbp), %r12
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	cmpl	$44, 16(%r13)
	je	.LBB3_102
.LBB3_103:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB3_132
.LBB3_104:
	movq	$0, -80(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	assignment
	jmp	.LBB3_161
.LBB3_105:                              # %.loopexit15
	xorl	%edx, %edx
.LBB3_106:
	movl	-48(%rbp), %ebx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	%ebx, %ecx
	callq	body
	movq	48(%r13), %rdi
	leaq	-112(%rbp), %rsi
	movq	%r14, %rdx
	callq	luaK_storevar
	movq	48(%r13), %rdi
	movl	%ebx, %esi
	callq	luaK_fixline
	jmp	.LBB3_161
.LBB3_107:
	leaq	-80(%rbp), %rsi
	movq	%rbx, %rdi
	movl	%r15d, %edx
	callq	luaK_concat
.LBB3_108:
	movl	-80(%rbp), %esi
	movq	%rbx, %rdi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$266, %edx              # imm = 0x10A
	movl	%r14d, %ecx
	callq	check_match
	jmp	.LBB3_161
.LBB3_109:
	movq	24(%r15), %rcx
	movq	40(%r15), %r14
	movq	(%r14), %rax
	movq	%rax, 40(%r15)
	movb	12(%r14), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB3_115
# %bb.110:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB3_112
# %bb.111:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB3_112:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB3_114
	.p2align	4, 0x90
.LBB3_113:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB3_113
.LBB3_114:
	movb	%al, 74(%rcx)
.LBB3_115:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r14)
	je	.LBB3_117
# %bb.116:
	movzbl	%al, %edx
	movq	%r15, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_117:
	movzbl	74(%r15), %eax
	movl	%eax, 60(%r15)
	movl	8(%r14), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movl	%r12d, %esi
.LBB3_118:
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	luaK_patchlist
	movq	24(%r15), %rcx
	movq	40(%r15), %r14
	movq	(%r14), %rax
	movq	%rax, 40(%r15)
	movb	12(%r14), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB3_157
# %bb.119:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB3_121
# %bb.120:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB3_121:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB3_156
	.p2align	4, 0x90
.LBB3_122:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB3_122
	jmp	.LBB3_156
.LBB3_123:
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB3_151
.LBB3_124:
	addl	$-3, %r12d
.LBB3_125:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$267, %eax              # imm = 0x10B
	je	.LBB3_127
# %bb.126:
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$267, %esi              # imm = 0x10B
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_127:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$44, 16(%r13)
	jne	.LBB3_130
# %bb.128:                              # %.preheader3
	movl	$1, %ebx
	leaq	-80(%rbp), %r14
	.p2align	4, 0x90
.LBB3_129:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	cmpl	$44, 16(%r13)
	je	.LBB3_129
.LBB3_130:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %rcx
	movq	%r13, %rdi
	movl	$3, %esi
	movl	%ebx, %edx
	callq	adjust_assign
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	$3, %esi
	callq	luaK_checkstack
	movq	%r13, %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-116(%rbp), %edx        # 4-byte Reload
	movl	%r12d, %ecx
	xorl	%r8d, %r8d
	callq	forbody
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB3_151
.LBB3_131:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	xorl	%r15d, %r15d
.LBB3_132:
	leaq	-80(%rbp), %rcx
	movq	%r13, %rdi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	adjust_assign
	movq	48(%r13), %r9
	movzbl	74(%r9), %r8d
	movl	%r8d, %eax
	subl	%r12d, %eax
	movb	%al, 74(%r9)
	movl	48(%r9), %eax
	movq	(%r9), %rcx
	movq	48(%rcx), %rcx
	movl	%ebx, %edi
	andl	$3, %edi
	je	.LBB3_136
# %bb.133:                              # %.preheader18
	movl	%r8d, %edx
	subl	%r12d, %edx
	movzbl	%dl, %edx
	leaq	(%r9,%rdx,2), %rdx
	addq	$196, %rdx
	movq	%r12, %rbx
	.p2align	4, 0x90
.LBB3_134:                              # =>This Inner Loop Header: Depth=1
	movzwl	(%rdx,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%eax, 8(%rcx,%rsi)
	addq	$1, %rbx
	addl	$-1, %edi
	jne	.LBB3_134
# %bb.135:                              # %.loopexit19
	negq	%rbx
.LBB3_136:
	cmpl	$3, %r14d
	jb	.LBB3_160
# %bb.137:                              # %.preheader16
	movl	$3, %edx
	subq	%rbx, %rdx
	leaq	(%r9,%rdx,2), %rdx
	subl	%r12d, %r8d
	movzbl	%r8b, %esi
	leaq	(%rdx,%rsi,2), %rdx
	addq	$196, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_138:                              # =>This Inner Loop Header: Depth=1
	movzwl	-6(%rdx,%rsi,2), %edi
	shlq	$4, %rdi
	movl	%eax, 8(%rcx,%rdi)
	movzwl	-4(%rdx,%rsi,2), %edi
	shlq	$4, %rdi
	movl	%eax, 8(%rcx,%rdi)
	movzwl	-2(%rdx,%rsi,2), %edi
	shlq	$4, %rdi
	movl	%eax, 8(%rcx,%rdi)
	movzwl	(%rdx,%rsi,2), %edi
	shlq	$4, %rdi
	movl	%eax, 8(%rcx,%rdi)
	addq	$4, %rsi
	cmpl	%esi, %ebx
	jne	.LBB3_138
	jmp	.LBB3_160
.LBB3_140:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movl	$0, %r15d
	cmpl	$59, %eax
	je	.LBB3_50
# %bb.141:
	leaq	-80(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$44, 16(%r13)
	jne	.LBB3_144
# %bb.142:                              # %.preheader21
	movl	$1, %ebx
	leaq	-80(%rbp), %r15
.LBB3_143:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%r15, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	cmpl	$44, 16(%r13)
	je	.LBB3_143
.LBB3_144:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-80(%rbp), %eax
	addl	$-13, %eax
	leaq	-80(%rbp), %rsi
	cmpl	$1, %eax
	ja	.LBB3_164
# %bb.145:
	movl	$-1, %r15d
	movq	%r14, %rdi
	movl	$-1, %edx
	callq	luaK_setreturns
	cmpl	$1, %ebx
	jne	.LBB3_148
# %bb.146:
	cmpl	$13, -80(%rbp)
	jne	.LBB3_148
# %bb.147:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	-72(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	andl	$-64, %edx
	orl	$29, %edx
	movl	%edx, (%rax,%rcx,4)
.LBB3_148:
	movzbl	74(%r14), %esi
	jmp	.LBB3_50
.LBB3_149:
	movl	$42, __A_VARIABLE(%rip)
	movl	60(%r12), %ebx
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	%r12, %rdi
	callq	luaK_numberK
	movq	%r12, %rdi
	movl	$1, %esi
	movl	%ebx, %edx
	movl	%eax, %ecx
	callq	luaK_codeABx
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaK_reserveregs
.LBB3_150:
	movq	%r13, %rdi
	movl	-84(%rbp), %esi         # 4-byte Reload
	movl	-48(%rbp), %r12d        # 4-byte Reload
	movl	%r12d, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	forbody
	movl	$42, __A_VARIABLE(%rip)
.LBB3_151:
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$264, %edx              # imm = 0x108
	movl	%r12d, %ecx
	callq	check_match
	movq	24(%r15), %rcx
	movq	40(%r15), %r14
	movq	(%r14), %rax
	movq	%rax, 40(%r15)
	movb	12(%r14), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB3_157
# %bb.152:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB3_154
# %bb.153:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB3_154:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB3_156
	.p2align	4, 0x90
.LBB3_155:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB3_155
.LBB3_156:
	movb	%al, 74(%rcx)
.LBB3_157:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r14)
	je	.LBB3_159
# %bb.158:
	movzbl	%al, %edx
	movq	%r15, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB3_159:
	movzbl	74(%r15), %eax
	movl	%eax, 60(%r15)
	movl	8(%r14), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
.LBB3_160:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_161:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_162:
	xorl	%ebx, %ebx
.LBB3_163:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_164:
	movq	%r14, %rdi
	cmpl	$1, %ebx
	jne	.LBB3_166
# %bb.165:
	callq	luaK_exp2anyreg
	movl	%eax, %esi
	movl	$1, %r15d
	jmp	.LBB3_50
.LBB3_166:
	callq	luaK_exp2nextreg
	movzbl	74(%r14), %esi
	movl	%ebx, %r15d
	jmp	.LBB3_50
.Lfunc_end3:
	.size	statement, .Lfunc_end3-statement
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_2
	.quad	.LBB3_24
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_9
	.quad	.LBB3_27
	.quad	.LBB3_36
	.quad	.LBB3_25
	.quad	.LBB3_20
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_39
	.quad	.LBB3_47
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_25
	.quad	.LBB3_52
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function block
	.type	block,@function
block:                                  # @block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	movq	48(%rdi), %r14
	movl	$-1, -48(%rbp)
	movb	$0, -42(%rbp)
	movb	74(%r14), %al
	movb	%al, -44(%rbp)
	movb	$0, -43(%rbp)
	movq	40(%r14), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rdi), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	cmpl	$201, %eax
	jb	.LBB4_2
# %bb.1:
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r12d            # imm = 0xFEFC
	movl	$134283271, %r13d       # imm = 0x8010007
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r15), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	testl	%ebx, %ebx
	jne	.LBB4_9
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	16(%r15), %eax
	addl	%r12d, %eax
	cmpl	$27, %eax
	ja	.LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	btl	%eax, %r13d
	jb	.LBB4_5
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r15)
	jne	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%r15, %rdi
	callq	luaX_next
	jmp	.LBB4_8
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_9:
	movq	56(%r15), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %rcx
	movq	40(%r14), %r15
	movq	(%r15), %rax
	movq	%rax, 40(%r14)
	movb	12(%r15), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB4_15
# %bb.10:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB4_12
# %bb.11:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB4_12:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB4_14
	.p2align	4, 0x90
.LBB4_13:                               # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB4_13
.LBB4_14:
	movb	%al, 74(%rcx)
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r15)
	je	.LBB4_17
# %bb.16:
	movzbl	%al, %edx
	movq	%r14, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB4_17:
	movzbl	74(%r14), %eax
	movl	%eax, 60(%r14)
	movl	8(%r15), %esi
	movq	%r14, %rdi
	callq	luaK_patchtohere
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
.Lfunc_end4:
	.size	block, .Lfunc_end4-block
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function check_match
	.type	check_match,@function
check_match:                            # @check_match
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
	cmpl	%esi, 16(%rdi)
	jne	.LBB5_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_5
.LBB5_2:
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rbx), %r15d
	movq	56(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	luaX_token2str
	movq	%rax, %r12
	cmpl	%r14d, %r15d
	jne	.LBB5_4
# %bb.3:
	movl	$.L.str, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_5
.LBB5_4:
	movq	%rbx, %rdi
	movl	%r13d, %esi
	callq	luaX_token2str
	movl	$.L.str.17, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	movq	%rax, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	check_match, .Lfunc_end5-check_match
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function test_then_block
	.type	test_then_block,@function
test_then_block:                        # @test_then_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	callq	luaX_next
	leaq	-48(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -48(%rbp)
	jne	.LBB6_2
# %bb.1:
	movl	$3, -48(%rbp)
.LBB6_2:
	movq	48(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	callq	luaK_goiftrue
	movl	-28(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$274, 16(%rbx)          # imm = 0x112
	je	.LBB6_4
# %bb.3:
	movq	56(%rbx), %r15
	movq	%rbx, %rdi
	movl	$274, %esi              # imm = 0x112
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	block
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	test_then_block, .Lfunc_end6-test_then_block
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function subexpr
	.type	subexpr,@function
subexpr:                                # @subexpr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	56(%rdi), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	cmpl	$201, %eax
	jb	.LBB7_2
# %bb.1:
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r12), %eax
	cmpl	$35, %eax
	je	.LBB7_6
# %bb.3:
	cmpl	$270, %eax              # imm = 0x10E
	je	.LBB7_7
# %bb.4:
	cmpl	$45, %eax
	jne	.LBB7_9
# %bb.5:
	xorl	%ebx, %ebx
	jmp	.LBB7_8
.LBB7_6:
	movl	$2, %ebx
	jmp	.LBB7_8
.LBB7_7:
	movl	$1, %ebx
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	luaX_next
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$8, %edx
	callq	subexpr
	movq	48(%r12), %rdi
	movl	%ebx, %esi
	movq	%r15, %rdx
	callq	luaK_prefix
	jmp	.LBB7_27
.LBB7_9:
	movl	$42, __A_VARIABLE(%rip)
	leal	-263(%rax), %ecx
	cmpl	$23, %ecx
	ja	.LBB7_12
# %bb.10:
	jmpq	*.LJTI7_0(,%rcx,8)
.LBB7_11:
	movq	$-1, 16(%r15)
	movl	$3, (%r15)
	jmp	.LBB7_18
.LBB7_12:
	cmpl	$123, %eax
	jne	.LBB7_14
# %bb.13:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	constructor
	jmp	.LBB7_26
.LBB7_14:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	primaryexp
	jmp	.LBB7_26
.LBB7_15:
	movq	%r12, %rdi
	callq	luaX_next
	movl	4(%r12), %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	body
	jmp	.LBB7_26
.LBB7_16:
	movq	$-1, 16(%r15)
	movl	$1, (%r15)
	jmp	.LBB7_18
.LBB7_17:
	movq	$-1, 16(%r15)
	movl	$2, (%r15)
.LBB7_18:
	movl	$0, 8(%r15)
	jmp	.LBB7_24
.LBB7_19:
	movq	48(%r12), %rbx
	movq	(%rbx), %rax
	movb	114(%rax), %cl
	testb	%cl, %cl
	jne	.LBB7_21
# %bb.20:
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	luaX_syntaxerror
	movq	(%rbx), %rax
	movb	114(%rax), %cl
.LBB7_21:
	addq	$114, %rax
	andb	$-5, %cl
	movb	%cl, (%rax)
	movq	%rbx, %rdi
	movl	$37, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movq	$-1, 16(%r15)
	movl	$14, (%r15)
	movl	%eax, 8(%r15)
	jmp	.LBB7_24
.LBB7_22:
	movq	$-1, 16(%r15)
	movl	$5, (%r15)
	movl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r12), %rax
	movq	%rax, 8(%r15)
	jmp	.LBB7_25
.LBB7_23:
	movq	24(%r12), %rsi
	movq	48(%r12), %rdi
	callq	luaK_stringK
	movq	$-1, 16(%r15)
	movl	$4, (%r15)
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_25:
	movq	%r12, %rdi
	callq	luaX_next
.LBB7_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_27:
	movl	16(%r12), %eax
	leal	-37(%rax), %ecx
	cmpl	$57, %ecx
	ja	.LBB7_30
# %bb.28:
	xorl	%r14d, %r14d
	jmpq	*.LJTI7_1(,%rcx,8)
.LBB7_29:
	movl	$4, %r14d
	jmp	.LBB7_46
.LBB7_30:
	addl	$-257, %eax             # imm = 0xFEFF
	cmpl	$26, %eax
	ja	.LBB7_39
# %bb.31:
	jmpq	*.LJTI7_2(,%rax,8)
.LBB7_32:
	movl	$13, %r14d
	jmp	.LBB7_46
.LBB7_33:
	movl	$2, %r14d
	jmp	.LBB7_46
.LBB7_34:
	movl	$1, %r14d
	jmp	.LBB7_46
.LBB7_35:
	movl	$3, %r14d
	jmp	.LBB7_46
.LBB7_36:
	movl	$9, %r14d
	jmp	.LBB7_46
.LBB7_37:
	movl	$11, %r14d
	jmp	.LBB7_46
.LBB7_38:
	movl	$5, %r14d
	jmp	.LBB7_46
.LBB7_39:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_49
.LBB7_40:
	movl	$14, %r14d
	jmp	.LBB7_46
.LBB7_41:
	movl	$6, %r14d
	jmp	.LBB7_46
.LBB7_42:
	movl	$8, %r14d
	jmp	.LBB7_46
.LBB7_43:
	movl	$12, %r14d
	jmp	.LBB7_46
.LBB7_44:
	movl	$10, %r14d
	jmp	.LBB7_46
.LBB7_45:
	movl	$7, %r14d
.LBB7_46:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %r13
	.p2align	4, 0x90
.LBB7_47:                               # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ebx
	movzbl	priority(%rbx,%rbx), %eax
	cmpl	-44(%rbp), %eax         # 4-byte Folded Reload
	jbe	.LBB7_50
# %bb.48:                               #   in Loop: Header=BB7_47 Depth=1
	movq	%r12, %rdi
	callq	luaX_next
	movq	48(%r12), %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	callq	luaK_infix
	movzbl	priority+1(%rbx,%rbx), %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	subexpr
	movl	%eax, %ebx
	movq	48(%r12), %rdi
	movl	%r14d, %esi
	movq	%r15, %rdx
	movq	%r13, %rcx
	callq	luaK_posfix
	movl	%ebx, %r14d
	cmpl	$15, %ebx
	jne	.LBB7_47
.LBB7_49:
	movl	$15, %r14d
.LBB7_50:
	movq	56(%r12), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	subexpr, .Lfunc_end7-subexpr
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_11
	.quad	.LBB7_14
	.quad	.LBB7_15
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_16
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_17
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_19
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_14
	.quad	.LBB7_22
	.quad	.LBB7_14
	.quad	.LBB7_23
.LJTI7_1:
	.quad	.LBB7_29
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_33
	.quad	.LBB7_46
	.quad	.LBB7_39
	.quad	.LBB7_34
	.quad	.LBB7_39
	.quad	.LBB7_35
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_36
	.quad	.LBB7_39
	.quad	.LBB7_37
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_38
.LJTI7_2:
	.quad	.LBB7_32
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_40
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_39
	.quad	.LBB7_41
	.quad	.LBB7_39
	.quad	.LBB7_42
	.quad	.LBB7_43
	.quad	.LBB7_44
	.quad	.LBB7_45
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function constructor
	.type	constructor,@function
constructor:                            # @constructor
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movq	48(%rdi), %r12
	movl	4(%rdi), %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movq	%r12, %rdi
	movl	$10, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movl	%eax, %r14d
	movl	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	%r13, -64(%rbp)
	movq	$-1, 16(%r13)
	movl	$11, (%r13)
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, -72(%rbp)
	movl	$0, -88(%rbp)
	movl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	cmpl	$123, 16(%rbx)
	je	.LBB8_2
# %bb.1:
	movq	56(%rbx), %r13
	movq	%rbx, %rdi
	movl	$123, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$125, 16(%rbx)
	je	.LBB8_28
# %bb.3:
	leaq	-88(%rbp), %r13
	xorl	%eax, %eax
	testl	%eax, %eax
	je	.LBB8_7
	.p2align	4, 0x90
.LBB8_5:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movl	$0, -88(%rbp)
	cmpl	$50, -48(%rbp)
	jne	.LBB8_7
# %bb.6:
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	%r12, %rdi
	movl	$50, %ecx
	callq	luaK_setlist
	movl	$0, -48(%rbp)
.LBB8_7:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rbx), %eax
	cmpl	$91, %eax
	je	.LBB8_15
# %bb.8:                                #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, %rdi
	cmpl	$285, %eax              # imm = 0x11D
	jne	.LBB8_16
# %bb.9:                                #   in Loop: Header=BB8_7 Depth=1
	callq	luaX_lookahead
	cmpl	$61, 32(%rbx)
	jne	.LBB8_10
.LBB8_15:                               #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	recfield
	jmp	.LBB8_23
	.p2align	4, 0x90
.LBB8_16:                               #   in Loop: Header=BB8_7 Depth=1
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %eax
	cmpl	$2147483646, %eax       # imm = 0x7FFFFFFE
	jl	.LBB8_22
# %bb.17:                               #   in Loop: Header=BB8_7 Depth=1
	movq	48(%rbx), %r15
	movq	(%r15), %rax
	movq	32(%r15), %rdi
	movl	96(%rax), %edx
	testl	%edx, %edx
	je	.LBB8_18
# %bb.19:                               #   in Loop: Header=BB8_7 Depth=1
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %r8d
	movl	$2147483645, %ecx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_10:                               #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %eax
	cmpl	$2147483646, %eax       # imm = 0x7FFFFFFE
	jl	.LBB8_22
# %bb.11:                               #   in Loop: Header=BB8_7 Depth=1
	movq	48(%rbx), %r15
	movq	(%r15), %rax
	movq	32(%r15), %rdi
	movl	96(%rax), %edx
	testl	%edx, %edx
	je	.LBB8_12
# %bb.13:                               #   in Loop: Header=BB8_7 Depth=1
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %r8d
	movl	$2147483645, %ecx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB8_14
.LBB8_18:                               #   in Loop: Header=BB8_7 Depth=1
	movl	$.L.str.4, %esi
	movl	$.L.str.3, %ecx
	movl	$2147483645, %edx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB8_20:                               #   in Loop: Header=BB8_7 Depth=1
	movq	%rax, %rsi
	movq	24(%r15), %rdi
	jmp	.LBB8_21
.LBB8_12:                               #   in Loop: Header=BB8_7 Depth=1
	movl	$.L.str.4, %esi
	movl	$.L.str.3, %ecx
	movl	$2147483645, %edx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB8_14:                               #   in Loop: Header=BB8_7 Depth=1
	movq	24(%r15), %rdi
	movq	%rax, %rsi
.LBB8_21:                               #   in Loop: Header=BB8_7 Depth=1
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %eax
.LBB8_22:                               #   in Loop: Header=BB8_7 Depth=1
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	addl	$1, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_23:                               #   in Loop: Header=BB8_7 Depth=1
	movl	16(%rbx), %eax
	cmpl	$44, %eax
	je	.LBB8_24
# %bb.26:                               #   in Loop: Header=BB8_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$59, %eax
	jne	.LBB8_27
.LBB8_24:                               #   in Loop: Header=BB8_7 Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$125, 16(%rbx)
	je	.LBB8_28
# %bb.25:                               #   in Loop: Header=BB8_7 Depth=1
	movl	-88(%rbp), %eax
	testl	%eax, %eax
	jne	.LBB8_5
	jmp	.LBB8_7
.LBB8_27:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_28:
	movq	%rbx, %rdi
	movl	$125, %esi
	movl	$123, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	movl	-48(%rbp), %ecx
	testl	%ecx, %ecx
	je	.LBB8_33
# %bb.29:
	movl	-88(%rbp), %eax
	leal	-13(%rax), %edx
	cmpl	$2, %edx
	jae	.LBB8_30
# %bb.34:
	leaq	-88(%rbp), %rsi
	movq	%r12, %rdi
	movl	$-1, %edx
	callq	luaK_setreturns
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	%r12, %rdi
	movl	$-1, %ecx
	callq	luaK_setlist
	addl	$-1, -52(%rbp)
	jmp	.LBB8_33
.LBB8_30:
	testl	%eax, %eax
	je	.LBB8_32
# %bb.31:
	leaq	-88(%rbp), %rsi
	movq	%r12, %rdi
	callq	luaK_exp2nextreg
	movl	-48(%rbp), %ecx
.LBB8_32:
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	%r12, %rdi
	callq	luaK_setlist
.LBB8_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movslq	%r14d, %r14
	movl	$8388607, %r15d         # imm = 0x7FFFFF
	andl	(%rax,%r14,4), %r15d
	movl	-52(%rbp), %edi
	callq	luaO_int2fb
	movl	%eax, %ebx
	shll	$23, %ebx
	orl	%r15d, %ebx
	movq	(%r12), %rax
	movq	24(%rax), %rax
	movl	%ebx, (%rax,%r14,4)
	andl	$-8372225, %ebx         # imm = 0xFF803FFF
	movl	-56(%rbp), %edi
	callq	luaO_int2fb
	shll	$14, %eax
	andl	$8372224, %eax          # imm = 0x7FC000
	orl	%ebx, %eax
	movq	(%r12), %rcx
	movq	24(%rcx), %rcx
	movl	%eax, (%rcx,%r14,4)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	constructor, .Lfunc_end8-constructor
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function body
	.type	body,@function
body:                                   # @body
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$632, %rsp              # imm = 0x278
	movl	%ecx, %ebx
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	leaq	-672(%rbp), %rsi
	callq	open_func
	movq	-672(%rbp), %rax
	movl	%ebx, 96(%rax)
	cmpl	$40, 16(%r14)
	je	.LBB9_2
# %bb.1:
	movq	56(%r14), %r15
	movq	%r14, %rdi
	movl	$40, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%r13, -48(%rbp)         # 8-byte Spill
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	je	.LBB9_4
# %bb.3:
	movl	$.L.str.6, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	luaX_newstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	new_localvar
	leaq	48(%r14), %r15
	movq	48(%r14), %rsi
	movb	74(%rsi), %al
	addb	$1, %al
	movb	%al, 74(%rsi)
	movl	48(%rsi), %ecx
	movq	(%rsi), %r12
	movq	48(%r12), %rdx
	movzbl	%al, %eax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movzwl	194(%rsi,%rax,2), %eax
	shlq	$4, %rax
	movl	%ecx, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_5
.LBB9_4:
	leaq	48(%r14), %r15
	movq	48(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%rax), %r12
.LBB9_5:
	movb	$0, 114(%r12)
	movl	16(%r14), %ecx
	xorl	%eax, %eax
	movl	$0, %r13d
	cmpl	$41, %ecx
	je	.LBB9_16
# %bb.6:
	xorl	%r13d, %r13d
	cmpl	$285, %ecx              # imm = 0x11D
	je	.LBB9_9
	.p2align	4, 0x90
.LBB9_7:
	cmpl	$279, %ecx              # imm = 0x117
	je	.LBB9_13
# %bb.8:
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	movq	%r12, %r15
	leal	1(%r13), %r12d
	movq	%r14, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%r13d, %edx
	callq	new_localvar
	movl	%r12d, %r13d
	movq	%r15, %r12
	movq	%rbx, %r15
.LBB9_10:
	movb	114(%r12), %al
	testb	%al, %al
	jne	.LBB9_14
# %bb.11:
	cmpl	$44, 16(%r14)
	jne	.LBB9_15
# %bb.12:
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %ecx
	cmpl	$285, %ecx              # imm = 0x11D
	jne	.LBB9_7
	jmp	.LBB9_9
.LBB9_13:
	movq	%r14, %rdi
	callq	luaX_next
	movl	$.L.str.9, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	luaX_newstring
	leal	1(%r13), %ebx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	%r13d, %edx
	callq	new_localvar
	movb	$7, 114(%r12)
	movb	$1, %al
	movl	%ebx, %r13d
	jmp	.LBB9_16
.LBB9_14:
	andb	$1, %al
	jmp	.LBB9_16
.LBB9_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB9_16:
	movq	(%r15), %r10
	movb	74(%r10), %bl
	addb	%r13b, %bl
	movb	%bl, 74(%r10)
	testl	%r13d, %r13d
	je	.LBB9_24
# %bb.17:
	movl	48(%r10), %ecx
	movq	(%r10), %rdx
	movq	48(%rdx), %rdx
	movslq	%r13d, %r11
	movzbl	%bl, %r9d
	leal	-1(%r13), %r8d
	testb	$3, %r13b
	je	.LBB9_21
# %bb.18:                               # %.preheader8
	leaq	(%r9,%r9), %rdi
	leaq	(%r11,%r11), %rbx
	subq	%rbx, %rdi
	leaq	(%rdi,%r10), %rbx
	addq	$196, %rbx
	andl	$3, %r13d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB9_19:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%rdi,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	addq	$1, %rdi
	cmpl	%edi, %r13d
	jne	.LBB9_19
# %bb.20:                               # %.loopexit9
	subq	%rdi, %r11
.LBB9_21:
	cmpl	$3, %r8d
	jb	.LBB9_24
# %bb.22:                               # %.preheader6
	addq	%r9, %r9
	leaq	(%r11,%r11), %rsi
	subq	%rsi, %r9
	leaq	(%r9,%r10), %rdi
	addq	$202, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_23:                               # =>This Inner Loop Header: Depth=1
	movzwl	-6(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movzwl	-4(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movzwl	-2(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movzwl	(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	addq	$4, %rbx
	cmpl	%ebx, %r11d
	jne	.LBB9_23
.LBB9_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movzbl	74(%rdi), %esi
	movl	%esi, %ecx
	subb	%al, %cl
	movb	%cl, 113(%r12)
	callq	luaK_reserveregs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$41, 16(%r14)
	je	.LBB9_26
# %bb.25:
	movq	56(%r14), %rbx
	movq	%r14, %rdi
	movl	$41, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB9_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	cmpl	$201, %eax
	jb	.LBB9_28
# %bb.27:
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
.LBB9_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r12d            # imm = 0xFEFC
	movl	$134283271, %r13d       # imm = 0x8010007
	jmp	.LBB9_30
	.p2align	4, 0x90
.LBB9_29:                               #   in Loop: Header=BB9_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	testl	%ebx, %ebx
	jne	.LBB9_35
.LBB9_30:                               # =>This Inner Loop Header: Depth=1
	movl	16(%r14), %eax
	addl	%r12d, %eax
	cmpl	$27, %eax
	ja	.LBB9_32
# %bb.31:                               #   in Loop: Header=BB9_30 Depth=1
	btl	%eax, %r13d
	jb	.LBB9_34
.LBB9_32:                               #   in Loop: Header=BB9_30 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r14)
	jne	.LBB9_29
# %bb.33:                               #   in Loop: Header=BB9_30 Depth=1
	movq	%r14, %rdi
	callq	luaX_next
	jmp	.LBB9_29
.LBB9_34:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_35:
	movq	56(%r14), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r14), %eax
	movq	-672(%rbp), %rcx
	movl	%eax, 100(%rcx)
	movq	%r14, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$265, %edx              # imm = 0x109
	movl	-52(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	movq	%r14, %rdi
	callq	close_func
	movq	48(%r14), %r15
	movq	(%r15), %r12
	movslq	88(%r12), %r13
	cmpl	%r13d, 68(%r15)
	jge	.LBB9_37
# %bb.36:
	leaq	32(%r12), %rbx
	jmp	.LBB9_40
.LBB9_37:
	leaq	88(%r12), %rdx
	movq	56(%r14), %rdi
	leaq	32(%r12), %rbx
	movq	32(%r12), %rsi
	movl	$8, %ecx
	movl	$.L.str.11, %r9d
	movl	$262143, %r8d           # imm = 0x3FFFF
	callq	luaM_growaux_
	movq	%rax, 32(%r12)
	movslq	88(%r12), %rcx
	cmpl	%ecx, %r13d
	jge	.LBB9_40
# %bb.38:
	leaq	1(%r13), %rdx
	movq	$0, (%rax,%r13,8)
	cmpq	%rcx, %rdx
	jne	.LBB9_48
.LBB9_40:
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB9_41:
	movq	-672(%rbp), %rax
	movq	(%rbx), %rdx
	movslq	68(%r15), %rsi
	leal	1(%rsi), %ecx
	movl	%ecx, 68(%r15)
	movq	%rax, (%rdx,%rsi,8)
	movq	-672(%rbp), %rdx
	testb	$3, 9(%rdx)
	je	.LBB9_44
# %bb.42:
	testb	$4, 9(%r12)
	je	.LBB9_44
# %bb.43:
	movq	56(%r14), %rdi
	movq	%r12, %rsi
	callq	luaC_barrierf
	movl	68(%r15), %ecx
.LBB9_44:
	addl	$-1, %ecx
	movq	%r15, %rdi
	movl	$36, %esi
	xorl	%edx, %edx
	callq	luaK_codeABx
	movq	$-1, 16(%r13)
	movl	$11, (%r13)
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-672(%rbp), %rax
	cmpb	$0, 112(%rax)
	je	.LBB9_47
# %bb.45:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_46:                               # =>This Inner Loop Header: Depth=1
	xorl	%esi, %esi
	cmpb	$6, -597(%rbp,%rbx,2)
	setne	%sil
	shll	$2, %esi
	movzbl	-596(%rbp,%rbx,2), %ecx
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	addq	$1, %rbx
	movq	-672(%rbp), %rax
	movzbl	112(%rax), %eax
	cmpq	%rax, %rbx
	jb	.LBB9_46
.LBB9_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$632, %rsp              # imm = 0x278
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_48:
	movl	%r13d, %eax
	notl	%eax
	leal	(%rcx,%rax), %esi
	movq	%rcx, %rax
	subq	%r13, %rax
	addq	$-2, %rax
	andq	$3, %rsi
	je	.LBB9_52
# %bb.49:                               # %.preheader3
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB9_50:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	$0, (%rdi,%rdx,8)
	addq	$1, %rdx
	addq	$-1, %rsi
	jne	.LBB9_50
# %bb.51:
	cmpq	$3, %rax
	jae	.LBB9_53
	jmp	.LBB9_41
.LBB9_52:
	movq	-48(%rbp), %r13         # 8-byte Reload
	cmpq	$3, %rax
	jb	.LBB9_41
	.p2align	4, 0x90
.LBB9_53:                               # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	$0, (%rax,%rdx,8)
	movq	(%rbx), %rax
	movq	$0, 8(%rax,%rdx,8)
	movq	(%rbx), %rax
	movq	$0, 16(%rax,%rdx,8)
	movq	(%rbx), %rax
	movq	$0, 24(%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB9_53
	jmp	.LBB9_41
.Lfunc_end9:
	.size	body, .Lfunc_end9-body
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function primaryexp
	.type	primaryexp,@function
primaryexp:                             # @primaryexp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	48(%rdi), %r15
	movl	16(%rdi), %eax
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB10_3
# %bb.1:
	cmpl	$40, %eax
	jne	.LBB10_6
# %bb.2:
	movl	4(%rbx), %r12d
	movq	%rbx, %rdi
	callq	luaX_next
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$41, %esi
	movl	$40, %edx
	movl	%r12d, %ecx
	callq	check_match
	movq	48(%rbx), %rdi
	movq	%r14, %rsi
	callq	luaK_dischargevars
	jmp	.LBB10_7
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %r12
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movl	$1, %ecx
	callq	singlevaraux
	cmpl	$8, %eax
	jne	.LBB10_5
# %bb.4:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	luaK_stringK
	movl	%eax, 8(%r14)
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_7
.LBB10_6:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %r13
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB10_8
	.p2align	4, 0x90
.LBB10_18:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
.LBB10_19:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	funcargs
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	movl	16(%rbx), %eax
	cmpl	$90, %eax
	jg	.LBB10_15
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	cmpl	$40, %eax
	je	.LBB10_18
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	cmpl	$46, %eax
	je	.LBB10_20
# %bb.11:                               #   in Loop: Header=BB10_8 Depth=1
	cmpl	$58, %eax
	jne	.LBB10_24
# %bb.12:                               #   in Loop: Header=BB10_8 Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	je	.LBB10_14
# %bb.13:                               #   in Loop: Header=BB10_8 Depth=1
	movq	56(%rbx), %r12
	movq	%rbx, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB10_14:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %r12
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r12, %rsi
	callq	luaK_stringK
	movq	$-1, -48(%rbp)
	movl	$4, -64(%rbp)
	movl	%eax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	luaK_self
	jmp	.LBB10_19
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_8 Depth=1
	cmpl	$91, %eax
	je	.LBB10_23
# %bb.16:                               #   in Loop: Header=BB10_8 Depth=1
	cmpl	$123, %eax
	je	.LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_8 Depth=1
	cmpl	$286, %eax              # imm = 0x11E
	je	.LBB10_18
	jmp	.LBB10_24
.LBB10_20:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%r13, %r15
	movq	48(%rbx), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2anyreg
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	je	.LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_8 Depth=1
	movq	56(%rbx), %r12
	movq	%rbx, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:                              #   in Loop: Header=BB10_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %r12
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r12, %rsi
	callq	luaK_stringK
	movq	$-1, -48(%rbp)
	movl	$4, -64(%rbp)
	movl	%eax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %r13
	movq	%r15, %rdx
	callq	luaK_indexed
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r15         # 8-byte Reload
	jmp	.LBB10_8
.LBB10_23:                              #   in Loop: Header=BB10_8 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2anyreg
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	yindex
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	luaK_indexed
	jmp	.LBB10_8
.LBB10_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	primaryexp, .Lfunc_end10-primaryexp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function recfield
	.type	recfield,@function
recfield:                               # @recfield
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	48(%rdi), %r15
	movl	60(%r15), %eax
	cmpl	$285, 16(%rdi)          # imm = 0x11D
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB11_8
# %bb.1:
	cmpl	$2147483646, 32(%r14)   # imm = 0x7FFFFFFE
	jl	.LBB11_7
# %bb.2:
	movq	(%r15), %rax
	movq	32(%r15), %rdi
	movl	96(%rax), %edx
	testl	%edx, %edx
	je	.LBB11_3
# %bb.4:
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %r8d
	movl	$2147483645, %ecx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB11_5
.LBB11_8:
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	callq	yindex
	leaq	32(%r14), %r13
	jmp	.LBB11_9
.LBB11_3:
	movl	$.L.str.4, %esi
	movl	$.L.str.3, %ecx
	movl	$2147483645, %edx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB11_5:
	movq	24(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	je	.LBB11_7
# %bb.6:
	movq	56(%rbx), %r12
	movq	%rbx, %rdi
	movl	$285, %esi              # imm = 0x11D
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB11_7:
	leaq	32(%r14), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %r12
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r12, %rsi
	callq	luaK_stringK
	movq	$-1, -56(%rbp)
	movl	$4, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_9:
	addl	$1, (%r13)
	cmpl	$61, 16(%rbx)
	je	.LBB11_11
# %bb.10:
	movq	56(%rbx), %r12
	movq	%rbx, %rdi
	movl	$61, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r12, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB11_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaK_exp2RK
	movl	%eax, %r12d
	leaq	-96(%rbp), %r13
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %rax
	movl	8(%rax), %ebx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2RK
	movq	%r15, %rdi
	movl	$9, %esi
	movl	%ebx, %edx
	movl	%r12d, %ecx
	movl	%eax, %r8d
	callq	luaK_codeABC
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 60(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	recfield, .Lfunc_end11-recfield
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function yindex
	.type	yindex,@function
yindex:                                 # @yindex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	luaX_next
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r14, %rsi
	callq	luaK_exp2val
	cmpl	$93, 16(%rbx)
	je	.LBB12_2
# %bb.1:
	movq	56(%rbx), %r14
	movq	%rbx, %rdi
	movl	$93, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	yindex, .Lfunc_end12-yindex
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function new_localvar
	.type	new_localvar,@function
new_localvar:                           # @new_localvar
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r13d
	movq	%rsi, %r9
	movq	%rdi, %r10
	movq	48(%rdi), %r14
	movzbl	74(%r14), %eax
	addl	%edx, %eax
	movq	%r14, %rbx
	cmpl	$200, %eax
	jl	.LBB13_5
# %bb.1:
	movq	(%r14), %rax
	movq	32(%r14), %rdi
	movl	96(%rax), %edx
	movq	%r10, %r12
	movq	%r9, %r15
	testl	%edx, %edx
	je	.LBB13_2
# %bb.3:
	movl	$.L.str.5, %esi
	movl	$.L.str.7, %r8d
	movl	$200, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB13_4
.LBB13_2:
	movl	$.L.str.4, %esi
	movl	$.L.str.7, %ecx
	movl	$200, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB13_4:
	movq	%rax, %rsi
	movq	24(%r14), %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r10
	movq	48(%r12), %rbx
	movq	%r15, %r9
.LBB13_5:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movq	(%rbx), %r12
	movslq	92(%r12), %rcx
	movswl	72(%rbx), %eax
	cmpl	%eax, %ecx
	jle	.LBB13_7
# %bb.6:
	movq	48(%r12), %rax
	jmp	.LBB13_15
.LBB13_7:
	leaq	92(%r12), %rdx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	56(%r10), %rdi
	movq	48(%r12), %rsi
	movl	$16, %ecx
	movq	%r9, %r15
	movl	$.L.str.8, %r9d
	movl	$32767, %r8d            # imm = 0x7FFF
	movq	%r14, %r13
	movq	%r10, %r14
	callq	luaM_growaux_
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r13, %r14
	movq	%r15, %r9
	movq	%rax, 48(%r12)
	movslq	92(%r12), %rcx
	cmpl	%ecx, %edi
	jge	.LBB13_15
# %bb.8:
	movl	%ecx, %esi
	subl	%edi, %esi
	movq	%rdi, %r8
	notq	%r8
	addq	%rcx, %r8
	andq	$3, %rsi
	je	.LBB13_12
# %bb.9:                                # %.preheader1
	shlq	$4, %rdi
	addq	%rax, %rdi
	negq	%rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_10:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rdi)
	addq	$16, %rdi
	addq	$-1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB13_10
# %bb.11:                               # %.loopexit2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
.LBB13_12:
	cmpq	$3, %r8
	jb	.LBB13_15
# %bb.13:                               # %.preheader
	subq	%rdi, %rcx
	shlq	$4, %rdi
	leaq	(%rdi,%rax), %rdx
	addq	$48, %rdx
	.p2align	4, 0x90
.LBB13_14:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rdx)
	movq	$0, -32(%rdx)
	movq	$0, -16(%rdx)
	movq	$0, (%rdx)
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB13_14
.LBB13_15:
	movswq	72(%rbx), %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%r9, (%rax,%rdx)
	testb	$3, 9(%r9)
	je	.LBB13_16
# %bb.17:
	testb	$4, 9(%r12)
	movl	-44(%rbp), %r15d        # 4-byte Reload
	je	.LBB13_19
# %bb.18:
	movq	56(%r10), %rdi
	movq	%r12, %rsi
	movq	%r9, %rdx
	callq	luaC_barrierf
	movzwl	72(%rbx), %ecx
	jmp	.LBB13_19
.LBB13_16:
	movl	-44(%rbp), %r15d        # 4-byte Reload
.LBB13_19:
	leal	1(%rcx), %eax
	movw	%ax, 72(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	74(%r14), %eax
	movslq	%r15d, %rdx
	addq	%rax, %rdx
	movw	%cx, 196(%r14,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	new_localvar, .Lfunc_end13-new_localvar
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function funcargs
	.type	funcargs,@function
funcargs:                               # @funcargs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	48(%rdi), %r12
	movl	4(%rdi), %r14d
	movl	16(%rdi), %eax
	cmpl	$286, %eax              # imm = 0x11E
	je	.LBB14_12
# %bb.1:
	cmpl	$123, %eax
	je	.LBB14_14
# %bb.2:
	cmpl	$40, %eax
	jne	.LBB14_13
# %bb.3:
	cmpl	8(%rbx), %r14d
	je	.LBB14_5
# %bb.4:
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
.LBB14_5:
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$41, 16(%rbx)
	jne	.LBB14_7
# %bb.6:
	movl	$0, -64(%rbp)
	jmp	.LBB14_11
.LBB14_12:
	movq	24(%rbx), %rsi
	movq	%r12, %rdi
	callq	luaK_stringK
	movq	$-1, -48(%rbp)
	movl	$4, -64(%rbp)
	movl	%eax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	jmp	.LBB14_15
.LBB14_14:
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	callq	constructor
	jmp	.LBB14_15
.LBB14_13:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB14_20
.LBB14_7:
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%rbx)
	jne	.LBB14_10
# %bb.8:                                # %.preheader
	leaq	-64(%rbp), %r13
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%rbx)
	je	.LBB14_9
.LBB14_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	movl	$-1, %edx
	callq	luaK_setreturns
.LBB14_11:
	movq	%rbx, %rdi
	movl	$41, %esi
	movl	$40, %edx
	movl	%r14d, %ecx
	callq	check_match
.LBB14_15:
	movl	8(%r15), %ebx
	xorl	%ecx, %ecx
	movl	-64(%rbp), %eax
	leal	-13(%rax), %edx
	cmpl	$2, %edx
	jb	.LBB14_19
# %bb.16:
	testl	%eax, %eax
	je	.LBB14_18
# %bb.17:
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	luaK_exp2nextreg
.LBB14_18:
	movl	60(%r12), %ecx
	subl	%ebx, %ecx
.LBB14_19:
	movq	%r12, %rdi
	movl	$28, %esi
	movl	%ebx, %edx
	movl	$2, %r8d
	callq	luaK_codeABC
	movq	$-1, 16(%r15)
	movl	$13, (%r15)
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%r14d, %esi
	callq	luaK_fixline
	addl	$1, %ebx
	movl	%ebx, 60(%r12)
.LBB14_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	funcargs, .Lfunc_end14-funcargs
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function singlevaraux
	.type	singlevaraux,@function
singlevaraux:                           # @singlevaraux
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
	testq	%rdi, %rdi
	je	.LBB15_1
# %bb.2:
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzbl	74(%rdi), %edx
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	testq	%rdx, %rdx
	jle	.LBB15_4
# %bb.8:                                #   in Loop: Header=BB15_3 Depth=1
	movq	(%rbx), %rax
	movq	48(%rax), %rax
	movzwl	194(%rbx,%rdx,2), %esi
	addq	$-1, %rdx
	shlq	$4, %rsi
	cmpq	%r15, (%rax,%rsi)
	jne	.LBB15_3
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB15_5
# %bb.10:
	movq	$-1, 16(%r14)
	movl	$6, (%r14)
	movl	%edx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %eax
	testl	%ecx, %ecx
	jne	.LBB15_39
# %bb.11:
	movq	40(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB15_16
	.p2align	4, 0x90
.LBB15_13:                              # =>This Inner Loop Header: Depth=1
	movzbl	12(%rcx), %esi
	cmpl	%edx, %esi
	jle	.LBB15_15
# %bb.14:                               #   in Loop: Header=BB15_13 Depth=1
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB15_13
	jmp	.LBB15_16
.LBB15_1:
	movq	$-1, 16(%r14)
	movl	$8, (%r14)
	movl	$255, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	jmp	.LBB15_39
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_5:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	singlevaraux
	movl	%eax, %ecx
	movl	$8, %eax
	cmpl	$8, %ecx
	je	.LBB15_39
# %bb.6:
	movq	(%rbx), %r12
	movl	72(%r12), %r8d
	movzbl	112(%r12), %eax
	testq	%rax, %rax
	je	.LBB15_7
# %bb.17:
	movl	(%r14), %esi
	leaq	8(%r14), %rcx
	xorl	%edx, %edx
	jmp	.LBB15_18
	.p2align	4, 0x90
.LBB15_20:                              #   in Loop: Header=BB15_18 Depth=1
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jae	.LBB15_21
.LBB15_18:                              # =>This Inner Loop Header: Depth=1
	movzbl	75(%rbx,%rdx,2), %edi
	cmpl	%edi, %esi
	jne	.LBB15_20
# %bb.19:                               #   in Loop: Header=BB15_18 Depth=1
	movzbl	76(%rbx,%rdx,2), %edi
	cmpl	%edi, (%rcx)
	jne	.LBB15_20
	jmp	.LBB15_38
.LBB15_21:
	movl	%r8d, %ecx
	cmpb	$60, %al
	jb	.LBB15_26
# %bb.22:
	movl	%r8d, %r13d
	movl	96(%r12), %edx
	movq	32(%rbx), %rdi
	testl	%edx, %edx
	je	.LBB15_23
# %bb.24:
	movl	$.L.str.5, %esi
	movl	$.L.str.13, %r8d
	movl	$60, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB15_25
.LBB15_7:
	xorl	%eax, %eax
	movl	%r8d, %ecx
	jmp	.LBB15_26
.LBB15_15:
	movb	$1, 13(%rcx)
.LBB15_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB15_39
.LBB15_23:
	movl	$.L.str.4, %esi
	movl	$.L.str.13, %ecx
	movl	$60, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB15_25:
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movb	112(%r12), %al
	movl	72(%r12), %ecx
	movl	%r13d, %r8d
.LBB15_26:
	movzbl	%al, %eax
	cmpl	%eax, %ecx
	jle	.LBB15_28
# %bb.27:
	leaq	56(%r12), %r13
	movq	56(%r12), %rax
	cmpl	%ecx, %r8d
	jl	.LBB15_30
	jmp	.LBB15_34
.LBB15_28:
	leaq	72(%r12), %rdx
	movq	32(%rbx), %rdi
	leaq	56(%r12), %r13
	movq	56(%r12), %rsi
	movl	$8, %ecx
	movl	$.L.str.14, %r9d
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movl	-44(%rbp), %r8d         # 4-byte Reload
	movq	%rax, 56(%r12)
	movl	72(%r12), %ecx
	cmpl	%ecx, %r8d
	jge	.LBB15_34
.LBB15_30:
	movslq	%r8d, %rdx
	movslq	%ecx, %rsi
	subl	%r8d, %ecx
	movq	%rdx, %rdi
	notq	%rdi
	addq	%rsi, %rdi
	andq	$3, %rcx
	je	.LBB15_32
	.p2align	4, 0x90
.LBB15_31:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rdx,8)
	addq	$1, %rdx
	movq	(%r13), %rax
	addq	$-1, %rcx
	jne	.LBB15_31
.LBB15_32:
	cmpq	$3, %rdi
	jb	.LBB15_34
	.p2align	4, 0x90
.LBB15_33:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rdx,8)
	movq	(%r13), %rax
	movq	$0, 8(%rax,%rdx,8)
	movq	(%r13), %rax
	movq	$0, 16(%rax,%rdx,8)
	movq	(%r13), %rax
	movq	$0, 24(%rax,%rdx,8)
	addq	$4, %rdx
	movq	(%r13), %rax
	cmpq	%rdx, %rsi
	jne	.LBB15_33
.LBB15_34:
	movb	112(%r12), %dl
	movzbl	%dl, %esi
	movq	%r15, (%rax,%rsi,8)
	testb	$3, 9(%r15)
	je	.LBB15_37
# %bb.35:
	testb	$4, 9(%r12)
	je	.LBB15_37
# %bb.36:
	movq	32(%rbx), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	luaC_barrierf
	movb	112(%r12), %dl
	movzbl	%dl, %esi
.LBB15_37:
	movb	(%r14), %al
	movb	%al, 75(%rbx,%rsi,2)
	leaq	8(%r14), %rcx
	movb	8(%r14), %al
	movb	%al, 76(%rbx,%rsi,2)
	leal	1(%rdx), %eax
	movb	%al, 112(%r12)
	movzbl	%dl, %edx
.LBB15_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, (%rcx)
	movl	$7, (%r14)
	movl	$7, %eax
.LBB15_39:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	singlevaraux, .Lfunc_end15-singlevaraux
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function forbody
	.type	forbody,@function
forbody:                                # @forbody
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r8d, %ebx
                                        # kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	48(%rdi), %r13
	movb	74(%r13), %al
	addb	$3, %al
	movb	%al, 74(%r13)
	movl	48(%r13), %ecx
	movq	(%r13), %rdx
	movq	48(%rdx), %rdx
	movzbl	%al, %eax
	movzwl	190(%r13,%rax,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movzwl	192(%r13,%rax,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movzwl	194(%r13,%rax,2), %eax
	shlq	$4, %rax
	movl	%ecx, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$259, 16(%rdi)          # imm = 0x103
	je	.LBB16_2
# %bb.1:
	movq	56(%r15), %r14
	movq	%r15, %rdi
	movl	$259, %esi              # imm = 0x103
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r14, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	movl	%ebx, -48(%rbp)         # 4-byte Spill
	movq	%r13, %rdi
	je	.LBB16_4
# %bb.3:
	movl	$32, %esi
	movl	%r12d, %edx
	movl	$131070, %ecx           # imm = 0x1FFFE
	callq	luaK_codeABx
	jmp	.LBB16_5
.LBB16_4:
	callq	luaK_jump
.LBB16_5:
	movl	%eax, %r14d
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	$-1, -72(%rbp)
	movb	$0, -66(%rbp)
	movb	74(%r13), %al
	movb	%al, -68(%rbp)
	movb	$0, -67(%rbp)
	movq	40(%r13), %rax
	movq	%rax, -80(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r15), %r10
	movb	74(%r10), %bl
	addb	%r12b, %bl
	movb	%bl, 74(%r10)
	testl	%r12d, %r12d
	je	.LBB16_13
# %bb.6:
	movl	48(%r10), %eax
	movq	(%r10), %rcx
	movq	48(%rcx), %rcx
	movslq	%r12d, %r11
	movzbl	%bl, %r9d
	leal	-1(%r12), %r8d
	testb	$3, %r12b
	je	.LBB16_10
# %bb.7:                                # %.preheader3
	leaq	(%r9,%r9), %rsi
	leaq	(%r11,%r11), %rdi
	subq	%rdi, %rsi
	leaq	(%rsi,%r10), %rbx
	addq	$196, %rbx
	movl	%r12d, %edi
	andl	$3, %edi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB16_8:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%rbx,%rsi,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	addq	$1, %rsi
	cmpl	%esi, %edi
	jne	.LBB16_8
# %bb.9:                                # %.loopexit4
	subq	%rsi, %r11
.LBB16_10:
	cmpl	$3, %r8d
	jb	.LBB16_13
# %bb.11:                               # %.preheader1
	addq	%r9, %r9
	leaq	(%r11,%r11), %rdx
	subq	%rdx, %r9
	leaq	(%r9,%r10), %rsi
	addq	$202, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB16_12:                              # =>This Inner Loop Header: Depth=1
	movzwl	-6(%rsi,%rdi,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	movzwl	-4(%rsi,%rdi,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	movzwl	-2(%rsi,%rdi,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	movzwl	(%rsi,%rdi,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	addq	$4, %rdi
	cmpl	%edi, %r11d
	jne	.LBB16_12
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	luaK_reserveregs
	movq	%r15, %rdi
	callq	block
	movq	24(%r13), %rcx
	movq	40(%r13), %r15
	movq	(%r15), %rax
	movq	%rax, 40(%r13)
	movb	12(%r15), %al
	movq	48(%rcx), %rcx
	movzbl	74(%rcx), %r8d
	cmpb	%al, %r8b
	jbe	.LBB16_19
# %bb.14:
	movl	48(%rcx), %edx
	movq	(%rcx), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%al, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB16_16
# %bb.15:
	leal	-1(%r8), %edi
	movzbl	%dil, %edi
	movzwl	196(%rcx,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%edx, 12(%rsi,%rdi)
	leaq	-1(%r8), %rdi
.LBB16_16:
	leal	1(%rax), %ebx
	cmpb	%bl, %r8b
	je	.LBB16_18
	.p2align	4, 0x90
.LBB16_17:                              # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	leal	254(%rdi), %ebx
	movzbl	%bl, %ebx
	movzwl	196(%rcx,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%edx, 12(%rsi,%rbx)
	addq	$-2, %rdi
	cmpb	%al, %dil
	ja	.LBB16_17
.LBB16_18:
	movb	%al, 74(%rcx)
.LBB16_19:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r15)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	je	.LBB16_21
# %bb.20:
	movzbl	%al, %edx
	movq	%r13, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
.LBB16_21:
	movzbl	74(%r13), %eax
	movl	%eax, 60(%r13)
	movl	8(%r15), %esi
	movq	%r13, %rdi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	luaK_patchtohere
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB16_23
# %bb.22:
	movq	%r13, %rdi
	movl	$31, %esi
	movl	%ebx, %edx
	movl	$131070, %ecx           # imm = 0x1FFFE
	callq	luaK_codeABx
	movl	%eax, %r15d
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaK_fixline
	jmp	.LBB16_24
.LBB16_23:
	movq	%r13, %rdi
	movl	$33, %esi
	movl	%ebx, %edx
	xorl	%ecx, %ecx
	movl	%r12d, %r8d
	callq	luaK_codeABC
	movq	%r13, %rdi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	luaK_fixline
	movq	%r13, %rdi
	callq	luaK_jump
	movl	%eax, %r15d
.LBB16_24:
	addl	$1, %r14d
	movq	%r13, %rdi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	luaK_patchlist
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	forbody, .Lfunc_end16-forbody
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function adjust_assign
	.type	adjust_assign,@function
adjust_assign:                          # @adjust_assign
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	movq	48(%rdi), %r14
	subl	%edx, %ebx
	movl	(%rcx), %eax
	leal	-13(%rax), %edx
	cmpl	$2, %edx
	jae	.LBB17_1
# %bb.5:
	xorl	%eax, %eax
	addl	$1, %ebx
	cmovsl	%eax, %ebx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%ebx, %edx
	callq	luaK_setreturns
	cmpl	$2, %ebx
	jl	.LBB17_7
# %bb.6:
	addl	$-1, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_reserveregs
	jmp	.LBB17_7
.LBB17_1:
	testl	%eax, %eax
	je	.LBB17_3
# %bb.2:
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	luaK_exp2nextreg
.LBB17_3:
	testl	%ebx, %ebx
	jle	.LBB17_7
# %bb.4:
	movl	60(%r14), %r15d
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_reserveregs
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	luaK_nil
.LBB17_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	adjust_assign, .Lfunc_end17-adjust_assign
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function assignment
	.type	assignment,@function
assignment:                             # @assignment
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	8(%rsi), %eax
	addl	$-6, %eax
	cmpl	$4, %eax
	jb	.LBB18_2
# %bb.1:
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	callq	luaX_syntaxerror
.LBB18_2:
	leaq	8(%rbx), %r14
	movl	16(%r12), %eax
	cmpl	$44, %eax
	jne	.LBB18_20
# %bb.3:
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -72(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	primaryexp
	cmpl	$6, -64(%rbp)
	jne	.LBB18_14
# %bb.4:
	movq	48(%r12), %r13
	movl	60(%r13), %eax
	xorl	%ecx, %ecx
	jmp	.LBB18_5
	.p2align	4, 0x90
.LBB18_10:                              #   in Loop: Header=BB18_5 Depth=1
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB18_11
.LBB18_5:                               # =>This Inner Loop Header: Depth=1
	cmpl	$9, 8(%rbx)
	jne	.LBB18_10
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	movl	-56(%rbp), %edx
	cmpl	%edx, 16(%rbx)
	jne	.LBB18_8
# %bb.7:                                #   in Loop: Header=BB18_5 Depth=1
	movl	%eax, 16(%rbx)
	movl	$1, %ecx
	movl	-56(%rbp), %edx
.LBB18_8:                               #   in Loop: Header=BB18_5 Depth=1
	cmpl	%edx, 20(%rbx)
	jne	.LBB18_10
# %bb.9:                                #   in Loop: Header=BB18_5 Depth=1
	movl	%eax, 20(%rbx)
	movl	$1, %ecx
	jmp	.LBB18_10
.LBB18_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %eax
	je	.LBB18_22
# %bb.21:
	movq	56(%r12), %rbx
	movq	%r12, %rdi
	movl	$61, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB18_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	cmpl	$44, 16(%r12)
	jne	.LBB18_25
# %bb.23:
	movl	$1, %ebx
	leaq	-72(%rbp), %r13
	.p2align	4, 0x90
.LBB18_24:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r12), %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	cmpl	$44, 16(%r12)
	je	.LBB18_24
.LBB18_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebx
	jne	.LBB18_26
# %bb.30:
	movq	48(%r12), %rdi
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	luaK_setoneret
	movq	48(%r12), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	jmp	.LBB18_29
.LBB18_11:
	testl	%ecx, %ecx
	je	.LBB18_13
# %bb.12:
	movl	60(%r13), %edx
	movl	-56(%rbp), %ecx
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaK_reserveregs
.LBB18_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_14:
	movq	56(%r12), %rax
	movzwl	96(%rax), %ecx
	movl	$200, %eax
	subl	%ecx, %eax
	cmpl	%r15d, %eax
	jge	.LBB18_19
# %bb.15:
	movq	48(%r12), %rbx
	movq	(%rbx), %rcx
	movq	32(%rbx), %rdi
	movl	96(%rcx), %edx
	testl	%edx, %edx
	je	.LBB18_16
# %bb.17:
	movl	$.L.str.5, %esi
	movl	$.L.str.27, %r8d
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB18_18
.LBB18_26:
	leaq	-72(%rbp), %rcx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	adjust_assign
	cmpl	%r15d, %ebx
	jle	.LBB18_28
# %bb.27:
	movq	48(%r12), %rax
	subl	%ebx, %r15d
	addl	%r15d, 60(%rax)
	jmp	.LBB18_28
.LBB18_16:
	movl	$.L.str.4, %esi
	movl	$.L.str.27, %ecx
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB18_18:
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB18_19:
	addl	$1, %r15d
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	assignment
.LBB18_28:
	movq	48(%r12), %rdi
	movl	60(%rdi), %eax
	addl	$-1, %eax
	movq	$-1, -56(%rbp)
	movl	$12, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rdx
	movq	%r14, %rsi
.LBB18_29:
	callq	luaK_storevar
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	assignment, .Lfunc_end18-assignment
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'%s' expected"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"chunk has too many syntax levels"
	.size	.L.str.1, 33

	.type	priority,@object        # @priority
	.section	.rodata,"a",@progbits
	.p2align	4
priority:
	.byte	6                       # 0x6
	.byte	6                       # 0x6
	.byte	6                       # 0x6
	.byte	6                       # 0x6
	.byte	7                       # 0x7
	.byte	7                       # 0x7
	.byte	7                       # 0x7
	.byte	7                       # 0x7
	.byte	7                       # 0x7
	.byte	7                       # 0x7
	.byte	10                      # 0xa
	.byte	9                       # 0x9
	.byte	5                       # 0x5
	.byte	4                       # 0x4
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	3                       # 0x3
	.byte	2                       # 0x2
	.byte	2                       # 0x2
	.byte	1                       # 0x1
	.byte	1                       # 0x1
	.size	priority, 30

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"cannot use '...' outside a vararg function"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"items in a constructor"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"main function has more than %d %s"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"function at line %d has more than %d %s"
	.size	.L.str.5, 40

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"self"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"local variables"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"too many local variables"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"arg"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"<name> or '...' expected"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"constant table overflow"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"unexpected symbol"
	.size	.L.str.12, 18

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"upvalues"
	.size	.L.str.13, 9

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"ambiguous syntax (function call x new statement)"
	.size	.L.str.15, 49

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"function arguments expected"
	.size	.L.str.16, 28

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"'%s' expected (to close '%s' at line %d)"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"'=' or 'in' expected"
	.size	.L.str.18, 21

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(for index)"
	.size	.L.str.19, 12

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"(for limit)"
	.size	.L.str.20, 12

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"(for step)"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"(for generator)"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"(for state)"
	.size	.L.str.23, 12

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"(for control)"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"no loop to break"
	.size	.L.str.25, 17

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"syntax error"
	.size	.L.str.26, 13

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"variables in assignment"
	.size	.L.str.27, 24

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaX_setinput
	.hidden	luaS_newlstr
	.hidden	luaX_next
	.hidden	luaF_newproto
	.hidden	luaH_new
	.hidden	luaD_growstack
	.hidden	luaX_syntaxerror
	.hidden	luaO_pushfstring
	.hidden	luaX_token2str
	.hidden	luaK_ret
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.hidden	luaX_newstring
	.hidden	luaX_lexerror
	.hidden	luaK_concat
	.hidden	luaK_jump
	.hidden	luaK_patchtohere
	.hidden	luaK_goiftrue
	.hidden	luaK_prefix
	.hidden	luaK_infix
	.hidden	luaK_posfix
	.hidden	luaK_codeABC
	.hidden	luaK_stringK
	.hidden	luaK_exp2nextreg
	.hidden	luaX_lookahead
	.hidden	luaO_int2fb
	.hidden	luaK_setlist
	.hidden	luaK_exp2RK
	.hidden	luaK_exp2val
	.hidden	luaK_setreturns
	.hidden	luaM_growaux_
	.hidden	luaC_barrierf
	.hidden	luaK_reserveregs
	.hidden	luaK_codeABx
	.hidden	luaK_exp2anyreg
	.hidden	luaK_indexed
	.hidden	luaK_self
	.hidden	luaK_dischargevars
	.hidden	luaK_fixline
	.hidden	luaK_getlabel
	.hidden	luaK_patchlist
	.hidden	luaK_numberK
	.hidden	luaK_checkstack
	.hidden	luaK_nil
	.hidden	luaK_storevar
	.hidden	luaK_setoneret
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
