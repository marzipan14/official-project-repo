	.text
	.file	"llex.c"
	.hidden	luaX_init               # -- Begin function luaX_init
	.globl	luaX_init
	.p2align	4, 0x90
	.type	luaX_init,@function
luaX_init:                              # @luaX_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-21, %rbx
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	luaX_tokens+168(,%rbx,8), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	orb	$32, 9(%rax)
	leal	22(%rbx), %ecx
	movb	%cl, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	jne	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaX_init, .Lfunc_end0-luaX_init
                                        # -- End function
	.hidden	luaX_token2str          # -- Begin function luaX_token2str
	.globl	luaX_token2str
	.p2align	4, 0x90
	.type	luaX_token2str,@function
luaX_token2str:                         # @luaX_token2str
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %esi              # imm = 0x100
	jg	.LBB1_2
# %bb.1:
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	testb	$32, 1(%rax,%rcx)
	movq	56(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.32, %eax
	movl	$.L.str.31, %esi
	cmoveq	%rax, %rsi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_2:
	movslq	%ebx, %rax
	movq	luaX_tokens-2056(,%rax,8), %rax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaX_token2str, .Lfunc_end1-luaX_token2str
                                        # -- End function
	.hidden	luaX_lexerror           # -- Begin function luaX_lexerror
	.globl	luaX_lexerror
	.p2align	4, 0x90
	.type	luaX_lexerror,@function
luaX_lexerror:                          # @luaX_lexerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	movl	%edx, %r12d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	80(%rdi), %rsi
	addq	$24, %rsi
	leaq	-112(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	movq	56(%rbx), %rdi
	movl	4(%rbx), %ecx
	movl	$.L.str.33, %esi
	movq	%r15, %rdx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB2_8
# %bb.1:
	movq	%rax, %r14
	movq	56(%rbx), %r15
	leal	-284(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	ja	.LBB2_3
# %bb.2:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	save
	movq	72(%rbx), %rax
	movq	(%rax), %rcx
	jmp	.LBB2_7
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %r12d             # imm = 0x100
	jg	.LBB2_5
# %bb.4:
	callq	__locale_ctype_ptr
	movslq	%r12d, %rcx
	testb	$32, 1(%rax,%rcx)
	movq	56(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.32, %eax
	movl	$.L.str.31, %esi
	cmoveq	%rax, %rsi
	movl	%r12d, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_6
.LBB2_5:
	movslq	%r12d, %rax
	movq	luaX_tokens-2056(,%rax,8), %rcx
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:
	movq	56(%rbx), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaX_lexerror, .Lfunc_end2-luaX_lexerror
                                        # -- End function
	.hidden	luaX_syntaxerror        # -- Begin function luaX_syntaxerror
	.globl	luaX_syntaxerror
	.p2align	4, 0x90
	.type	luaX_syntaxerror,@function
luaX_syntaxerror:                       # @luaX_syntaxerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	16(%rdi), %edx
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaX_syntaxerror, .Lfunc_end3-luaX_syntaxerror
                                        # -- End function
	.hidden	luaX_newstring          # -- Begin function luaX_newstring
	.globl	luaX_newstring
	.p2align	4, 0x90
	.type	luaX_newstring,@function
luaX_newstring:                         # @luaX_newstring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	56(%rdi), %r15
	movq	%r15, %rdi
	callq	luaS_newlstr
	movq	%rax, %r14
	movq	48(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_3
# %bb.1:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%r15), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB4_3
# %bb.2:
	movq	%r15, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaX_newstring, .Lfunc_end4-luaX_newstring
                                        # -- End function
	.hidden	luaX_setinput           # -- Begin function luaX_setinput
	.globl	luaX_setinput
	.p2align	4, 0x90
	.type	luaX_setinput,@function
luaX_setinput:                          # @luaX_setinput
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movb	$46, 88(%rsi)
	movq	%rdi, 56(%rsi)
	movl	$287, 32(%rsi)          # imm = 0x11F
	movq	%rdx, 64(%rsi)
	movq	$0, 48(%rsi)
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 4(%rsi)
	movq	%rcx, 80(%rsi)
	movq	72(%rsi), %rax
	movq	(%rax), %rsi
	movq	16(%rax), %rdx
	movl	$32, %ecx
	callq	luaM_realloc_
	movq	72(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	$32, 16(%rcx)
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB5_1
# %bb.2:
	callq	luaZ_fill
	jmp	.LBB5_3
.LBB5_1:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaX_setinput, .Lfunc_end5-luaX_setinput
                                        # -- End function
	.hidden	luaX_next               # -- Begin function luaX_next
	.globl	luaX_next
	.p2align	4, 0x90
	.type	luaX_next,@function
luaX_next:                              # @luaX_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	4(%rdi), %eax
	movl	32(%rdi), %ecx
	movl	%eax, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$287, %ecx              # imm = 0x11F
	jne	.LBB6_1
# %bb.2:
	leaq	24(%rbx), %rsi
	movq	%rbx, %rdi
	callq	llex
	movl	%eax, 16(%rbx)
	jmp	.LBB6_3
.LBB6_1:
	leaq	32(%rbx), %rax
	movups	(%rax), %xmm0
	movups	%xmm0, 16(%rbx)
	movl	$287, 32(%rbx)          # imm = 0x11F
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaX_next, .Lfunc_end6-luaX_next
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function llex
	.type	llex,@function
llex:                                   # @llex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	$0, 8(%rax)
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%r13, %rdi
	callq	inclinenumber
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_19 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %r15d
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r15), %eax
	cmpl	$92, %eax
	ja	.LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$287, %ebx              # imm = 0x11F
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_10
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	cmpl	$126, %r15d
	je	.LBB7_3
.LBB7_134:                              #   in Loop: Header=BB7_1 Depth=1
	callq	__locale_ctype_ptr
	movslq	(%r13), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_139
# %bb.135:                              #   in Loop: Header=BB7_1 Depth=1
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_136
# %bb.137:                              #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_138
.LBB7_8:                                #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_10:                               #   in Loop: Header=BB7_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$45, %eax
	jne	.LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_1 Depth=1
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_13
# %bb.14:                               #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_15
.LBB7_136:                              #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_138:                              #   in Loop: Header=BB7_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	jmp	.LBB7_1
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_15:                               #   in Loop: Header=BB7_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$91, %eax
	jne	.LBB7_19
# %bb.16:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%r13, %rdi
	callq	skip_sep
	movq	72(%r13), %rcx
	movq	$0, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB7_18
# %bb.17:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%r13, %rdi
	xorl	%esi, %esi
	movl	%eax, %edx
	callq	read_long_string
	movq	72(%r13), %rax
	movq	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_1
.LBB7_18:                               #   in Loop: Header=BB7_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %eax
	jmp	.LBB7_19
	.p2align	4, 0x90
.LBB7_24:                               #   in Loop: Header=BB7_19 Depth=2
	callq	luaZ_fill
.LBB7_25:                               #   in Loop: Header=BB7_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
.LBB7_19:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB7_1
# %bb.20:                               #   in Loop: Header=BB7_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	je	.LBB7_1
# %bb.21:                               #   in Loop: Header=BB7_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB7_1
# %bb.22:                               #   in Loop: Header=BB7_19 Depth=2
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB7_24
# %bb.23:                               #   in Loop: Header=BB7_19 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	jmp	.LBB7_25
.LBB7_139:
	callq	__locale_ctype_ptr
	movslq	(%r13), %rcx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_133
# %bb.140:
	callq	__locale_ctype_ptr
	movslq	(%r13), %rbx
	testb	$3, 1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_142
# %bb.141:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %ebx
	jne	.LBB7_154
.LBB7_142:
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB7_143:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_144
# %bb.145:                              #   in Loop: Header=BB7_143 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_146
	.p2align	4, 0x90
.LBB7_144:                              #   in Loop: Header=BB7_143 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_146:                              #   in Loop: Header=BB7_143 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	callq	__locale_ctype_ptr
	movslq	(%r13), %rbx
	testb	$7, 1(%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_143
# %bb.147:                              #   in Loop: Header=BB7_143 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %ebx
	je	.LBB7_143
# %bb.148:
	movq	56(%r13), %rbx
	movq	72(%r13), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, %r14
	movq	48(%r13), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_151
# %bb.149:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB7_151
# %bb.150:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB7_151:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	10(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB7_153
# %bb.152:
	orl	$256, %ebx              # imm = 0x100
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_158
.LBB7_11:
	movl	$45, %ebx
	jmp	.LBB7_158
.LBB7_62:
	movq	%r13, %rdi
	movl	%r15d, %esi
	jmp	.LBB7_63
	.p2align	4, 0x90
.LBB7_111:                              #   in Loop: Header=BB7_63 Depth=1
	movq	%r13, %rdi
.LBB7_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_67 Depth 2
                                        #       Child Loop BB7_98 Depth 3
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_64
# %bb.65:                               #   in Loop: Header=BB7_63 Depth=1
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB7_66
	.p2align	4, 0x90
.LBB7_64:                               #   in Loop: Header=BB7_63 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB7_66:                               #   in Loop: Header=BB7_63 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_67:                               #   Parent Loop BB7_63 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_98 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %esi
	je	.LBB7_112
# %bb.68:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %esi
	jg	.LBB7_72
# %bb.69:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$-1, %esi
	je	.LBB7_76
# %bb.70:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$10, %esi
	je	.LBB7_71
	jmp	.LBB7_111
	.p2align	4, 0x90
.LBB7_72:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$13, %esi
	je	.LBB7_71
# %bb.73:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$92, %esi
	jne	.LBB7_111
# %bb.74:                               #   in Loop: Header=BB7_67 Depth=2
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_75
# %bb.78:                               #   in Loop: Header=BB7_67 Depth=2
	callq	luaZ_fill
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB7_79
	.p2align	4, 0x90
.LBB7_71:                               #   in Loop: Header=BB7_67 Depth=2
	movq	80(%r13), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-128(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r13), %rdi
	movl	4(%r13), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.42, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	save
	movq	72(%r13), %rax
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	jmp	.LBB7_77
.LBB7_76:                               #   in Loop: Header=BB7_67 Depth=2
	movq	80(%r13), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-128(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r13), %rdi
	movl	4(%r13), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.42, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movl	$.L.str.30, %ecx
	movq	%rax, %rdx
.LBB7_77:                               #   in Loop: Header=BB7_67 Depth=2
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdi
	movl	$3, %esi
	callq	luaD_throw
.LBB7_84:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r13), %esi
	jmp	.LBB7_67
.LBB7_75:                               #   in Loop: Header=BB7_67 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_79:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$96, %eax
	jle	.LBB7_80
# %bb.85:                               #   in Loop: Header=BB7_67 Depth=2
	addl	$-97, %eax
	cmpl	$21, %eax
	ja	.LBB7_92
# %bb.86:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$7, %esi
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_106:                              #   in Loop: Header=BB7_67 Depth=2
	movl	$8, %esi
	jmp	.LBB7_107
.LBB7_80:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$-1, %eax
	je	.LBB7_84
# %bb.81:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$10, %eax
	je	.LBB7_83
# %bb.82:                               #   in Loop: Header=BB7_67 Depth=2
	cmpl	$13, %eax
	jne	.LBB7_92
.LBB7_83:                               #   in Loop: Header=BB7_67 Depth=2
	movq	%r13, %rdi
	movl	$10, %esi
	callq	save
	movq	%r13, %rdi
	callq	inclinenumber
	jmp	.LBB7_84
.LBB7_87:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$12, %esi
	jmp	.LBB7_107
.LBB7_88:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$10, %esi
	jmp	.LBB7_107
.LBB7_89:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$13, %esi
	jmp	.LBB7_107
.LBB7_90:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$9, %esi
	jmp	.LBB7_107
.LBB7_91:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$11, %esi
.LBB7_107:                              #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_108
# %bb.109:                              #   in Loop: Header=BB7_67 Depth=2
	callq	luaZ_fill
	jmp	.LBB7_110
.LBB7_108:                              #   in Loop: Header=BB7_67 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_110:                              #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	jmp	.LBB7_84
.LBB7_92:                               #   in Loop: Header=BB7_67 Depth=2
	callq	__locale_ctype_ptr
	movslq	(%r13), %r14
	testb	$4, 1(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_97
# %bb.93:                               #   in Loop: Header=BB7_67 Depth=2
	movq	%r13, %rdi
	movl	%r14d, %esi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_94
# %bb.95:                               #   in Loop: Header=BB7_67 Depth=2
	callq	luaZ_fill
	jmp	.LBB7_96
.LBB7_97:                               #   in Loop: Header=BB7_67 Depth=2
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB7_98:                               #   Parent Loop BB7_63 Depth=1
                                        #     Parent Loop BB7_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rbx,%rbx,4), %ebx
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_99
# %bb.100:                              #   in Loop: Header=BB7_98 Depth=3
	callq	luaZ_fill
	jmp	.LBB7_101
.LBB7_99:                               #   in Loop: Header=BB7_98 Depth=3
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_101:                              #   in Loop: Header=BB7_98 Depth=3
	leal	(%r14,%rbx,2), %ebx
	addl	$-48, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	ja	.LBB7_103
# %bb.102:                              #   in Loop: Header=BB7_98 Depth=3
	callq	__locale_ctype_ptr
	movslq	(%r13), %r14
	testb	$4, 1(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_98
.LBB7_103:                              #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$256, %ebx              # imm = 0x100
	jl	.LBB7_105
# %bb.104:                              #   in Loop: Header=BB7_67 Depth=2
	movq	80(%r13), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-128(%rbp), %r14
	movq	%r14, %rdi
	callq	luaO_chunkid
	movq	56(%r13), %rdi
	movl	4(%r13), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.43, %r8d
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	save
	movq	72(%r13), %rax
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_105:                              #   in Loop: Header=BB7_67 Depth=2
	movq	%r13, %rdi
	movl	%ebx, %esi
	callq	save
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r12         # 8-byte Reload
	jmp	.LBB7_84
.LBB7_94:                               #   in Loop: Header=BB7_67 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_96:                               #   in Loop: Header=BB7_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_84
.LBB7_112:
	movq	%r13, %rdi
	movl	%r15d, %esi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_113
# %bb.114:
	callq	luaZ_fill
	jmp	.LBB7_115
.LBB7_119:
	movq	%r13, %rdi
	movl	$46, %esi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_120
# %bb.121:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB7_122
.LBB7_40:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_41
# %bb.42:
	callq	luaZ_fill
	jmp	.LBB7_43
.LBB7_48:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_49
# %bb.50:
	callq	luaZ_fill
	jmp	.LBB7_51
.LBB7_26:
	movq	%r13, %rdi
	callq	skip_sep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB7_28
# %bb.27:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movl	%eax, %edx
	callq	read_long_string
	movl	$286, %ebx              # imm = 0x11E
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_158
.LBB7_113:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_115:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movq	56(%r13), %rbx
	movq	72(%r13), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	addq	$1, %rsi
	addq	$-2, %rdx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, %r14
	movq	48(%r13), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_118
# %bb.116:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB7_118
# %bb.117:
	movq	%rbx, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB7_118:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$286, %ebx              # imm = 0x11E
	jmp	.LBB7_158
.LBB7_3:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_4
# %bb.56:
	callq	luaZ_fill
	jmp	.LBB7_57
.LBB7_120:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB7_122:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, (%r13)
	movl	$.L.str.37, %edi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_132
# %bb.123:
	movl	(%r13), %esi
	movq	%r13, %rdi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_124
# %bb.125:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB7_126
.LBB7_41:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$60, %ebx
	cmpl	$61, %eax
	jne	.LBB7_158
# %bb.44:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_45
# %bb.46:
	callq	luaZ_fill
	jmp	.LBB7_47
.LBB7_49:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$62, %ebx
	cmpl	$61, %eax
	jne	.LBB7_158
# %bb.52:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_53
# %bb.54:
	callq	luaZ_fill
	jmp	.LBB7_55
.LBB7_28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB7_29
# %bb.31:
	movq	80(%r13), %rsi
	addq	$24, %rsi
	leaq	-128(%rbp), %rbx
	movl	$80, %edx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r13), %rdi
	movl	4(%r13), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.36, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	save
	movq	72(%r13), %rax
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%r13), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_32:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_33
# %bb.34:
	callq	luaZ_fill
	jmp	.LBB7_35
.LBB7_33:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$61, %ebx
	cmpl	$61, %eax
	jne	.LBB7_158
# %bb.36:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_37
# %bb.38:
	callq	luaZ_fill
	jmp	.LBB7_39
.LBB7_132:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	(%r13), %rcx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$46, %ebx
	je	.LBB7_158
.LBB7_133:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	read_numeral
	movl	$284, %ebx              # imm = 0x11C
	jmp	.LBB7_158
.LBB7_153:
	movq	%r14, (%r12)
	movl	$285, %ebx              # imm = 0x11D
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_158
.LBB7_124:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB7_126:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.37, %edi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_131
# %bb.127:
	movl	(%r13), %esi
	movq	%r13, %rdi
	callq	save
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_128
# %bb.129:
	callq	luaZ_fill
	jmp	.LBB7_130
.LBB7_37:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$280, %ebx              # imm = 0x118
	jmp	.LBB7_158
.LBB7_4:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$126, %ebx
	cmpl	$61, %eax
	jne	.LBB7_158
# %bb.58:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_59
# %bb.60:
	callq	luaZ_fill
	jmp	.LBB7_61
.LBB7_45:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_47:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$282, %ebx              # imm = 0x11A
	jmp	.LBB7_158
.LBB7_53:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$281, %ebx              # imm = 0x119
	jmp	.LBB7_158
.LBB7_131:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$278, %ebx              # imm = 0x116
	jmp	.LBB7_158
.LBB7_154:
	movq	64(%r13), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB7_155
# %bb.156:
	callq	luaZ_fill
	jmp	.LBB7_157
.LBB7_128:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_130:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$279, %ebx              # imm = 0x117
	jmp	.LBB7_158
.LBB7_29:
	movl	$91, %ebx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_158
.LBB7_59:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	movl	$283, %ebx              # imm = 0x11B
	jmp	.LBB7_158
.LBB7_155:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_157:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
.LBB7_158:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	llex, .Lfunc_end7-llex
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_158
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_6
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_6
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_62
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_62
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_7
	.quad	.LBB7_119
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_40
	.quad	.LBB7_32
	.quad	.LBB7_48
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_134
	.quad	.LBB7_26
.LJTI7_1:
	.quad	.LBB7_107
	.quad	.LBB7_106
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_87
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_88
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_92
	.quad	.LBB7_89
	.quad	.LBB7_92
	.quad	.LBB7_90
	.quad	.LBB7_92
	.quad	.LBB7_91
                                        # -- End function
	.text
	.hidden	luaX_lookahead          # -- Begin function luaX_lookahead
	.globl	luaX_lookahead
	.p2align	4, 0x90
	.type	luaX_lookahead,@function
luaX_lookahead:                         # @luaX_lookahead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	40(%rdi), %rsi
	callq	llex
	movl	%eax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaX_lookahead, .Lfunc_end8-luaX_lookahead
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function save
	.type	save,@function
save:                                   # @save
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	movl	%esi, %r14d
	movq	72(%rdi), %r12
	movq	8(%r12), %rcx
	movq	16(%r12), %rdx
	leaq	1(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jbe	.LBB9_1
# %bb.2:
	movq	%rdi, %rbx
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jbe	.LBB9_3
# %bb.4:
	movq	80(%rbx), %rsi
	addq	$24, %rsi
	leaq	-112(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	movq	56(%rbx), %rdi
	movl	4(%rbx), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rdi
	addq	$56, %rbx
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rdx
	jmp	.LBB9_5
.LBB9_1:
	movq	(%r12), %rax
	jmp	.LBB9_9
.LBB9_3:
	addq	$56, %rbx
.LBB9_5:
	leaq	(%rdx,%rdx), %r15
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %r15
	jne	.LBB9_6
# %bb.7:
	callq	luaM_toobig
	jmp	.LBB9_8
.LBB9_6:
	movq	(%r12), %rsi
	movq	%r15, %rcx
	callq	luaM_realloc_
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r12)
	movq	%r15, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rcx
	leaq	1(%rcx), %rsi
.LBB9_9:
	movq	%rsi, 8(%r12)
	movb	%r14b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	save, .Lfunc_end9-save
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function inclinenumber
	.type	inclinenumber,@function
inclinenumber:                          # @inclinenumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	(%rdi), %r14d
	movq	64(%rdi), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB10_1
# %bb.2:
	callq	luaZ_fill
	jmp	.LBB10_3
.LBB10_1:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB10_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	jne	.LBB10_10
.LBB10_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	je	.LBB10_10
# %bb.6:
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB10_7
# %bb.8:
	callq	luaZ_fill
	jmp	.LBB10_9
.LBB10_7:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB10_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_10:
	movl	4(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483644, %eax       # imm = 0x7FFFFFFC
	jl	.LBB10_12
# %bb.11:
	movl	16(%rbx), %edx
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	inclinenumber, .Lfunc_end10-inclinenumber
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function skip_sep
	.type	skip_sep,@function
skip_sep:                               # @skip_sep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	(%rdi), %r14d
	movl	%r14d, %esi
	callq	save
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB11_1
# %bb.2:
	callq	luaZ_fill
	jmp	.LBB11_3
.LBB11_1:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %eax
	jne	.LBB11_9
# %bb.4:                                # %.preheader
	xorl	%ebx, %ebx
	jmp	.LBB11_5
	.p2align	4, 0x90
.LBB11_7:                               #   in Loop: Header=BB11_5 Depth=1
	callq	luaZ_fill
.LBB11_8:                               #   in Loop: Header=BB11_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r15)
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$61, %eax
	jne	.LBB11_9
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$61, %esi
	callq	save
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_7
# %bb.6:                                #   in Loop: Header=BB11_5 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	jmp	.LBB11_8
.LBB11_9:
	xorl	%ecx, %ecx
	cmpl	%r14d, %eax
	setne	%cl
	negl	%ecx
	xorl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	skip_sep, .Lfunc_end11-skip_sep
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function read_long_string
	.type	read_long_string,@function
read_long_string:                       # @read_long_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	(%rdi), %esi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB12_1
# %bb.2:
	callq	luaZ_fill
	jmp	.LBB12_3
.LBB12_1:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB12_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %eax
	jne	.LBB12_6
.LBB12_5:
	movq	%rbx, %rdi
	callq	inclinenumber
	movl	$42, __A_VARIABLE(%rip)
.LBB12_6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movl	$.L.str.40, %eax
	movl	$.L.str.39, %r12d
	cmoveq	%rax, %r12
	leaq	-128(%rbp), %r13
	jmp	.LBB12_7
.LBB12_18:                              #   in Loop: Header=BB12_7 Depth=1
	movq	80(%rbx), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	movq	%r13, %rdi
	callq	luaO_chunkid
	movq	56(%rbx), %rdi
	movl	4(%rbx), %ecx
	movl	$.L.str.33, %esi
	movq	%r13, %rdx
	movq	%r12, %r8
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movl	$.L.str.30, %ecx
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB12_38:                              #   in Loop: Header=BB12_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB12_39:                              #   in Loop: Header=BB12_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB12_7:                               # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %esi
	jle	.LBB12_8
# %bb.12:                               #   in Loop: Header=BB12_7 Depth=1
	cmpl	$13, %esi
	je	.LBB12_10
# %bb.13:                               #   in Loop: Header=BB12_7 Depth=1
	cmpl	$91, %esi
	je	.LBB12_19
# %bb.14:                               #   in Loop: Header=BB12_7 Depth=1
	cmpl	$93, %esi
	jne	.LBB12_32
# %bb.15:                               #   in Loop: Header=BB12_7 Depth=1
	movq	%rbx, %rdi
	callq	skip_sep
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jne	.LBB12_39
	jmp	.LBB12_16
	.p2align	4, 0x90
.LBB12_8:                               #   in Loop: Header=BB12_7 Depth=1
	cmpl	$-1, %esi
	je	.LBB12_18
# %bb.9:                                #   in Loop: Header=BB12_7 Depth=1
	cmpl	$10, %esi
	jne	.LBB12_32
.LBB12_10:                              #   in Loop: Header=BB12_7 Depth=1
	movq	%rbx, %rdi
	movl	$10, %esi
	callq	save
	movq	%rbx, %rdi
	callq	inclinenumber
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB12_39
# %bb.11:                               #   in Loop: Header=BB12_7 Depth=1
	movq	72(%rbx), %rax
	movq	$0, 8(%rax)
	jmp	.LBB12_38
.LBB12_19:                              #   in Loop: Header=BB12_7 Depth=1
	movq	%rbx, %rdi
	callq	skip_sep
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jne	.LBB12_39
# %bb.20:                               #   in Loop: Header=BB12_7 Depth=1
	movl	(%rbx), %esi
	movq	%rbx, %rdi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB12_21
# %bb.22:                               #   in Loop: Header=BB12_7 Depth=1
	callq	luaZ_fill
	jmp	.LBB12_23
.LBB12_32:                              #   in Loop: Header=BB12_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB12_34
# %bb.33:                               #   in Loop: Header=BB12_7 Depth=1
	movq	%rbx, %rdi
	callq	save
.LBB12_34:                              #   in Loop: Header=BB12_7 Depth=1
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB12_35
# %bb.36:                               #   in Loop: Header=BB12_7 Depth=1
	callq	luaZ_fill
	jmp	.LBB12_37
.LBB12_35:                              #   in Loop: Header=BB12_7 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_37:                              #   in Loop: Header=BB12_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	jmp	.LBB12_38
.LBB12_21:                              #   in Loop: Header=BB12_7 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_23:                              #   in Loop: Header=BB12_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB12_39
# %bb.24:                               #   in Loop: Header=BB12_7 Depth=1
	movl	$.L.str.41, %esi
	movq	%rbx, %rdi
	movl	$91, %edx
	callq	luaX_lexerror
	jmp	.LBB12_38
.LBB12_16:
	movl	(%rbx), %esi
	movq	%rbx, %rdi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB12_17
# %bb.25:
	callq	luaZ_fill
	jmp	.LBB12_26
.LBB12_17:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB12_31
# %bb.27:
	movq	56(%rbx), %r12
	movq	72(%rbx), %rax
	movslq	%r15d, %rcx
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	addq	%rcx, %rsi
	addq	$2, %rsi
	leal	(%r15,%r15), %eax
	addl	$4, %eax
	cltq
	subq	%rax, %rdx
	movq	%r12, %rdi
	callq	luaS_newlstr
	movq	%rax, %r15
	movq	48(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_30
# %bb.28:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%r12), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB12_30
# %bb.29:
	movq	%r12, %rdi
	callq	luaC_step
	movl	$42, __A_VARIABLE(%rip)
.LBB12_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_31:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	read_long_string, .Lfunc_end12-read_long_string
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function read_numeral
	.type	read_numeral,@function
read_numeral:                           # @read_numeral
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %esi
	.p2align	4, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB13_2
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB13_4:                               #   in Loop: Header=BB13_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
	callq	__locale_ctype_ptr
	movslq	(%rbx), %rsi
	testb	$4, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_1
# %bb.5:                                #   in Loop: Header=BB13_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %esi
	je	.LBB13_1
# %bb.6:
	movl	$.L.str.44, %edi
                                        # kill: def $esi killed $esi killed $rsi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_15
# %bb.7:
	movl	(%rbx), %esi
	movq	%rbx, %rdi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB13_8
# %bb.9:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB13_10
.LBB13_8:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB13_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.45, %edi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_15
# %bb.11:
	movl	(%rbx), %esi
	movq	%rbx, %rdi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB13_12
# %bb.13:
	callq	luaZ_fill
	jmp	.LBB13_14
.LBB13_12:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB13_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
.LBB13_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_16
	.p2align	4, 0x90
.LBB13_36:                              #   in Loop: Header=BB13_16 Depth=1
	callq	luaZ_fill
.LBB13_37:                              #   in Loop: Header=BB13_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%rbx)
.LBB13_16:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	(%rbx), %rsi
	testb	$7, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_17
# %bb.33:                               #   in Loop: Header=BB13_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_34
	.p2align	4, 0x90
.LBB13_17:                              #   in Loop: Header=BB13_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$95, %esi
	jne	.LBB13_18
.LBB13_34:                              #   in Loop: Header=BB13_16 Depth=1
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
	callq	save
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB13_36
# %bb.35:                               #   in Loop: Header=BB13_16 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	jmp	.LBB13_37
.LBB13_18:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	save
	movb	88(%rbx), %al
	movq	72(%rbx), %rcx
	movq	(%rcx), %rdi
	movq	8(%rcx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB13_30
# %bb.19:
	movq	%rdx, %rcx
	testb	$1, %dl
	je	.LBB13_23
# %bb.20:
	leaq	-1(%rdx), %rcx
	cmpb	$46, -1(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_22
# %bb.21:
	movb	%al, (%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_23:
	cmpq	$1, %rdx
	jne	.LBB13_24
.LBB13_29:
	movq	72(%rbx), %rax
	movq	(%rax), %rdi
.LBB13_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	luaO_str2d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_65
# %bb.31:
	callq	localeconv
	movb	88(%rbx), %cl
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_32
# %bb.38:
	movq	(%rax), %rax
	movb	(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_39
	.p2align	4, 0x90
.LBB13_28:                              #   in Loop: Header=BB13_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
	testq	%rdx, %rdx
	je	.LBB13_29
.LBB13_24:                              # =>This Inner Loop Header: Depth=1
	cmpb	$46, -1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_26
# %bb.25:                               #   in Loop: Header=BB13_24 Depth=1
	movb	%al, -1(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_26:                              #   in Loop: Header=BB13_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2(%rcx), %rdx
	cmpb	$46, -2(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_28
# %bb.27:                               #   in Loop: Header=BB13_24 Depth=1
	movb	%al, -2(%rdi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_28
.LBB13_32:
	movb	$46, %al
.LBB13_39:
	movb	%al, 88(%rbx)
	movq	72(%rbx), %rdx
	movq	(%rdx), %rdi
	movq	8(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB13_51
# %bb.40:
	movq	%rsi, %rdx
	testb	$1, %sil
	je	.LBB13_44
# %bb.41:
	leaq	-1(%rsi), %rdx
	cmpb	%cl, -1(%rdi,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_43
# %bb.42:
	movb	%al, (%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_44:
	cmpq	$1, %rsi
	jne	.LBB13_45
.LBB13_50:
	movq	72(%rbx), %rax
	movq	(%rax), %rdi
.LBB13_51:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	luaO_str2d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB13_64
# %bb.52:
	movb	88(%rbx), %al
	movq	72(%rbx), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB13_63
# %bb.53:
	movq	%rsi, %rdx
	testb	$1, %sil
	je	.LBB13_57
# %bb.54:
	leaq	-1(%rsi), %rdx
	cmpb	%al, -1(%rcx,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_56
# %bb.55:
	movb	$46, (%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_56:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_57:
	cmpq	$1, %rsi
	jne	.LBB13_58
.LBB13_63:
	movl	$42, __A_VARIABLE(%rip)
	movq	80(%rbx), %rsi
	addq	$24, %rsi
	leaq	-112(%rbp), %r14
	movl	$80, %edx
	movq	%r14, %rdi
	callq	luaO_chunkid
	movq	56(%rbx), %rdi
	movl	4(%rbx), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.46, %r8d
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	save
	movq	72(%rbx), %rax
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
	movq	56(%rbx), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_65:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB13_49:                              #   in Loop: Header=BB13_45 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB13_50
.LBB13_45:                              # =>This Inner Loop Header: Depth=1
	cmpb	%cl, -1(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_47
# %bb.46:                               #   in Loop: Header=BB13_45 Depth=1
	movb	%al, -1(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_47:                              #   in Loop: Header=BB13_45 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2(%rdx), %rsi
	cmpb	%cl, -2(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_49
# %bb.48:                               #   in Loop: Header=BB13_45 Depth=1
	movb	%al, -2(%rdi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_49
	.p2align	4, 0x90
.LBB13_62:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB13_63
.LBB13_58:                              # =>This Inner Loop Header: Depth=1
	cmpb	%al, -1(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_60
# %bb.59:                               #   in Loop: Header=BB13_58 Depth=1
	movb	$46, -1(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_60:                              #   in Loop: Header=BB13_58 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-2(%rdx), %rsi
	cmpb	%al, -2(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_62
# %bb.61:                               #   in Loop: Header=BB13_58 Depth=1
	movb	$46, -2(%rcx,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_62
.Lfunc_end13:
	.size	read_numeral, .Lfunc_end13-read_numeral
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"and"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"break"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"do"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"else"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"elseif"
	.size	.L.str.4, 7

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"end"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"false"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"for"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"function"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"if"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"in"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"local"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"nil"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"not"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"or"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"repeat"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"return"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"then"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"true"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"until"
	.size	.L.str.19, 6

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"while"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	".."
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"..."
	.size	.L.str.22, 4

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"=="
	.size	.L.str.23, 3

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	">="
	.size	.L.str.24, 3

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<="
	.size	.L.str.25, 3

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"~="
	.size	.L.str.26, 3

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"<number>"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"<name>"
	.size	.L.str.28, 7

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"<string>"
	.size	.L.str.29, 9

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"<eof>"
	.size	.L.str.30, 6

	.hidden	luaX_tokens             # @luaX_tokens
	.type	luaX_tokens,@object
	.section	.rodata,"a",@progbits
	.globl	luaX_tokens
	.p2align	4
luaX_tokens:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	0
	.size	luaX_tokens, 256

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"char(%d)"
	.size	.L.str.31, 9

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"%c"
	.size	.L.str.32, 3

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%s:%d: %s"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%s near '%s'"
	.size	.L.str.34, 13

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"lexical element too long"
	.size	.L.str.35, 25

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"invalid long string delimiter"
	.size	.L.str.36, 30

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"."
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"chunk has too many lines"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"unfinished long string"
	.size	.L.str.39, 23

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"unfinished long comment"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"nesting of [[...]] is deprecated"
	.size	.L.str.41, 33

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"unfinished string"
	.size	.L.str.42, 18

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"escape sequence too large"
	.size	.L.str.43, 26

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Ee"
	.size	.L.str.44, 3

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"+-"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"malformed number"
	.size	.L.str.46, 17

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaS_newlstr
	.hidden	luaO_pushfstring
	.hidden	luaO_chunkid
	.hidden	luaD_throw
	.hidden	luaH_setstr
	.hidden	luaC_step
	.hidden	luaM_realloc_
	.hidden	luaZ_fill
	.hidden	luaM_toobig
	.hidden	luaO_str2d
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
