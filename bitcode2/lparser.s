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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$201, %eax
	jb	.LBB0_2
# %bb.1:
	leaq	-120(%rbp), %rdi
	movl	$.L.str.1, %esi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-120(%rbp), %r14
	movl	$134283271, %r15d       # imm = 0x8010007
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB0_9
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-104(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-260(%rax), %ecx
	cmpl	$27, %ecx
	ja	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	btl	%ecx, %r15d
	jb	.LBB0_5
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%r14, %rdi
	callq	luaX_next
	jmp	.LBB0_8
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	-104(%rbp), %eax
	jmp	.LBB0_10
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movq	-64(%rbp), %rbx
	addw	$-1, 96(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB1_2
# %bb.1:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
.LBB1_2:
	leaq	16(%rax), %rcx
	movq	%rcx, 16(%r15)
	movq	%r14, 16(%rax)
	movl	$9, 24(%rax)
	movq	16(%r15), %rax
	movq	56(%r15), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB1_4
# %bb.3:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movzbl	74(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB2_6
# %bb.1:
	movl	48(%rbx), %eax
	movq	48(%r12), %rcx
	movq	%rsi, %rdx
	testb	$1, %sil
	je	.LBB2_3
# %bb.2:
	leal	-1(%rsi), %edx
	movb	%dl, 74(%rbx)
	movzbl	%dl, %edx
	movzwl	196(%rbx,%rdx,2), %edx
	shlq	$4, %rdx
	movl	%eax, 12(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %rdx
.LBB2_3:
	cmpb	$1, %sil
	je	.LBB2_6
# %bb.4:                                # %.preheader
	addb	$-1, %dl
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movb	%dl, 74(%rbx)
	movzbl	%dl, %edx
	movzwl	196(%rbx,%rdx,2), %esi
	shlq	$4, %rsi
	movl	%eax, 12(%rcx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%rdx), %esi
	movb	%sil, 74(%rbx)
	movzbl	%sil, %esi
	movzwl	196(%rbx,%rsi,2), %esi
	shlq	$4, %rsi
	movl	%eax, 12(%rcx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-2, %dl
	cmpb	$-1, %dl
	jne	.LBB2_5
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaK_ret
	movslq	48(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	movq	%r14, -48(%rbp)         # 8-byte Spill
	jl	.LBB2_8
# %bb.7:
	leaq	24(%r12), %r14
	movq	24(%r12), %rsi
	leaq	80(%r12), %r13
	movslq	80(%r12), %rdx
	shlq	$2, %rdx
	shlq	$2, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_9
.LBB2_8:
	movq	%r15, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%r12), %r14
	leaq	80(%r12), %r13
.LBB2_9:
	movq	%rax, (%r14)
	movslq	48(%rbx), %rcx
	movl	%ecx, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jl	.LBB2_11
# %bb.10:
	leaq	40(%r12), %r14
	movq	40(%r12), %rsi
	leaq	84(%r12), %r13
	movslq	84(%r12), %rdx
	shlq	$2, %rdx
	shlq	$2, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_12
.LBB2_11:
	movq	%r15, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	leaq	40(%r12), %r14
	leaq	84(%r12), %r13
.LBB2_12:
	movq	%rax, (%r14)
	movl	48(%rbx), %eax
	movl	%eax, (%r13)
	movslq	64(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jl	.LBB2_14
# %bb.13:
	leaq	16(%r12), %r14
	movq	16(%r12), %rsi
	leaq	76(%r12), %r13
	movslq	76(%r12), %rdx
	shlq	$4, %rdx
	shlq	$4, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_15
.LBB2_14:
	movq	%r15, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r12), %r14
	leaq	76(%r12), %r13
.LBB2_15:
	movq	%rax, (%r14)
	movl	64(%rbx), %eax
	movl	%eax, (%r13)
	movslq	68(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	jl	.LBB2_17
# %bb.16:
	leaq	32(%r12), %r14
	movq	32(%r12), %rsi
	leaq	88(%r12), %r13
	movslq	88(%r12), %rdx
	shlq	$3, %rdx
	shlq	$3, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_18
.LBB2_17:
	movq	%r15, %rdi
	callq	luaM_toobig
	movl	$42, __A_VARIABLE(%rip)
	leaq	32(%r12), %r14
	leaq	88(%r12), %r13
.LBB2_18:
	movq	%rax, (%r14)
	movl	68(%rbx), %eax
	movl	%eax, (%r13)
	movswq	72(%rbx), %rcx
	leaq	1(%rcx), %rax
	shrq	$60, %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_20
# %bb.19:
	movq	48(%r12), %rsi
	movslq	92(%r12), %rdx
	shlq	$4, %rdx
	shlq	$4, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	jmp	.LBB2_21
.LBB2_20:
	movq	%r15, %rdi
	callq	luaM_toobig
.LBB2_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%rax, 48(%r12)
	movswl	72(%rbx), %eax
	movl	%eax, 92(%r12)
	movzbl	112(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r12), %rsi
	movslq	72(%r12), %rdx
	shlq	$3, %rdx
	shlq	$3, %rcx
	movq	%r15, %rdi
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 56(%r12)
	movzbl	112(%r12), %eax
	movl	%eax, 72(%r12)
	movq	16(%rbx), %rax
	movq	%rax, 48(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB2_23
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$286, %eax              # imm = 0x11E
	jne	.LBB2_24
.LBB2_23:
	movq	24(%r14), %rsi
	movq	16(%rsi), %rdx
	addq	$24, %rsi
	movq	%r14, %rdi
	callq	luaX_newstring
	movl	$42, __A_VARIABLE(%rip)
.LBB2_24:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	4(%rdi), %r15d
	movl	$-258, %eax             # imm = 0xFEFE
	addl	16(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$19, %eax
	ja	.LBB3_19
# %bb.1:
	jmpq	*.LJTI3_0(,%rax,8)
.LBB3_2:
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r13, %rdi
	callq	breakstat
	movl	$1, %r15d
	jmp	.LBB3_114
.LBB3_3:
	movq	48(%r13), %r14
	movl	$-1, -104(%rbp)
	movb	$1, -98(%rbp)
	movb	74(%r14), %al
	movb	%al, -100(%rbp)
	movb	$0, -99(%rbp)
	movq	40(%r14), %rax
	movq	%rax, -112(%rbp)
	leaq	-112(%rbp), %rax
	movq	%rax, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_5
# %bb.4:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, %eax
	je	.LBB3_62
# %bb.6:
	cmpl	$267, %eax              # imm = 0x10B
	je	.LBB3_62
# %bb.7:
	cmpl	$61, %eax
	jne	.LBB3_82
# %bb.8:
	movq	48(%r13), %r12
	movl	60(%r12), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
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
	movq	%rbx, %rsi
	movl	$3, %edx
	callq	new_localvar
	cmpl	$61, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_10
# %bb.9:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rbx
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_12
# %bb.11:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rbx
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_108
# %bb.13:
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_109
.LBB3_14:
	movq	%r13, %rdi
	callq	luaX_next
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$265, %eax              # imm = 0x109
	jne	.LBB3_67
# %bb.15:
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rbx
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_17
# %bb.16:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	new_localvar
	movl	60(%rbx), %eax
	movq	$-1, -56(%rbp)
	movl	$6, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaK_reserveregs
	movq	48(%r13), %rax
	movb	74(%rax), %cl
	addb	$1, %cl
	movb	%cl, 74(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rax), %edx
	movq	(%rax), %rsi
	movq	48(%rsi), %rsi
	movzbl	%cl, %ecx
	movzwl	194(%rax,%rcx,2), %eax
	shlq	$4, %rax
	movl	%edx, 8(%rsi,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %ecx
	leaq	-112(%rbp), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	body
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	luaK_storevar
	movl	48(%rbx), %eax
	movq	(%rbx), %rcx
	movq	48(%rcx), %rcx
	movzbl	74(%rbx), %edx
	movzwl	194(%rbx,%rdx,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	jmp	.LBB3_97
.LBB3_18:
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r13, %rdi
	callq	block
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$259, %edx              # imm = 0x103
	movl	%r15d, %ecx
	callq	check_match
	jmp	.LBB3_113
.LBB3_19:
	movq	48(%r13), %rbx
	leaq	-64(%rbp), %rsi
	movq	%r13, %rdi
	callq	primaryexp
	cmpl	$13, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_77
# %bb.20:
	movq	(%rbx), %rax
	movq	24(%rax), %rax
	movslq	-56(%rbp), %rcx
	movl	$-8372225, %edx         # imm = 0xFF803FFF
	andl	(%rax,%rcx,4), %edx
	orl	$16384, %edx            # imm = 0x4000
	movl	%edx, (%rax,%rcx,4)
	jmp	.LBB3_97
.LBB3_21:
	movl	%r15d, -80(%rbp)        # 4-byte Spill
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %r15
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rbx
	leaq	-112(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$1, %ecx
	callq	singlevaraux
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB3_25
# %bb.24:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	luaK_stringK
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB3_52
# %bb.26:
	leaq	-112(%rbp), %r12
	leaq	-72(%rbp), %r14
	jmp	.LBB3_28
	.p2align	4, 0x90
.LBB3_27:                               #   in Loop: Header=BB3_28 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_stringK
	movq	$-1, -56(%rbp)
	movl	$4, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	luaK_indexed
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB3_52
.LBB3_28:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r13), %r15
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	luaK_exp2anyreg
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_27
# %bb.29:                               #   in Loop: Header=BB3_28 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_27
.LBB3_30:
	movl	%r15d, %r14d
	movq	48(%r13), %r15
	movl	$-1, -72(%rbp)
	movq	%r13, %rdi
	callq	test_then_block
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$261, %eax              # imm = 0x105
	jne	.LBB3_33
# %bb.31:                               # %.preheader
	leaq	-72(%rbp), %r12
	.p2align	4, 0x90
.LBB3_32:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	luaK_jump
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	luaK_concat
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	callq	test_then_block
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$261, %eax              # imm = 0x105
	je	.LBB3_32
.LBB3_33:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$260, %eax              # imm = 0x104
	jne	.LBB3_78
# %bb.34:
	movq	%r15, %rdi
	callq	luaK_jump
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	movl	%eax, %edx
	callq	luaK_concat
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r13, %rdi
	callq	block
	jmp	.LBB3_79
.LBB3_35:
	movl	%r15d, -80(%rbp)        # 4-byte Spill
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$201, %eax
	jb	.LBB3_37
# %bb.36:
	movl	$.L.str.1, %esi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r14d            # imm = 0xFEFC
	movl	$134283271, %r12d       # imm = 0x8010007
	jmp	.LBB3_39
	.p2align	4, 0x90
.LBB3_38:                               #   in Loop: Header=BB3_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB3_58
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	movl	16(%r13), %eax
	addl	%r14d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %eax
	ja	.LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=1
	btl	%eax, %r12d
	jb	.LBB3_57
.LBB3_41:                               #   in Loop: Header=BB3_39 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_38
# %bb.42:                               #   in Loop: Header=BB3_39 Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	jmp	.LBB3_38
.LBB3_43:
	movq	48(%r13), %r14
	movq	%r13, %rdi
	callq	luaX_next
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-260(%rax), %ecx
	cmpl	$27, %ecx
	ja	.LBB3_98
# %bb.44:
	movl	$134283271, %edx        # imm = 0x8010007
	btl	%ecx, %edx
	jae	.LBB3_98
# %bb.45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	xorl	%r15d, %r15d
.LBB3_46:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	luaK_ret
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jmp	.LBB3_114
.LBB3_47:
	movl	%r15d, -80(%rbp)        # 4-byte Spill
	movq	48(%r13), %r15
	movq	%r13, %rdi
	callq	luaX_next
	movq	%r15, %rdi
	callq	luaK_getlabel
	movl	%eax, %ebx
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_49
# %bb.48:
	movl	$3, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_49:
	movq	48(%r13), %rdi
	leaq	-72(%rbp), %r14
	movq	%r14, %rsi
	callq	luaK_goiftrue
	movl	-52(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, -64(%rbp)
	movb	$1, -58(%rbp)
	movb	74(%r15), %al
	movb	%al, -60(%rbp)
	movb	$0, -59(%rbp)
	movq	40(%r15), %rax
	movq	%rax, -72(%rbp)
	movq	%r14, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$259, 16(%r13)          # imm = 0x103
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_51
# %bb.50:
	movl	%ebx, %r14d
	movq	56(%r13), %rbx
	movq	%r13, %rdi
	movl	$259, %esi              # imm = 0x103
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movl	%r14d, %ebx
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_51:
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
	movl	%ebx, %edx
	callq	luaK_patchlist
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$277, %edx              # imm = 0x115
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	movq	%r15, %rdi
	callq	leaveblock
	movq	%r15, %rdi
	movl	%r12d, %esi
	callq	luaK_patchtohere
	jmp	.LBB3_112
.LBB3_52:
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edx
	cmpl	$58, %eax
	jne	.LBB3_56
# %bb.53:
	movq	48(%r13), %r12
	leaq	-112(%rbp), %rsi
	movq	%r12, %rdi
	callq	luaK_exp2anyreg
	movq	%r13, %rdi
	callq	luaX_next
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_55
# %bb.54:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_55:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_stringK
	movq	$-1, -56(%rbp)
	movl	$4, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rsi
	leaq	-72(%rbp), %rdx
	movq	%r12, %rdi
	callq	luaK_indexed
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
.LBB3_56:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	movl	-80(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, %ecx
	callq	body
	movq	48(%r13), %rdi
	leaq	-112(%rbp), %rsi
	movq	%r14, %rdx
	callq	luaK_storevar
	movq	48(%r13), %rdi
	movl	%ebx, %esi
	callq	luaK_fixline
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_114
.LBB3_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_58:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$276, %esi              # imm = 0x114
	movl	$272, %edx              # imm = 0x110
	movl	-80(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_60
# %bb.59:
	movl	$3, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_60:
	movq	48(%r13), %rdi
	leaq	-72(%rbp), %rsi
	callq	luaK_goiftrue
	movl	-52(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -123(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_80
# %bb.61:
	movq	%r13, %rdi
	callq	breakstat
	movq	48(%r13), %rdi
	movl	%ebx, %esi
	callq	luaK_patchtohere
	movq	%r15, %rdi
	callq	leaveblock
	movq	48(%r13), %rbx
	movq	%r15, %rdi
	callq	luaK_jump
	movq	%rbx, %rdi
	movl	%eax, %esi
	jmp	.LBB3_81
.LBB3_62:
	movq	%r14, -80(%rbp)         # 8-byte Spill
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
	movq	%rbx, %rsi
	movl	$3, %edx
	callq	new_localvar
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, %eax
	jne	.LBB3_84
# %bb.63:
	movl	$4, %ebx
	jmp	.LBB3_65
	.p2align	4, 0x90
.LBB3_64:                               #   in Loop: Header=BB3_65 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ebx
	cmpl	$44, %eax
	jne	.LBB3_83
.LBB3_65:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, 16(%r13)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_64
# %bb.66:                               #   in Loop: Header=BB3_65 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_64
.LBB3_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_68:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB3_70
# %bb.69:                               #   in Loop: Header=BB3_68 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_70:                               #   in Loop: Header=BB3_68 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rbx
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	callq	new_localvar
	movl	16(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, %eax
	jne	.LBB3_72
# %bb.71:                               #   in Loop: Header=BB3_68 Depth=1
	addl	$1, %r15d
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r13), %eax
	addq	$1, %r14
	jmp	.LBB3_68
.LBB3_72:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %eax
	jne	.LBB3_90
# %bb.73:
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jne	.LBB3_76
# %bb.74:
	movl	$1, %ebx
	leaq	-72(%rbp), %r12
	.p2align	4, 0x90
.LBB3_75:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%r12, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_75
.LBB3_76:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_91
.LBB3_77:
	movq	$0, -72(%rbp)
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	assignment
	jmp	.LBB3_97
.LBB3_78:
	leaq	-72(%rbp), %rsi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	luaK_concat
.LBB3_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$266, %edx              # imm = 0x10A
	movl	%r14d, %ecx
	callq	check_match
	jmp	.LBB3_112
.LBB3_80:
	movq	%r15, %rdi
	callq	leaveblock
	movq	48(%r13), %rdi
	movl	%ebx, %esi
.LBB3_81:
	movl	-84(%rbp), %edx         # 4-byte Reload
	callq	luaK_patchlist
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	jmp	.LBB3_111
.LBB3_82:
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB3_110
.LBB3_83:
	addl	$-3, %r12d
.LBB3_84:
	movl	%r15d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$267, %eax              # imm = 0x10B
	je	.LBB3_86
# %bb.85:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB3_86:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r13), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	jne	.LBB3_89
# %bb.87:                               # %.preheader1
	movl	$1, %r15d
	leaq	-72(%rbp), %rbx
	.p2align	4, 0x90
.LBB3_88:                               # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r13), %rdi
	movq	%rbx, %rsi
	callq	luaK_exp2nextreg
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_88
.LBB3_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rcx
	movq	%r13, %rdi
	movl	$3, %esi
	movl	%r15d, %edx
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
	movl	%r14d, %r15d
	movq	-80(%rbp), %r14         # 8-byte Reload
	jmp	.LBB3_110
.LBB3_90:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -72(%rbp)
	xorl	%ebx, %ebx
.LBB3_91:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rcx
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%ebx, %edx
	callq	adjust_assign
	movq	48(%r13), %rdi
	movzbl	74(%rdi), %esi
	movl	%esi, %eax
	addl	%r14d, %eax
	movb	%al, 74(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rdi), %eax
	movq	(%rdi), %rcx
	movq	48(%rcx), %rcx
	movq	%r14, %rdx
	testb	$1, %r14b
	je	.LBB3_93
# %bb.92:
	leal	(%rsi,%r14), %edx
	movzbl	%dl, %edx
	subq	%r14, %rdx
	movzwl	196(%rdi,%rdx,2), %edx
	shlq	$4, %rdx
	movl	%eax, 8(%rcx,%rdx)
	leaq	-1(%r14), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_93:
	testl	%r15d, %r15d
	je	.LBB3_96
# %bb.94:                               # %.preheader5
	movl	$1, %ebx
	subq	%rdx, %rbx
	leaq	(%rdi,%rbx,2), %rdi
	addl	%esi, %r14d
	movzbl	%r14b, %esi
	leaq	(%rdi,%rsi,2), %rsi
	addq	$196, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB3_95:                               # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rsi,%rdi,2), %ebx
	shlq	$4, %rbx
	movl	%eax, 8(%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rsi,%rdi,2), %ebx
	shlq	$4, %rbx
	movl	%eax, 8(%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdi
	cmpl	%edi, %edx
	jne	.LBB3_95
.LBB3_96:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_97:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_112
.LBB3_98:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r15d
	cmpl	$59, %eax
	je	.LBB3_46
# %bb.99:
	leaq	-72(%rbp), %rsi
	movq	%r13, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jne	.LBB3_102
# %bb.100:                              # %.preheader8
	movl	$1, %ebx
	leaq	-72(%rbp), %r15
.LBB3_101:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_101
.LBB3_102:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	je	.LBB3_104
# %bb.103:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB3_115
.LBB3_104:
	leaq	-72(%rbp), %rsi
	movl	$-1, %r15d
	movq	%r14, %rdi
	movl	$-1, %edx
	callq	luaK_setreturns
	movl	-72(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB3_107
# %bb.105:
	cmpl	$13, %eax
	jne	.LBB3_107
# %bb.106:
	movq	(%r14), %rax
	movq	24(%rax), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	andl	$-64, %edx
	orl	$29, %edx
	movl	%edx, (%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_107:
	movzbl	74(%r14), %esi
	jmp	.LBB3_46
.LBB3_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
.LBB3_109:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	-80(%rbp), %esi         # 4-byte Reload
	movl	%r15d, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	callq	forbody
	movl	$42, __A_VARIABLE(%rip)
.LBB3_110:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	$262, %esi              # imm = 0x106
	movl	$264, %edx              # imm = 0x108
	movl	%r15d, %ecx
	callq	check_match
	movq	%r14, %rdi
.LBB3_111:
	callq	leaveblock
.LBB3_112:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_113:
	xorl	%r15d, %r15d
.LBB3_114:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_115:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rsi
	movq	%r14, %rdi
	cmpl	$1, %ebx
	jne	.LBB3_117
# %bb.116:
	callq	luaK_exp2anyreg
	movl	%eax, %esi
	movl	$1, %r15d
	jmp	.LBB3_46
.LBB3_117:
	callq	luaK_exp2nextreg
	movzbl	74(%r14), %esi
	movl	%ebx, %r15d
	jmp	.LBB3_46
.Lfunc_end3:
	.size	statement, .Lfunc_end3-statement
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_2
	.quad	.LBB3_18
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_3
	.quad	.LBB3_21
	.quad	.LBB3_30
	.quad	.LBB3_19
	.quad	.LBB3_14
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_35
	.quad	.LBB3_43
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_19
	.quad	.LBB3_47
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$201, %eax
	jb	.LBB4_2
# %bb.1:
	movl	$.L.str.1, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r12d            # imm = 0xFEFC
	movl	$134283271, %r13d       # imm = 0x8010007
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r15), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB4_9
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movl	16(%r15), %eax
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %eax
	ja	.LBB4_6
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	btl	%eax, %r13d
	jb	.LBB4_5
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%r15, %rdi
	callq	luaX_next
	jmp	.LBB4_8
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r15), %rax
	addw	$-1, 96(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	leaveblock
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_5
.LBB5_2:
	movl	%ecx, %r14d
	movl	%edx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	luaX_token2str
	movq	%rax, %r13
	cmpl	%r14d, %r15d
	jne	.LBB5_4
# %bb.3:
	movl	$.L.str, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_5
.LBB5_4:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	luaX_token2str
	movl	$.L.str.17, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rdx
	movq	%rax, %rcx
	movl	%r14d, %r8d
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
.LBB5_5:
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
.Lfunc_end5:
	.size	check_match, .Lfunc_end5-check_match
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function breakstat
	.type	breakstat,@function
breakstat:                              # @breakstat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	48(%rdi), %r14
	movq	40(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	testq	%rbx, %rbx
	je	.LBB6_4
	.p2align	4, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	cmpb	$0, 14(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_5
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movzbl	13(%rbx), %eax
	orl	%eax, %r15d
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB6_2
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.25, %esi
	callq	luaX_syntaxerror
	xorl	%ebx, %ebx
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB6_7
# %bb.6:
	movzbl	12(%rbx), %edx
	movq	%r14, %rdi
	movl	$35, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movl	$42, __A_VARIABLE(%rip)
.LBB6_7:
	addq	$8, %rbx
	movq	%r14, %rdi
	callq	luaK_jump
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	luaK_concat
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	breakstat, .Lfunc_end6-breakstat
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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_2
# %bb.1:
	movl	$3, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_2:
	movq	48(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	callq	luaK_goiftrue
	movl	-28(%rbp), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$274, 16(%rbx)          # imm = 0x112
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_4
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
	movl	$42, __A_VARIABLE(%rip)
.LBB7_4:
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
.Lfunc_end7:
	.size	test_then_block, .Lfunc_end7-test_then_block
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$201, %eax
	jb	.LBB8_2
# %bb.1:
	movl	$.L.str.1, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$35, %eax
	je	.LBB8_6
# %bb.3:
	cmpl	$270, %eax              # imm = 0x10E
	je	.LBB8_7
# %bb.4:
	cmpl	$45, %eax
	jne	.LBB8_9
# %bb.5:
	xorl	%ebx, %ebx
	jmp	.LBB8_8
.LBB8_6:
	movl	$2, %ebx
	jmp	.LBB8_8
.LBB8_7:
	movl	$1, %ebx
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	jmp	.LBB8_27
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-263(%rax), %ecx
	cmpl	$23, %ecx
	ja	.LBB8_12
# %bb.10:
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_11:
	movq	$-1, 16(%r15)
	movl	$3, (%r15)
	jmp	.LBB8_18
.LBB8_12:
	cmpl	$123, %eax
	jne	.LBB8_14
# %bb.13:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	constructor
	jmp	.LBB8_26
.LBB8_14:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	primaryexp
	jmp	.LBB8_26
.LBB8_15:
	movq	%r12, %rdi
	callq	luaX_next
	movl	4(%r12), %ecx
	movq	%r12, %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	body
	jmp	.LBB8_26
.LBB8_16:
	movq	$-1, 16(%r15)
	movl	$1, (%r15)
	jmp	.LBB8_18
.LBB8_17:
	movq	$-1, 16(%r15)
	movl	$2, (%r15)
.LBB8_18:
	movl	$0, 8(%r15)
	jmp	.LBB8_24
.LBB8_19:
	movq	48(%r12), %rbx
	movq	(%rbx), %rax
	movb	114(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB8_21
# %bb.20:
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movb	114(%rax), %cl
.LBB8_21:
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
	jmp	.LBB8_24
.LBB8_22:
	movq	$-1, 16(%r15)
	movl	$5, (%r15)
	movl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r12), %rax
	movq	%rax, 8(%r15)
	jmp	.LBB8_25
.LBB8_23:
	movq	24(%r12), %rsi
	movq	48(%r12), %rdi
	callq	luaK_stringK
	movq	$-1, 16(%r15)
	movl	$4, (%r15)
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_24:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	luaX_next
.LBB8_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	leal	-37(%rax), %ecx
	cmpl	$57, %ecx
	ja	.LBB8_30
# %bb.28:
	xorl	%r14d, %r14d
	jmpq	*.LJTI8_1(,%rcx,8)
.LBB8_29:
	movl	$4, %r14d
	jmp	.LBB8_46
.LBB8_30:
	addl	$-257, %eax             # imm = 0xFEFF
	cmpl	$26, %eax
	ja	.LBB8_39
# %bb.31:
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_32:
	movl	$13, %r14d
	jmp	.LBB8_46
.LBB8_33:
	movl	$2, %r14d
	jmp	.LBB8_46
.LBB8_34:
	movl	$1, %r14d
	jmp	.LBB8_46
.LBB8_35:
	movl	$3, %r14d
	jmp	.LBB8_46
.LBB8_36:
	movl	$9, %r14d
	jmp	.LBB8_46
.LBB8_37:
	movl	$11, %r14d
	jmp	.LBB8_46
.LBB8_38:
	movl	$5, %r14d
	jmp	.LBB8_46
.LBB8_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_49
.LBB8_40:
	movl	$14, %r14d
	jmp	.LBB8_46
.LBB8_41:
	movl	$6, %r14d
	jmp	.LBB8_46
.LBB8_42:
	movl	$8, %r14d
	jmp	.LBB8_46
.LBB8_43:
	movl	$12, %r14d
	jmp	.LBB8_46
.LBB8_44:
	movl	$10, %r14d
	jmp	.LBB8_46
.LBB8_45:
	movl	$7, %r14d
.LBB8_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %r13
	.p2align	4, 0x90
.LBB8_47:                               # =>This Inner Loop Header: Depth=1
	movl	%r14d, %ebx
	movzbl	priority(%rbx,%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-44(%rbp), %eax         # 4-byte Folded Reload
	jbe	.LBB8_50
# %bb.48:                               #   in Loop: Header=BB8_47 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r14d
	cmpl	$15, %ebx
	jne	.LBB8_47
.LBB8_49:
	movl	$15, %r14d
.LBB8_50:
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
.Lfunc_end8:
	.size	subexpr, .Lfunc_end8-subexpr
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_11
	.quad	.LBB8_14
	.quad	.LBB8_15
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_16
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_17
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_19
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_14
	.quad	.LBB8_22
	.quad	.LBB8_14
	.quad	.LBB8_23
.LJTI8_1:
	.quad	.LBB8_29
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_33
	.quad	.LBB8_46
	.quad	.LBB8_39
	.quad	.LBB8_34
	.quad	.LBB8_39
	.quad	.LBB8_35
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_36
	.quad	.LBB8_39
	.quad	.LBB8_37
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_38
.LJTI8_2:
	.quad	.LBB8_32
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_40
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_39
	.quad	.LBB8_41
	.quad	.LBB8_39
	.quad	.LBB8_42
	.quad	.LBB8_43
	.quad	.LBB8_44
	.quad	.LBB8_45
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_2
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
	movl	$42, __A_VARIABLE(%rip)
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$125, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_23
# %bb.3:
	leaq	-88(%rbp), %r13
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movl	$0, -88(%rbp)
	cmpl	$50, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	%r12, %rdi
	movl	$50, %ecx
	callq	luaK_setlist
	movl	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_7:                                #   in Loop: Header=BB9_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %eax
	je	.LBB9_14
# %bb.8:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	cmpl	$285, %eax              # imm = 0x11D
	jne	.LBB9_11
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	callq	luaX_lookahead
	cmpl	$61, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_10
.LBB9_14:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	recfield
	jmp	.LBB9_18
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
.LBB9_11:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483646, %eax       # imm = 0x7FFFFFFE
	jl	.LBB9_17
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	movq	48(%rbx), %r15
	movq	(%r15), %rax
	movq	32(%r15), %rdi
	movl	96(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB9_13
# %bb.15:                               #   in Loop: Header=BB9_4 Depth=1
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %r8d
	movl	$2147483645, %ecx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB9_16
.LBB9_13:                               #   in Loop: Header=BB9_4 Depth=1
	movl	$.L.str.4, %esi
	movl	$.L.str.3, %ecx
	movl	$2147483645, %edx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB9_16:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %eax
.LBB9_17:                               #   in Loop: Header=BB9_4 Depth=1
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	addl	$1, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_18:                               #   in Loop: Header=BB9_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, %eax
	je	.LBB9_19
# %bb.21:                               #   in Loop: Header=BB9_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$59, %eax
	jne	.LBB9_22
.LBB9_19:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$125, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_23
# %bb.20:                               #   in Loop: Header=BB9_4 Depth=1
	movl	-88(%rbp), %eax
	jmp	.LBB9_4
.LBB9_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:
	movq	%rbx, %rdi
	movl	$125, %esi
	movl	$123, %edx
	movl	-92(%rbp), %ecx         # 4-byte Reload
	callq	check_match
	movl	-48(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB9_31
# %bb.24:
	movl	-88(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	je	.LBB9_26
# %bb.25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB9_27
.LBB9_26:
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
	jmp	.LBB9_30
.LBB9_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_29
# %bb.28:
	leaq	-88(%rbp), %rsi
	movq	%r12, %rdi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ecx
.LBB9_29:
	movq	-64(%rbp), %rax
	movl	8(%rax), %esi
	movl	-52(%rbp), %edx
	movq	%r12, %rdi
	callq	luaK_setlist
.LBB9_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_31:
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
.Lfunc_end9:
	.size	constructor, .Lfunc_end9-constructor
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
	movq	%rsi, %r15
	movq	%rdi, %r14
	leaq	-672(%rbp), %rsi
	callq	open_func
	movq	-672(%rbp), %rax
	movl	%ebx, 96(%rax)
	cmpl	$40, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_2
# %bb.1:
	movq	56(%r14), %r13
	movq	%r14, %rdi
	movl	$40, %esi
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	je	.LBB10_4
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%rsi), %ecx
	movq	(%rsi), %r12
	movq	48(%r12), %rdx
	movzbl	%al, %eax
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movzwl	194(%rsi,%rax,2), %eax
	shlq	$4, %rax
	movl	%ecx, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_5
.LBB10_4:
	leaq	48(%r14), %r15
	movq	48(%r14), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	(%rax), %r12
.LBB10_5:
	movb	$0, 114(%r12)
	movl	16(%r14), %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	cmpl	$41, %ecx
	je	.LBB10_17
# %bb.6:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB10_7:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, %ecx              # imm = 0x11D
	je	.LBB10_10
# %bb.8:                                #   in Loop: Header=BB10_7 Depth=1
	cmpl	$279, %ecx              # imm = 0x117
	je	.LBB10_14
# %bb.9:                                #   in Loop: Header=BB10_7 Depth=1
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB10_11
	.p2align	4, 0x90
.LBB10_10:                              #   in Loop: Header=BB10_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r14), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r13
	movq	%r12, %r15
	leal	1(%rbx), %r12d
	movq	%r14, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	callq	new_localvar
	movl	%r12d, %ebx
	movq	%r15, %r12
	movq	%r13, %r15
.LBB10_11:                              #   in Loop: Header=BB10_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	114(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB10_15
# %bb.12:                               #   in Loop: Header=BB10_7 Depth=1
	cmpl	$44, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_16
# %bb.13:                               #   in Loop: Header=BB10_7 Depth=1
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%r14), %ecx
	jmp	.LBB10_7
.LBB10_14:
	movq	%r14, %rdi
	callq	luaX_next
	movl	$.L.str.9, %esi
	movl	$3, %edx
	movq	%r14, %rdi
	callq	luaX_newstring
	movq	%rbx, %rdx
	addl	$1, %ebx
	movq	%r14, %rdi
	movq	%rax, %rsi
                                        # kill: def $edx killed $edx killed $rdx
	callq	new_localvar
	movb	$7, 114(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
                                        # kill: def $ebx killed $ebx def $rbx
	jmp	.LBB10_17
.LBB10_15:
	andb	$1, %al
	jmp	.LBB10_17
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB10_17:
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	movb	74(%rdi), %bl
	addb	%sil, %bl
	movb	%bl, 74(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB10_23
# %bb.18:
	movl	48(%rdi), %ecx
	movq	(%rdi), %rdx
	movq	48(%rdx), %rdx
	movslq	%esi, %r9
	movzbl	%bl, %r8d
	testb	$1, %sil
	je	.LBB10_20
# %bb.19:
	movq	%r8, %rbx
	subq	%r9, %rbx
	movzwl	196(%rdi,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%ecx, 8(%rdx,%rbx)
	addq	$-1, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_20:
	cmpl	$1, %esi
	je	.LBB10_23
# %bb.21:                               # %.preheader6
	addq	%r8, %r8
	leaq	(%r9,%r9), %rbx
	subq	%rbx, %r8
	addq	%r8, %rdi
	addq	$198, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB10_22:                              # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rdi,%rbx,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rbx
	cmpl	%ebx, %r9d
	jne	.LBB10_22
.LBB10_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movzbl	74(%rdi), %esi
	movl	%esi, %ecx
	subb	%al, %cl
	movb	%cl, 113(%r12)
	callq	luaK_reserveregs
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$41, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_25
# %bb.24:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB10_25:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r14), %rax
	movl	96(%rax), %ecx
	addl	$1, %ecx
	movw	%cx, 96(%rax)
	movzwl	%cx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$201, %eax
	jb	.LBB10_27
# %bb.26:
	movl	$.L.str.1, %esi
	movq	%r14, %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB10_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-260, %r12d            # imm = 0xFEFC
	movl	$134283271, %r13d       # imm = 0x8010007
	jmp	.LBB10_29
	.p2align	4, 0x90
.LBB10_28:                              #   in Loop: Header=BB10_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movzbl	74(%rax), %ecx
	movl	%ecx, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB10_34
.LBB10_29:                              # =>This Inner Loop Header: Depth=1
	movl	16(%r14), %eax
	addl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$27, %eax
	ja	.LBB10_31
# %bb.30:                               #   in Loop: Header=BB10_29 Depth=1
	btl	%eax, %r13d
	jb	.LBB10_33
.LBB10_31:                              #   in Loop: Header=BB10_29 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	statement
	movl	%eax, %ebx
	cmpl	$59, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_28
# %bb.32:                               #   in Loop: Header=BB10_29 Depth=1
	movq	%r14, %rdi
	callq	luaX_next
	jmp	.LBB10_28
.LBB10_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_34:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB10_36
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	32(%r12), %rbx
	jmp	.LBB10_39
.LBB10_36:
	leaq	88(%r12), %rdx
	movq	56(%r14), %rdi
	leaq	32(%r12), %rbx
	movq	32(%r12), %rsi
	movl	$8, %ecx
	movl	$.L.str.11, %r9d
	movl	$262143, %r8d           # imm = 0x3FFFF
	callq	luaM_growaux_
	movq	%rax, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movslq	88(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r13d
	jge	.LBB10_39
# %bb.37:
	leaq	1(%r13), %rdx
	movq	$0, (%rax,%r13,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdx
	jne	.LBB10_47
.LBB10_39:
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB10_40:
	movq	-672(%rbp), %rax
	movq	(%rbx), %rdx
	movslq	68(%r15), %rsi
	leal	1(%rsi), %ecx
	movl	%ecx, 68(%r15)
	movq	%rax, (%rdx,%rsi,8)
	movq	-672(%rbp), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_43
# %bb.41:
	testb	$4, 9(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_43
# %bb.42:
	movq	56(%r14), %rdi
	movq	%r12, %rsi
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
	movl	68(%r15), %ecx
.LBB10_43:
	addl	$-1, %ecx
	movq	%r15, %rdi
	movl	$36, %esi
	xorl	%edx, %edx
	callq	luaK_codeABx
	movq	$-1, 16(%r13)
	movl	$11, (%r13)
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-672(%rbp), %rax
	cmpb	$0, 112(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_46
# %bb.44:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB10_45:                              # =>This Inner Loop Header: Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
	movq	-672(%rbp), %rax
	movzbl	112(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jb	.LBB10_45
.LBB10_46:
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
.LBB10_47:
	movl	%r13d, %eax
	notl	%eax
	leal	(%rcx,%rax), %esi
	movq	%rcx, %rax
	subq	%r13, %rax
	addq	$-2, %rax
	andq	$3, %rsi
	je	.LBB10_51
# %bb.48:                               # %.preheader3
	movq	-48(%rbp), %r13         # 8-byte Reload
	.p2align	4, 0x90
.LBB10_49:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	$0, (%rdi,%rdx,8)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rsi
	jne	.LBB10_49
# %bb.50:
	cmpq	$3, %rax
	jae	.LBB10_52
	jmp	.LBB10_40
.LBB10_51:
	movq	-48(%rbp), %r13         # 8-byte Reload
	cmpq	$3, %rax
	jb	.LBB10_40
	.p2align	4, 0x90
.LBB10_52:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movq	$0, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	$0, 8(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	$0, 16(%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movq	$0, 24(%rax,%rdx,8)
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB10_52
	jmp	.LBB10_40
.Lfunc_end10:
	.size	body, .Lfunc_end10-body
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, %eax              # imm = 0x11D
	je	.LBB11_3
# %bb.1:
	cmpl	$40, %eax
	jne	.LBB11_6
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
	jmp	.LBB11_7
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB11_5
# %bb.4:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	luaK_stringK
	movl	%eax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_7
.LBB11_6:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %r13
	movq	%r15, -72(%rbp)         # 8-byte Spill
	jmp	.LBB11_8
	.p2align	4, 0x90
.LBB11_18:                              #   in Loop: Header=BB11_8 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2nextreg
.LBB11_19:                              #   in Loop: Header=BB11_8 Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	funcargs
.LBB11_25:                              #   in Loop: Header=BB11_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$90, %eax
	jg	.LBB11_15
# %bb.9:                                #   in Loop: Header=BB11_8 Depth=1
	cmpl	$40, %eax
	je	.LBB11_18
# %bb.10:                               #   in Loop: Header=BB11_8 Depth=1
	cmpl	$46, %eax
	je	.LBB11_20
# %bb.11:                               #   in Loop: Header=BB11_8 Depth=1
	cmpl	$58, %eax
	jne	.LBB11_23
# %bb.12:                               #   in Loop: Header=BB11_8 Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_8 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB11_14:                              #   in Loop: Header=BB11_8 Depth=1
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
	jmp	.LBB11_19
	.p2align	4, 0x90
.LBB11_15:                              #   in Loop: Header=BB11_8 Depth=1
	cmpl	$91, %eax
	je	.LBB11_24
# %bb.16:                               #   in Loop: Header=BB11_8 Depth=1
	cmpl	$123, %eax
	je	.LBB11_18
# %bb.17:                               #   in Loop: Header=BB11_8 Depth=1
	cmpl	$286, %eax              # imm = 0x11E
	je	.LBB11_18
	jmp	.LBB11_23
.LBB11_20:                              #   in Loop: Header=BB11_8 Depth=1
	movq	%r13, %r15
	movq	48(%rbx), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	luaK_exp2anyreg
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_22
# %bb.21:                               #   in Loop: Header=BB11_8 Depth=1
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
	movl	$42, __A_VARIABLE(%rip)
.LBB11_22:                              #   in Loop: Header=BB11_8 Depth=1
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
	jmp	.LBB11_25
.LBB11_24:                              #   in Loop: Header=BB11_8 Depth=1
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
	jmp	.LBB11_25
.LBB11_23:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	primaryexp, .Lfunc_end11-primaryexp
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
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jne	.LBB12_9
# %bb.1:
	cmpl	$2147483646, 32(%r14)   # imm = 0x7FFFFFFE
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB12_7
# %bb.2:
	movq	(%r15), %rax
	movq	32(%r15), %rdi
	movl	96(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB12_3
# %bb.4:
	movl	$.L.str.5, %esi
	movl	$.L.str.3, %r8d
	movl	$2147483645, %ecx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB12_5
.LBB12_9:
	leaq	-72(%rbp), %rsi
	movq	%rbx, %rdi
	callq	yindex
	movl	$42, __A_VARIABLE(%rip)
	leaq	32(%r14), %r13
	jmp	.LBB12_10
.LBB12_3:
	movl	$.L.str.4, %esi
	movl	$.L.str.3, %ecx
	movl	$2147483645, %edx       # imm = 0x7FFFFFFD
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB12_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r15), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$285, 16(%rbx)          # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_8
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
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_8:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB12_10:
	addl	$1, (%r13)
	cmpl	$61, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_12
# %bb.11:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB12_12:
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
.Lfunc_end12:
	.size	recfield, .Lfunc_end12-recfield
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_2
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
	movl	$42, __A_VARIABLE(%rip)
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	yindex, .Lfunc_end13-yindex
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
	movl	%edx, %ebx
	movq	%rsi, %r9
	movq	%rdi, %r10
	movq	48(%rdi), %r13
	movzbl	74(%r13), %eax
	addl	%edx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r11
	cmpl	$200, %eax
	jl	.LBB14_5
# %bb.1:
	movq	(%r13), %rax
	movq	32(%r13), %rdi
	movl	96(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %r12
	movq	%r9, %r15
	testl	%edx, %edx
	je	.LBB14_2
# %bb.3:
	movl	$.L.str.5, %esi
	movl	$.L.str.7, %r8d
	movl	$200, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB14_4
.LBB14_2:
	movl	$.L.str.4, %esi
	movl	$.L.str.7, %ecx
	movl	$200, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB14_4:
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r13), %rdi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r10
	movq	48(%r12), %r11
	movq	%r15, %r9
.LBB14_5:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	(%r11), %r15
	movslq	92(%r15), %rbx
	movswl	72(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	jle	.LBB14_7
# %bb.6:
	movq	48(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_15
.LBB14_7:
	leaq	92(%r15), %rdx
	movq	56(%r10), %rdi
	movq	48(%r15), %rsi
	movl	$16, %ecx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%r9, %rbx
	movl	$.L.str.8, %r9d
	movl	$32767, %r8d            # imm = 0x7FFF
	movq	%r10, %r14
	movq	%r11, %r12
	callq	luaM_growaux_
	movq	%r12, %r11
	movq	%r14, %r10
	movq	%rbx, %r9
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rax, 48(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movslq	92(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jge	.LBB14_15
# %bb.8:
	movl	%ecx, %esi
	subl	%ebx, %esi
	movq	%rbx, %r8
	notq	%r8
	addq	%rcx, %r8
	andq	$3, %rsi
	je	.LBB14_12
# %bb.9:                                # %.preheader1
	movq	%rbx, %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	negq	%rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB14_10:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdi
	addq	$-1, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB14_10
# %bb.11:                               # %.loopexit2
	subq	%rdx, %rbx
.LBB14_12:
	cmpq	$3, %r8
	jb	.LBB14_15
# %bb.13:                               # %.preheader
	subq	%rbx, %rcx
	shlq	$4, %rbx
	leaq	(%rbx,%rax), %rdx
	addq	$48, %rdx
	.p2align	4, 0x90
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	movq	$0, -48(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -32(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rdx
	addq	$-4, %rcx
	jne	.LBB14_14
.LBB14_15:
	movswq	72(%r11), %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%r9, (%rax,%rdx)
	testb	$3, 9(%r9)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_16
# %bb.17:
	testb	$4, 9(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	je	.LBB14_19
# %bb.18:
	movq	56(%r10), %rdi
	movq	%r15, %rsi
	movq	%r9, %rdx
	movq	%r11, %r15
	callq	luaC_barrierf
	movq	%r15, %r11
	movl	$42, __A_VARIABLE(%rip)
	movzwl	72(%r15), %ecx
	jmp	.LBB14_19
.LBB14_16:
	movl	-44(%rbp), %ebx         # 4-byte Reload
.LBB14_19:
	leal	1(%rcx), %eax
	movw	%ax, 72(%r11)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	74(%r13), %eax
	movslq	%ebx, %rdx
	addq	%rax, %rdx
	movw	%cx, 196(%r13,%rdx,2)
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
	.size	new_localvar, .Lfunc_end14-new_localvar
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
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	48(%rdi), %r15
	movl	4(%rdi), %r14d
	movl	16(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$286, %eax              # imm = 0x11E
	je	.LBB15_12
# %bb.1:
	cmpl	$123, %eax
	je	.LBB15_14
# %bb.2:
	cmpl	$40, %eax
	jne	.LBB15_13
# %bb.3:
	cmpl	8(%rbx), %r14d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_5
# %bb.4:
	movl	$.L.str.15, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB15_5:
	movq	%rbx, %rdi
	callq	luaX_next
	cmpl	$41, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_7
# %bb.6:
	movl	$0, -64(%rbp)
	jmp	.LBB15_11
.LBB15_12:
	movq	24(%rbx), %rsi
	movq	%r15, %rdi
	callq	luaK_stringK
	movq	$-1, -48(%rbp)
	movl	$4, -64(%rbp)
	movl	%eax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaX_next
	jmp	.LBB15_15
.LBB15_14:
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	callq	constructor
	jmp	.LBB15_15
.LBB15_13:
	movl	$.L.str.16, %esi
	movq	%rbx, %rdi
	callq	luaX_syntaxerror
	jmp	.LBB15_22
.LBB15_7:
	leaq	-64(%rbp), %rsi
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_10
# %bb.8:                                # %.preheader
	leaq	-64(%rbp), %r13
	.p2align	4, 0x90
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdi
	movq	%r13, %rsi
	callq	luaK_exp2nextreg
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_9
.LBB15_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rsi
	movq	%r15, %rdi
	movl	$-1, %edx
	callq	luaK_setreturns
.LBB15_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$41, %esi
	movl	$40, %edx
	movl	%r14d, %ecx
	callq	check_match
.LBB15_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r12), %ebx
	movl	-64(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	je	.LBB15_17
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB15_18
.LBB15_17:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB15_21
.LBB15_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_20
# %bb.19:
	leaq	-64(%rbp), %rsi
	movq	%r15, %rdi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
.LBB15_20:
	movl	60(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %ecx
.LBB15_21:
	movq	%r15, %rdi
	movl	$28, %esi
	movl	%ebx, %edx
	movl	$2, %r8d
	callq	luaK_codeABC
	movq	$-1, 16(%r12)
	movl	$13, (%r12)
	movl	%eax, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movl	%r14d, %esi
	callq	luaK_fixline
	addl	$1, %ebx
	movl	%ebx, 60(%r15)
.LBB15_22:
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
.Lfunc_end15:
	.size	funcargs, .Lfunc_end15-funcargs
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB16_1
# %bb.2:
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movzbl	74(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jle	.LBB16_14
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=1
	movq	(%rbx), %rax
	movq	48(%rax), %rax
	movzwl	194(%rbx,%rdx,2), %esi
	addq	$-1, %rdx
	shlq	$4, %rsi
	cmpq	%r15, (%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB16_15
# %bb.6:
	movq	$-1, 16(%r14)
	movl	$6, (%r14)
	movl	%edx, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$6, %eax
	testl	%ecx, %ecx
	jne	.LBB16_40
# %bb.7:
	movq	40(%rbx), %rcx
	.p2align	4, 0x90
.LBB16_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB16_11
# %bb.9:                                #   in Loop: Header=BB16_8 Depth=1
	movzbl	12(%rcx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jle	.LBB16_12
# %bb.10:                               #   in Loop: Header=BB16_8 Depth=1
	movq	(%rcx), %rcx
	jmp	.LBB16_8
.LBB16_1:
	movq	$-1, 16(%r14)
	movl	$8, (%r14)
	movl	$255, 8(%r14)
	movl	$8, %eax
	jmp	.LBB16_40
.LBB16_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_15:
	movq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	singlevaraux
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	cmpl	$8, %ecx
	je	.LBB16_40
# %bb.16:
	movq	(%rbx), %r12
	movl	72(%r12), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	112(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB16_17
# %bb.18:
	movl	(%r14), %esi
	leaq	8(%r14), %rcx
	xorl	%edx, %edx
	jmp	.LBB16_19
	.p2align	4, 0x90
.LBB16_21:                              #   in Loop: Header=BB16_19 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jae	.LBB16_22
.LBB16_19:                              # =>This Inner Loop Header: Depth=1
	movzbl	75(%rbx,%rdx,2), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %esi
	jne	.LBB16_21
# %bb.20:                               #   in Loop: Header=BB16_19 Depth=1
	movzbl	76(%rbx,%rdx,2), %edi
	cmpl	%edi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_21
	jmp	.LBB16_39
.LBB16_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %esi
	cmpb	$60, %al
	jb	.LBB16_27
# %bb.23:
	movl	%r8d, %r13d
	movl	96(%r12), %edx
	movq	32(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB16_24
# %bb.25:
	movl	$.L.str.5, %esi
	movl	$.L.str.13, %r8d
	movl	$60, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB16_26
.LBB16_17:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	%r8d, %esi
	jmp	.LBB16_27
.LBB16_11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_13
.LBB16_12:
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, 13(%rcx)
.LBB16_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB16_40
.LBB16_24:
	movl	$.L.str.4, %esi
	movl	$.L.str.13, %ecx
	movl	$60, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB16_26:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	112(%r12), %al
	movl	72(%r12), %esi
	movl	%r13d, %r8d
.LBB16_27:
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %esi
	jle	.LBB16_29
# %bb.28:
	leaq	56(%r12), %r13
	movq	56(%r12), %rax
	jmp	.LBB16_30
.LBB16_29:
	leaq	72(%r12), %rdx
	movq	32(%rbx), %rdi
	leaq	56(%r12), %r13
	movq	56(%r12), %rsi
	movl	$8, %ecx
	movl	$.L.str.14, %r9d
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	%r8d, %r12d
	movl	$2147483645, %r8d       # imm = 0x7FFFFFFD
	callq	luaM_growaux_
	movl	%r12d, %r8d
	movq	-48(%rbp), %r12         # 8-byte Reload
	movq	%rax, 56(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	72(%r12), %esi
.LBB16_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r8d
	jge	.LBB16_35
# %bb.31:
	movslq	%r8d, %rcx
	movslq	%esi, %rdx
	subl	%r8d, %esi
	movq	%rcx, %rdi
	notq	%rdi
	addq	%rdx, %rdi
	andq	$3, %rsi
	je	.LBB16_33
	.p2align	4, 0x90
.LBB16_32:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rcx,8)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	addq	$-1, %rsi
	jne	.LBB16_32
.LBB16_33:
	cmpq	$3, %rdi
	jb	.LBB16_35
	.p2align	4, 0x90
.LBB16_34:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	movq	$0, 8(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	movq	$0, 16(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	movq	$0, 24(%rax,%rcx,8)
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	cmpq	%rcx, %rdx
	jne	.LBB16_34
.LBB16_35:
	movb	112(%r12), %dl
	movzbl	%dl, %esi
	movq	%r15, (%rax,%rsi,8)
	testb	$3, 9(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_38
# %bb.36:
	testb	$4, 9(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_38
# %bb.37:
	movq	32(%rbx), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	luaC_barrierf
	movl	$42, __A_VARIABLE(%rip)
	movb	112(%r12), %dl
	movzbl	%dl, %esi
.LBB16_38:
	movb	(%r14), %al
	movb	%al, 75(%rbx,%rsi,2)
	leaq	8(%r14), %rcx
	movb	8(%r14), %al
	movb	%al, 76(%rbx,%rsi,2)
	leal	1(%rdx), %eax
	movb	%al, 112(%r12)
	movzbl	%dl, %edx
.LBB16_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, (%rcx)
	movl	$7, (%r14)
	movl	$7, %eax
.LBB16_40:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end16:
	.size	singlevaraux, .Lfunc_end16-singlevaraux
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function leaveblock
	.type	leaveblock,@function
leaveblock:                             # @leaveblock
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	24(%rdi), %rax
	movq	40(%rdi), %r14
	movq	(%r14), %rcx
	movq	%rcx, 40(%rdi)
	movzbl	12(%r14), %edx
	movq	48(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzbl	74(%rax), %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %r8b
	jbe	.LBB17_5
# %bb.1:
	movl	48(%rax), %r9d
	movq	(%rax), %rsi
	movq	48(%rsi), %rsi
	movl	%r8d, %ebx
	subb	%dl, %bl
	movq	%r8, %rdi
	testb	$1, %bl
	je	.LBB17_3
# %bb.2:
	leal	-1(%r8), %edi
	movb	%dil, 74(%rax)
	movzbl	%dil, %edi
	movzwl	196(%rax,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%r9d, 12(%rsi,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%r8), %rdi
.LBB17_3:
	leal	1(%rdx), %ebx
	cmpb	%bl, %r8b
	je	.LBB17_5
	.p2align	4, 0x90
.LBB17_4:                               # =>This Inner Loop Header: Depth=1
	leal	-1(%rdi), %ebx
	movb	%bl, 74(%rax)
	movzbl	%bl, %ebx
	movzwl	196(%rax,%rbx,2), %ebx
	shlq	$4, %rbx
	movl	%r9d, 12(%rsi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addb	$-2, %dil
	movb	%dil, 74(%rax)
	movzbl	%dil, %ebx
	movzwl	196(%rax,%rbx,2), %ecx
	shlq	$4, %rcx
	movl	%r9d, 12(%rsi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%dl, %bl
	ja	.LBB17_4
.LBB17_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 13(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_7
# %bb.6:
	movq	%r15, %rdi
	movl	$35, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movl	$42, __A_VARIABLE(%rip)
.LBB17_7:
	movzbl	74(%r15), %eax
	movl	%eax, 60(%r15)
	movl	8(%r14), %esi
	movq	%r15, %rdi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	leaveblock, .Lfunc_end17-leaveblock
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
	movl	%ecx, %r12d
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	48(%rdi), %r13
	movb	74(%r13), %al
	addb	$3, %al
	movb	%al, 74(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	48(%r13), %ecx
	movq	(%r13), %rdx
	movq	48(%rdx), %rdx
	movzbl	%al, %eax
	movzwl	190(%r13,%rax,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	192(%r13,%rax,2), %esi
	shlq	$4, %rsi
	movl	%ecx, 8(%rdx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	194(%r13,%rax,2), %eax
	shlq	$4, %rax
	movl	%ecx, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$259, 16(%rdi)          # imm = 0x103
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	je	.LBB18_2
# %bb.1:
	movq	56(%r14), %r15
	movq	%r14, %rdi
	movl	$259, %esi              # imm = 0x103
	callq	luaX_token2str
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movl	-44(%rbp), %r15d        # 4-byte Reload
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	%r13, %rdi
	testl	%ebx, %ebx
	je	.LBB18_4
# %bb.3:
	movl	$32, %esi
	movl	%r15d, %edx
	movl	$131070, %ecx           # imm = 0x1FFFE
	callq	luaK_codeABx
	jmp	.LBB18_5
.LBB18_4:
	callq	luaK_jump
.LBB18_5:
	movl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, -64(%rbp)
	movb	$0, -58(%rbp)
	movb	74(%r13), %al
	movb	%al, -60(%rbp)
	movb	$0, -59(%rbp)
	movq	40(%r13), %rax
	movq	%rax, -72(%rbp)
	leaq	-72(%rbp), %rax
	movq	%rax, 40(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r14), %rsi
	movb	74(%rsi), %bl
	addb	%r12b, %bl
	movb	%bl, 74(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB18_11
# %bb.6:
	movl	48(%rsi), %eax
	movq	(%rsi), %rcx
	movq	48(%rcx), %rcx
	movslq	%r12d, %rdx
	movzbl	%bl, %ebx
	testb	$1, %r12b
	je	.LBB18_8
# %bb.7:
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	movzwl	196(%rsi,%rdi,2), %edi
	shlq	$4, %rdi
	movl	%eax, 8(%rcx,%rdi)
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_8:
	cmpl	$1, %r12d
	je	.LBB18_11
# %bb.9:                                # %.preheader
	addq	%rbx, %rbx
	leaq	(%rdx,%rdx), %rdi
	subq	%rdi, %rbx
	addq	%rbx, %rsi
	addq	$198, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB18_10:                              # =>This Inner Loop Header: Depth=1
	movzwl	-2(%rsi,%rdi,2), %ebx
	shlq	$4, %rbx
	movl	%eax, 8(%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rsi,%rdi,2), %ebx
	shlq	$4, %rbx
	movl	%eax, 8(%rcx,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rdi
	cmpl	%edi, %edx
	jne	.LBB18_10
.LBB18_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	%r12d, %esi
	callq	luaK_reserveregs
	movq	%r14, %rdi
	callq	block
	movq	%r13, %rdi
	callq	leaveblock
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	luaK_patchtohere
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB18_13
# %bb.12:
	movq	%r13, %rdi
	movl	$31, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	movl	$131070, %ecx           # imm = 0x1FFFE
	callq	luaK_codeABx
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	luaK_fixline
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB18_14
.LBB18_13:
	movq	%r13, %rdi
	movl	$33, %esi
	movl	-44(%rbp), %edx         # 4-byte Reload
	xorl	%ecx, %ecx
	movl	%r12d, %r8d
	callq	luaK_codeABC
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movl	-48(%rbp), %esi         # 4-byte Reload
	callq	luaK_fixline
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	luaK_jump
	movl	%eax, %r14d
.LBB18_14:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movq	%r13, %rdi
	movl	%r14d, %esi
	movl	%r15d, %edx
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
.Lfunc_end18:
	.size	forbody, .Lfunc_end18-forbody
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	je	.LBB19_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %eax
	jne	.LBB19_4
.LBB19_2:
	xorl	%eax, %eax
	addl	$1, %ebx
	cmovsl	%eax, %ebx
	movq	%r14, %rdi
	movq	%rcx, %rsi
	movl	%ebx, %edx
	callq	luaK_setreturns
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jl	.LBB19_9
# %bb.3:
	addl	$-1, %ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_reserveregs
	jmp	.LBB19_8
.LBB19_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_6
# %bb.5:
	movq	%r14, %rdi
	movq	%rcx, %rsi
	callq	luaK_exp2nextreg
	movl	$42, __A_VARIABLE(%rip)
.LBB19_6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB19_9
# %bb.7:
	movl	60(%r14), %r15d
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaK_reserveregs
	movq	%r14, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	luaK_nil
.LBB19_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB19_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	adjust_assign, .Lfunc_end19-adjust_assign
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	jb	.LBB20_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	jb	.LBB20_3
.LBB20_2:
	movl	$.L.str.26, %esi
	movq	%r12, %rdi
	callq	luaX_syntaxerror
	movl	$42, __A_VARIABLE(%rip)
.LBB20_3:
	leaq	8(%rbx), %r14
	movl	16(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, %eax
	jne	.LBB20_21
# %bb.4:
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -72(%rbp)
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	primaryexp
	cmpl	$6, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_15
# %bb.5:
	movq	48(%r12), %r13
	movl	60(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB20_6
	.p2align	4, 0x90
.LBB20_11:                              #   in Loop: Header=BB20_6 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB20_12
.LBB20_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	$9, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_11
# %bb.7:                                #   in Loop: Header=BB20_6 Depth=1
	movl	-56(%rbp), %edx
	cmpl	%edx, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_9
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=1
	movl	%eax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	movl	-56(%rbp), %edx
.LBB20_9:                               #   in Loop: Header=BB20_6 Depth=1
	cmpl	%edx, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB20_11
# %bb.10:                               #   in Loop: Header=BB20_6 Depth=1
	movl	%eax, 20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	jmp	.LBB20_11
.LBB20_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %eax
	je	.LBB20_23
# %bb.22:
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
	movl	$42, __A_VARIABLE(%rip)
.LBB20_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdi
	xorl	%edx, %edx
	callq	subexpr
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jne	.LBB20_26
# %bb.24:
	movl	$1, %ebx
	leaq	-72(%rbp), %r13
	.p2align	4, 0x90
.LBB20_25:                              # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	callq	luaX_next
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$44, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB20_25
.LBB20_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebx
	jne	.LBB20_27
# %bb.32:
	movq	48(%r12), %rdi
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	luaK_setoneret
	movq	48(%r12), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	luaK_storevar
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_31
.LBB20_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB20_14
# %bb.13:
	movl	60(%r13), %edx
	movl	-56(%rbp), %ecx
	movq	%r13, %rdi
	xorl	%esi, %esi
	xorl	%r8d, %r8d
	callq	luaK_codeABC
	movq	%r13, %rdi
	movl	$1, %esi
	callq	luaK_reserveregs
	movl	$42, __A_VARIABLE(%rip)
.LBB20_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_15:
	movq	56(%r12), %rax
	movzwl	96(%rax), %ecx
	movl	$200, %eax
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jge	.LBB20_20
# %bb.16:
	movq	48(%r12), %rbx
	movq	(%rbx), %rcx
	movq	32(%rbx), %rdi
	movl	96(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB20_17
# %bb.18:
	movl	$.L.str.5, %esi
	movl	$.L.str.27, %r8d
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	jmp	.LBB20_19
.LBB20_27:
	leaq	-72(%rbp), %rcx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movl	%ebx, %edx
	callq	adjust_assign
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebx
	jle	.LBB20_29
# %bb.28:
	movq	48(%r12), %rax
	subl	%ebx, %r15d
	addl	%r15d, 60(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_29:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_30
.LBB20_17:
	movl	$.L.str.4, %esi
	movl	$.L.str.27, %ecx
	movl	%eax, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB20_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_20:
	addl	$1, %r15d
	leaq	-72(%rbp), %rsi
	movq	%r12, %rdi
	movl	%r15d, %edx
	callq	assignment
.LBB20_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%r12), %rdi
	movl	60(%rdi), %eax
	addl	$-1, %eax
	movq	$-1, -56(%rbp)
	movl	$12, -72(%rbp)
	movl	%eax, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rdx
	movq	%r14, %rsi
	callq	luaK_storevar
.LBB20_31:
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
.Lfunc_end20:
	.size	assignment, .Lfunc_end20-assignment
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
