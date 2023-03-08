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
	cmpl	$256, %esi              # imm = 0x100
	jg	.LBB1_5
# %bb.1:
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movslq	%ebx, %rcx
	testb	$32, 1(%rax,%rcx)
	movq	56(%r14), %rdi
	jne	.LBB1_2
# %bb.4:
	movl	$.L.str.32, %esi
	jmp	.LBB1_3
.LBB1_5:
	movslq	%ebx, %rax
	movq	luaX_tokens-2056(,%rax,8), %rax
	jmp	.LBB1_6
.LBB1_2:
	movl	$.L.str.31, %esi
.LBB1_3:
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB1_6:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movq	80(%rdi), %rsi
	addq	$24, %rsi
	leaq	-128(%rbp), %r14
	movl	$80, %edx
	movq	%r14, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movq	%r14, %rdx
	movq	%rbx, %r8
	xorl	%eax, %eax
	callq	luaO_pushfstring
	testl	%r13d, %r13d
	je	.LBB2_19
# %bb.1:
	movq	%rax, %r14
	movq	56(%r12), %r15
	leal	-284(%r13), %eax
	cmpl	$2, %eax
	ja	.LBB2_11
# %bb.2:
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB2_3
# %bb.4:
	movabsq	$9223372036854775806, %rax # imm = 0x7FFFFFFFFFFFFFFE
	movq	%r15, %rdi
	cmpq	%rax, %rdx
	jb	.LBB2_6
# %bb.5:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-208(%rbp), %r13
	movl	$80, %edx
	movq	%r13, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	movq	56(%r12), %rdi
.LBB2_6:
	leaq	(%rdx,%rdx), %r13
	cmpq	$-2, %r13
	jne	.LBB2_7
# %bb.8:
	callq	luaM_toobig
	jmp	.LBB2_9
.LBB2_11:
	cmpl	$256, %r13d             # imm = 0x100
	jg	.LBB2_16
# %bb.12:
	callq	__locale_ctype_ptr
	movslq	%r13d, %rcx
	testb	$32, 1(%rax,%rcx)
	movq	56(%r12), %rdi
	jne	.LBB2_13
# %bb.15:
	movl	$.L.str.32, %esi
	jmp	.LBB2_14
.LBB2_3:
	movq	(%rbx), %rax
	jmp	.LBB2_10
.LBB2_16:
	movslq	%r13d, %rax
	movq	luaX_tokens-2056(,%rax,8), %rcx
	jmp	.LBB2_17
.LBB2_7:
	movq	(%rbx), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB2_9:
	movq	%rax, (%rbx)
	movq	%r13, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB2_10:
	movq	%rsi, 8(%rbx)
	movb	$0, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r12), %rax
	movq	(%rax), %rcx
	jmp	.LBB2_18
.LBB2_13:
	movl	$.L.str.31, %esi
.LBB2_14:
	movl	%r13d, %edx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	%rax, %rcx
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
.LBB2_19:
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	addq	$168, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
	jne	.LBB4_3
# %bb.1:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%r15), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB4_3
# %bb.2:
	movq	%r15, %rdi
	callq	luaC_step
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
	subq	$104, %rsp
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	$0, 8(%rax)
	leaq	64(%rdi), %r14
	movl	$18433, %r13d           # imm = 0x4801
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_1 Depth=1
	movq	%r12, %rdi
	callq	inclinenumber
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_18 Depth 2
	movl	(%r12), %r15d
	leal	1(%r15), %eax
	cmpl	$92, %eax
	ja	.LBB7_2
# %bb.5:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$287, %ebx              # imm = 0x11F
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_8
# %bb.9:                                #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_10
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	cmpl	$126, %r15d
	je	.LBB7_3
.LBB7_211:                              #   in Loop: Header=BB7_1 Depth=1
	callq	__locale_ctype_ptr
	movslq	(%r12), %rcx
	testb	$8, 1(%rax,%rcx)
	je	.LBB7_215
# %bb.212:                              #   in Loop: Header=BB7_1 Depth=1
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_213
# %bb.214:                              #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	movl	%eax, (%r12)
	jmp	.LBB7_1
.LBB7_8:                                #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_10:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, (%r12)
	cmpl	$45, %eax
	jne	.LBB7_11
# %bb.12:                               #   in Loop: Header=BB7_1 Depth=1
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_13
# %bb.14:                               #   in Loop: Header=BB7_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_15
.LBB7_213:                              #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	movl	%eax, (%r12)
	jmp	.LBB7_1
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_15:                               #   in Loop: Header=BB7_1 Depth=1
	movl	%eax, (%r12)
	cmpl	$91, %eax
	jne	.LBB7_18
# %bb.16:                               #   in Loop: Header=BB7_1 Depth=1
	movq	%r12, %rdi
	callq	skip_sep
	movq	72(%r12), %rcx
	movq	$0, 8(%rcx)
	testl	%eax, %eax
	js	.LBB7_17
# %bb.242:                              #   in Loop: Header=BB7_1 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	%eax, %edx
	callq	read_long_string
	movq	72(%r12), %rax
	movq	$0, 8(%rax)
	jmp	.LBB7_1
.LBB7_17:                               #   in Loop: Header=BB7_1 Depth=1
	movl	(%r12), %eax
	jmp	.LBB7_18
	.p2align	4, 0x90
.LBB7_21:                               #   in Loop: Header=BB7_18 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	movl	%eax, (%r12)
.LBB7_18:                               #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$1, %eax
	cmpl	$14, %eax
	ja	.LBB7_20
# %bb.19:                               #   in Loop: Header=BB7_18 Depth=2
	btl	%eax, %r13d
	jb	.LBB7_1
.LBB7_20:                               #   in Loop: Header=BB7_18 Depth=2
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_21
# %bb.22:                               #   in Loop: Header=BB7_18 Depth=2
	callq	luaZ_fill
	movl	%eax, (%r12)
	jmp	.LBB7_18
.LBB7_215:
	callq	__locale_ctype_ptr
	movslq	(%r12), %rcx
	testb	$4, 1(%rax,%rcx)
	jne	.LBB7_210
# %bb.216:
	callq	__locale_ctype_ptr
	movslq	(%r12), %rbx
	cmpq	$95, %rbx
	je	.LBB7_218
# %bb.217:
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	jne	.LBB7_218
# %bb.237:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_238
# %bb.239:
	callq	luaZ_fill
	jmp	.LBB7_240
	.p2align	4, 0x90
.LBB7_218:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %r15
	movq	8(%r15), %rcx
	movq	16(%r15), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_219
# %bb.220:                              #   in Loop: Header=BB7_218 Depth=1
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_222
# %bb.221:                              #   in Loop: Header=BB7_218 Depth=1
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r13
	movq	%r13, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rdx
.LBB7_222:                              #   in Loop: Header=BB7_218 Depth=1
	leaq	(%rdx,%rdx), %r13
	movq	56(%r12), %rdi
	cmpq	$-2, %r13
	jne	.LBB7_223
# %bb.224:                              #   in Loop: Header=BB7_218 Depth=1
	callq	luaM_toobig
	jmp	.LBB7_225
	.p2align	4, 0x90
.LBB7_219:                              #   in Loop: Header=BB7_218 Depth=1
	movq	(%r15), %rax
	jmp	.LBB7_226
	.p2align	4, 0x90
.LBB7_223:                              #   in Loop: Header=BB7_218 Depth=1
	movq	(%r15), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB7_225:                              #   in Loop: Header=BB7_218 Depth=1
	movq	%rax, (%r15)
	movq	%r13, 16(%r15)
	movq	8(%r15), %rcx
	leaq	1(%rcx), %rsi
.LBB7_226:                              #   in Loop: Header=BB7_218 Depth=1
	movq	%rsi, 8(%r15)
	movb	%bl, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_227
# %bb.228:                              #   in Loop: Header=BB7_218 Depth=1
	callq	luaZ_fill
	jmp	.LBB7_229
	.p2align	4, 0x90
.LBB7_227:                              #   in Loop: Header=BB7_218 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_229:                              #   in Loop: Header=BB7_218 Depth=1
	movl	%eax, (%r12)
	callq	__locale_ctype_ptr
	movslq	(%r12), %rbx
	movzbl	1(%rax,%rbx), %eax
	andb	$7, %al
	cmpq	$95, %rbx
	je	.LBB7_218
# %bb.230:                              #   in Loop: Header=BB7_218 Depth=1
	testb	%al, %al
	jne	.LBB7_218
# %bb.231:
	movq	56(%r12), %rbx
	movq	72(%r12), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, %r15
	movq	48(%r12), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	jne	.LBB7_234
# %bb.232:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_234
# %bb.233:
	movq	%rbx, %rdi
	callq	luaC_step
.LBB7_234:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	10(%r15), %ebx
	testl	%ebx, %ebx
	je	.LBB7_236
# %bb.235:
	orl	$256, %ebx              # imm = 0x100
	jmp	.LBB7_241
.LBB7_11:
	movl	$45, %ebx
	jmp	.LBB7_241
.LBB7_58:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_59
# %bb.60:
	cmpq	%rax, %rdx
	jbe	.LBB7_61
# %bb.62:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %rdi
	movl	$80, %edx
	callq	luaO_chunkid
	leaq	56(%r12), %r13
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	leaq	-144(%rbp), %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB7_63
.LBB7_169:
	movabsq	$9223372036854775805, %r13 # imm = 0x7FFFFFFFFFFFFFFD
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_170
# %bb.171:
	cmpq	%r13, %rdx
	jbe	.LBB7_172
# %bb.173:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	leaq	56(%r12), %r13
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB7_174
.LBB7_36:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_37
# %bb.38:
	callq	luaZ_fill
	jmp	.LBB7_39
.LBB7_44:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_45
# %bb.46:
	callq	luaZ_fill
	jmp	.LBB7_47
.LBB7_23:
	movq	%r12, %rdi
	callq	skip_sep
	testl	%eax, %eax
	js	.LBB7_25
# %bb.24:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	read_long_string
	movl	$286, %ebx              # imm = 0x11E
	jmp	.LBB7_241
.LBB7_59:
	movq	(%rbx), %rax
	jmp	.LBB7_67
.LBB7_3:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_4
# %bb.52:
	callq	luaZ_fill
	jmp	.LBB7_53
.LBB7_61:
	leaq	56(%r12), %rax
.LBB7_63:
	leaq	(%rdx,%rdx), %r13
	movq	(%rax), %rdi
	cmpq	$-2, %r13
	jne	.LBB7_64
# %bb.65:
	callq	luaM_toobig
	jmp	.LBB7_66
.LBB7_170:
	movq	(%rbx), %rax
	jmp	.LBB7_178
.LBB7_37:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_39:
	movl	%eax, (%r12)
	movl	$60, %ebx
	cmpl	$61, %eax
	jne	.LBB7_241
# %bb.40:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_41
# %bb.42:
	callq	luaZ_fill
	jmp	.LBB7_43
.LBB7_45:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_47:
	movl	%eax, (%r12)
	movl	$62, %ebx
	cmpl	$61, %eax
	jne	.LBB7_241
# %bb.48:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_49
# %bb.50:
	callq	luaZ_fill
	jmp	.LBB7_51
.LBB7_64:
	movq	(%rbx), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB7_66:
	movq	%rax, (%rbx)
	movq	%r13, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_67:
	movq	%rsi, 8(%rbx)
	movb	%r15b, (%rax,%rcx)
	jmp	.LBB7_68
	.p2align	4, 0x90
.LBB7_145:                              #   in Loop: Header=BB7_68 Depth=1
	movq	(%r13), %rax
.LBB7_152:                              #   in Loop: Header=BB7_68 Depth=1
	movq	%rsi, 8(%r13)
	movb	%bl, (%rax,%rcx)
.LBB7_68:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_72 Depth 2
                                        #       Child Loop BB7_106 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_69
# %bb.70:                               #   in Loop: Header=BB7_68 Depth=1
	callq	luaZ_fill
	movl	%eax, %ebx
	jmp	.LBB7_71
	.p2align	4, 0x90
.LBB7_69:                               #   in Loop: Header=BB7_68 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %ebx
.LBB7_71:                               #   in Loop: Header=BB7_68 Depth=1
	movl	%ebx, (%r12)
	jmp	.LBB7_72
	.p2align	4, 0x90
.LBB7_76:                               #   in Loop: Header=BB7_72 Depth=2
	movl	$.L.str.42, %esi
	movq	%r12, %rdi
	movl	$286, %edx              # imm = 0x11E
	callq	luaX_lexerror
	movl	(%r12), %ebx
.LBB7_72:                               #   Parent Loop BB7_68 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_106 Depth 3
	cmpl	%r15d, %ebx
	je	.LBB7_153
# %bb.73:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$12, %ebx
	jg	.LBB7_77
# %bb.74:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$-1, %ebx
	je	.LBB7_81
# %bb.75:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$10, %ebx
	je	.LBB7_76
	jmp	.LBB7_144
	.p2align	4, 0x90
.LBB7_77:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$13, %ebx
	je	.LBB7_76
# %bb.78:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$92, %ebx
	jne	.LBB7_144
# %bb.79:                               #   in Loop: Header=BB7_72 Depth=2
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_80
# %bb.82:                               #   in Loop: Header=BB7_72 Depth=2
	callq	luaZ_fill
                                        # kill: def $eax killed $eax def $rax
	jmp	.LBB7_83
.LBB7_81:                               #   in Loop: Header=BB7_72 Depth=2
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.42, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movl	$.L.str.30, %ecx
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	jmp	.LBB7_72
.LBB7_80:                               #   in Loop: Header=BB7_72 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_83:                               #   in Loop: Header=BB7_72 Depth=2
	movl	%eax, (%r12)
	cmpl	$96, %eax
	jle	.LBB7_84
# %bb.89:                               #   in Loop: Header=BB7_72 Depth=2
	addl	$-97, %eax
	cmpl	$21, %eax
	ja	.LBB7_104
# %bb.90:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$7, %bl
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_133:                              #   in Loop: Header=BB7_72 Depth=2
	movb	$8, %bl
	jmp	.LBB7_134
.LBB7_84:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$-1, %eax
	je	.LBB7_103
# %bb.85:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$10, %eax
	je	.LBB7_87
# %bb.86:                               #   in Loop: Header=BB7_72 Depth=2
	cmpl	$13, %eax
	jne	.LBB7_104
.LBB7_87:                               #   in Loop: Header=BB7_72 Depth=2
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_88
# %bb.96:                               #   in Loop: Header=BB7_72 Depth=2
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_98
# %bb.97:                               #   in Loop: Header=BB7_72 Depth=2
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r13
	movq	%r13, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB7_98:                               #   in Loop: Header=BB7_72 Depth=2
	leaq	(%rdx,%rdx), %r13
	movq	56(%r12), %rdi
	cmpq	$-2, %r13
	jne	.LBB7_99
# %bb.100:                              #   in Loop: Header=BB7_72 Depth=2
	callq	luaM_toobig
	jmp	.LBB7_101
.LBB7_91:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$12, %bl
	jmp	.LBB7_134
.LBB7_92:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$10, %bl
	jmp	.LBB7_134
.LBB7_93:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$13, %bl
	jmp	.LBB7_134
.LBB7_94:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$9, %bl
	jmp	.LBB7_134
.LBB7_95:                               #   in Loop: Header=BB7_72 Depth=2
	movb	$11, %bl
.LBB7_134:                              #   in Loop: Header=BB7_72 Depth=2
	movq	72(%r12), %r13
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_135
# %bb.136:                              #   in Loop: Header=BB7_72 Depth=2
	movb	%bl, -48(%rbp)          # 1-byte Spill
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_138
# %bb.137:                              #   in Loop: Header=BB7_72 Depth=2
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdx
.LBB7_138:                              #   in Loop: Header=BB7_72 Depth=2
	leaq	(%rdx,%rdx), %rbx
	movq	56(%r12), %rdi
	cmpq	$-2, %rbx
	jne	.LBB7_139
# %bb.140:                              #   in Loop: Header=BB7_72 Depth=2
	callq	luaM_toobig
	jmp	.LBB7_141
.LBB7_135:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%r13), %rax
	jmp	.LBB7_142
.LBB7_139:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%r13), %rsi
	movq	%rbx, %rcx
	callq	luaM_realloc_
.LBB7_141:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rax, (%r13)
	movq	%rbx, 16(%r13)
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rsi
	movb	-48(%rbp), %bl          # 1-byte Reload
.LBB7_142:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rsi, 8(%r13)
	movb	%bl, (%rax,%rcx)
.LBB7_117:                              #   in Loop: Header=BB7_72 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_118
# %bb.143:                              #   in Loop: Header=BB7_72 Depth=2
	callq	luaZ_fill
	movl	%eax, (%r12)
	movl	(%r12), %ebx
	jmp	.LBB7_72
.LBB7_118:                              #   in Loop: Header=BB7_72 Depth=2
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	movl	%eax, (%r12)
	movl	(%r12), %ebx
	jmp	.LBB7_72
.LBB7_88:                               #   in Loop: Header=BB7_72 Depth=2
	movq	(%rbx), %rax
	jmp	.LBB7_102
.LBB7_104:                              #   in Loop: Header=BB7_72 Depth=2
	callq	__locale_ctype_ptr
	movslq	(%r12), %rsi
	testb	$4, 1(%rax,%rsi)
	jne	.LBB7_105
# %bb.108:                              #   in Loop: Header=BB7_72 Depth=2
	movq	72(%r12), %r13
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	1(%rcx), %rdi
	cmpq	%rdx, %rdi
	jbe	.LBB7_109
# %bb.110:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_112
# %bb.111:                              #   in Loop: Header=BB7_72 Depth=2
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdx
.LBB7_112:                              #   in Loop: Header=BB7_72 Depth=2
	leaq	(%rdx,%rdx), %rbx
	movq	56(%r12), %rdi
	cmpq	$-2, %rbx
	jne	.LBB7_113
# %bb.114:                              #   in Loop: Header=BB7_72 Depth=2
	callq	luaM_toobig
	jmp	.LBB7_115
.LBB7_99:                               #   in Loop: Header=BB7_72 Depth=2
	movq	(%rbx), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB7_101:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rax, (%rbx)
	movq	%r13, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_102:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rsi, 8(%rbx)
	movb	$10, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	inclinenumber
.LBB7_103:                              #   in Loop: Header=BB7_72 Depth=2
	movl	(%r12), %ebx
	jmp	.LBB7_72
.LBB7_105:                              # %.preheader
                                        #   in Loop: Header=BB7_72 Depth=2
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB7_106:                              #   Parent Loop BB7_68 Depth=1
                                        #     Parent Loop BB7_72 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rbx,%rbx,4), %ebx
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_107
# %bb.119:                              #   in Loop: Header=BB7_106 Depth=3
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	luaZ_fill
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB7_120
.LBB7_107:                              #   in Loop: Header=BB7_106 Depth=3
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_120:                              #   in Loop: Header=BB7_106 Depth=3
	leal	(%rsi,%rbx,2), %ebx
	addl	$-48, %ebx
	movl	%eax, (%r12)
	addl	$1, %r13d
	cmpl	$2, %r13d
	ja	.LBB7_122
# %bb.121:                              #   in Loop: Header=BB7_106 Depth=3
	callq	__locale_ctype_ptr
	movslq	(%r12), %rsi
	testb	$4, 1(%rax,%rsi)
	jne	.LBB7_106
.LBB7_122:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	cmpl	$256, %ebx              # imm = 0x100
	jl	.LBB7_124
# %bb.123:                              #   in Loop: Header=BB7_72 Depth=2
	movl	$.L.str.43, %esi
	movq	%r12, %rdi
	movl	$286, %edx              # imm = 0x11E
	callq	luaX_lexerror
.LBB7_124:                              #   in Loop: Header=BB7_72 Depth=2
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_125
# %bb.126:                              #   in Loop: Header=BB7_72 Depth=2
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_128
# %bb.127:                              #   in Loop: Header=BB7_72 Depth=2
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r13
	movq	%r13, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r13, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB7_128:                              #   in Loop: Header=BB7_72 Depth=2
	leaq	(%rdx,%rdx), %r13
	movq	56(%r12), %rdi
	cmpq	$-2, %r13
	jne	.LBB7_129
# %bb.130:                              #   in Loop: Header=BB7_72 Depth=2
	callq	luaM_toobig
	jmp	.LBB7_131
.LBB7_109:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%r13), %rax
	jmp	.LBB7_116
.LBB7_125:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%rbx), %rax
	jmp	.LBB7_132
.LBB7_113:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%r13), %rsi
	movq	%rbx, %rcx
	callq	luaM_realloc_
.LBB7_115:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rax, (%r13)
	movq	%rbx, 16(%r13)
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB7_116:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rdi, 8(%r13)
	movb	%sil, (%rax,%rcx)
	jmp	.LBB7_117
.LBB7_129:                              #   in Loop: Header=BB7_72 Depth=2
	movq	(%rbx), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB7_131:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rax, (%rbx)
	movq	%r13, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_132:                              #   in Loop: Header=BB7_72 Depth=2
	movq	%rsi, 8(%rbx)
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movb	%dl, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %ebx
	jmp	.LBB7_72
	.p2align	4, 0x90
.LBB7_144:                              #   in Loop: Header=BB7_68 Depth=1
	movq	72(%r12), %r13
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_145
# %bb.146:                              #   in Loop: Header=BB7_68 Depth=1
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_148
# %bb.147:                              #   in Loop: Header=BB7_68 Depth=1
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	leaq	-144(%rbp), %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdx
.LBB7_148:                              #   in Loop: Header=BB7_68 Depth=1
	leaq	(%rdx,%rdx), %rax
	movq	56(%r12), %rdi
	cmpq	$-2, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jne	.LBB7_149
# %bb.150:                              #   in Loop: Header=BB7_68 Depth=1
	callq	luaM_toobig
	jmp	.LBB7_151
.LBB7_149:                              #   in Loop: Header=BB7_68 Depth=1
	movq	(%r13), %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	luaM_realloc_
.LBB7_151:                              #   in Loop: Header=BB7_68 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%r13)
	movq	%rcx, 16(%r13)
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rsi
	jmp	.LBB7_152
.LBB7_153:
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_154
# %bb.155:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB7_156
# %bb.157:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %rdi
	movl	$80, %edx
	callq	luaO_chunkid
	leaq	56(%r12), %r13
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	leaq	-144(%rbp), %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB7_158
.LBB7_154:
	movq	(%rbx), %rax
	jmp	.LBB7_162
.LBB7_156:
	leaq	56(%r12), %rax
.LBB7_158:
	leaq	(%rdx,%rdx), %r13
	movq	(%rax), %rdi
	cmpq	$-2, %r13
	jne	.LBB7_159
# %bb.160:
	callq	luaM_toobig
	jmp	.LBB7_161
.LBB7_159:
	movq	(%rbx), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB7_161:
	movq	%rax, (%rbx)
	movq	%r13, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_162:
	movq	%rsi, 8(%rbx)
	movb	%r15b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_163
# %bb.164:
	callq	luaZ_fill
	jmp	.LBB7_165
.LBB7_163:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_165:
	movl	%eax, (%r12)
	movq	56(%r12), %rbx
	movq	72(%r12), %rax
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	addq	$1, %rsi
	addq	$-2, %rdx
	movq	%rbx, %rdi
	callq	luaS_newlstr
	movq	%rax, %r15
	movq	48(%r12), %rax
	movq	8(%rax), %rsi
	movq	%rbx, %rdi
	movq	%r15, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	jne	.LBB7_168
# %bb.166:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%rbx), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_168
# %bb.167:
	movq	%rbx, %rdi
	callq	luaC_step
.LBB7_168:
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$286, %ebx              # imm = 0x11E
	jmp	.LBB7_241
.LBB7_25:
	cmpl	$-1, %eax
	je	.LBB7_26
# %bb.27:
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	movl	$286, %edx              # imm = 0x11E
	callq	luaX_lexerror
.LBB7_28:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_29
# %bb.30:
	callq	luaZ_fill
	jmp	.LBB7_31
.LBB7_29:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_31:
	movl	%eax, (%r12)
	movl	$61, %ebx
	cmpl	$61, %eax
	jne	.LBB7_241
# %bb.32:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
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
	movl	%eax, (%r12)
	movl	$280, %ebx              # imm = 0x118
	jmp	.LBB7_241
.LBB7_238:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_240:
	movl	%eax, (%r12)
	jmp	.LBB7_241
.LBB7_172:
	leaq	56(%r12), %r13
.LBB7_174:
	leaq	(%rdx,%rdx), %r15
	movq	(%r13), %rdi
	cmpq	$-2, %r15
	jne	.LBB7_175
# %bb.176:
	callq	luaM_toobig
	jmp	.LBB7_177
.LBB7_4:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_53:
	movl	%eax, (%r12)
	movl	$126, %ebx
	cmpl	$61, %eax
	jne	.LBB7_241
# %bb.54:
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_55
# %bb.56:
	callq	luaZ_fill
	jmp	.LBB7_57
.LBB7_41:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_43:
	movl	%eax, (%r12)
	movl	$282, %ebx              # imm = 0x11A
	jmp	.LBB7_241
.LBB7_49:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_51:
	movl	%eax, (%r12)
	movl	$281, %ebx              # imm = 0x119
	jmp	.LBB7_241
.LBB7_175:
	movq	(%rbx), %rsi
	movq	%r15, %rcx
	callq	luaM_realloc_
.LBB7_177:
	movabsq	$9223372036854775805, %r13 # imm = 0x7FFFFFFFFFFFFFFD
	movq	%rax, (%rbx)
	movq	%r15, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_178:
	movq	%rsi, 8(%rbx)
	movb	$46, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_179
# %bb.180:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB7_181
.LBB7_179:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB7_181:
	movl	%esi, (%r12)
	movl	$.L.str.37, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB7_209
# %bb.182:
	movl	(%r12), %edi
	movq	72(%r12), %r15
	movq	8(%r15), %rcx
	movq	16(%r15), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_183
# %bb.184:
	cmpq	%r13, %rdx
	movl	%edi, -56(%rbp)         # 4-byte Spill
	jbe	.LBB7_185
# %bb.186:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %rbx
	movl	$80, %edx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	leaq	56(%r12), %r13
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rdx
	jmp	.LBB7_187
.LBB7_209:
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	(%r12), %rcx
	movl	$46, %ebx
	testb	$4, 1(%rax,%rcx)
	je	.LBB7_241
.LBB7_210:
	movq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	read_numeral
	movl	$284, %ebx              # imm = 0x11C
	jmp	.LBB7_241
.LBB7_183:
	movq	(%r15), %rax
	jmp	.LBB7_191
.LBB7_236:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
	movl	$285, %ebx              # imm = 0x11D
	jmp	.LBB7_241
.LBB7_185:
	leaq	56(%r12), %r13
.LBB7_187:
	leaq	(%rdx,%rdx), %rbx
	movq	(%r13), %rdi
	cmpq	$-2, %rbx
	jne	.LBB7_188
# %bb.189:
	callq	luaM_toobig
	jmp	.LBB7_190
.LBB7_188:
	movq	(%r15), %rsi
	movq	%rbx, %rcx
	callq	luaM_realloc_
.LBB7_190:
	movabsq	$9223372036854775805, %r13 # imm = 0x7FFFFFFFFFFFFFFD
	movq	%rax, (%r15)
	movq	%rbx, 16(%r15)
	movq	8(%r15), %rcx
	leaq	1(%rcx), %rsi
	movl	-56(%rbp), %edi         # 4-byte Reload
.LBB7_191:
	movq	%rsi, 8(%r15)
	movb	%dil, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_192
# %bb.193:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB7_194
.LBB7_192:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB7_194:
	movl	%esi, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.37, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB7_208
# %bb.195:
	movl	(%r12), %edi
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB7_196
# %bb.197:
	cmpq	%r13, %rdx
	movl	%edi, -56(%rbp)         # 4-byte Spill
	jbe	.LBB7_198
# %bb.199:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	leaq	56(%r12), %r13
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB7_200
.LBB7_208:
	movl	$42, __A_VARIABLE(%rip)
	movl	$278, %ebx              # imm = 0x116
	jmp	.LBB7_241
.LBB7_196:
	movq	(%rbx), %rax
	jmp	.LBB7_204
.LBB7_26:
	movl	$91, %ebx
	jmp	.LBB7_241
.LBB7_55:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_57:
	movl	%eax, (%r12)
	movl	$283, %ebx              # imm = 0x11B
	jmp	.LBB7_241
.LBB7_198:
	leaq	56(%r12), %r13
.LBB7_200:
	leaq	(%rdx,%rdx), %r15
	movq	(%r13), %rdi
	cmpq	$-2, %r15
	jne	.LBB7_201
# %bb.202:
	callq	luaM_toobig
	jmp	.LBB7_203
.LBB7_201:
	movq	(%rbx), %rsi
	movq	%r15, %rcx
	callq	luaM_realloc_
.LBB7_203:
	movl	-56(%rbp), %edi         # 4-byte Reload
	movq	%rax, (%rbx)
	movq	%r15, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB7_204:
	movq	%rsi, 8(%rbx)
	movb	%dil, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	subq	$1, (%rdi)
	jae	.LBB7_205
# %bb.206:
	callq	luaZ_fill
	jmp	.LBB7_207
.LBB7_205:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB7_207:
	movl	%eax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$279, %ebx              # imm = 0x117
.LBB7_241:
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
.Lfunc_end7:
	.size	llex, .Lfunc_end7-llex
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_241
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_6
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_6
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_58
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_58
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_7
	.quad	.LBB7_169
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_36
	.quad	.LBB7_28
	.quad	.LBB7_44
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_211
	.quad	.LBB7_23
.LJTI7_1:
	.quad	.LBB7_134
	.quad	.LBB7_133
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_91
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_92
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_104
	.quad	.LBB7_93
	.quad	.LBB7_104
	.quad	.LBB7_94
	.quad	.LBB7_104
	.quad	.LBB7_95
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
	jae	.LBB9_1
# %bb.2:
	callq	luaZ_fill
	jmp	.LBB9_3
.LBB9_1:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB9_3:
	movl	%eax, (%rbx)
	cmpl	$13, %eax
	je	.LBB9_5
# %bb.4:
	cmpl	$10, %eax
	jne	.LBB9_10
.LBB9_5:
	cmpl	%r14d, %eax
	je	.LBB9_10
# %bb.6:
	movq	64(%rbx), %rdi
	subq	$1, (%rdi)
	jae	.LBB9_7
# %bb.8:
	callq	luaZ_fill
	jmp	.LBB9_9
.LBB9_7:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB9_9:
	movl	%eax, (%rbx)
.LBB9_10:
	movl	4(%rbx), %eax
	leal	1(%rax), %ecx
	movl	%ecx, 4(%rbx)
	cmpl	$2147483644, %eax       # imm = 0x7FFFFFFC
	jl	.LBB9_12
# %bb.11:
	movl	16(%rbx), %edx
	movl	$.L.str.38, %esi
	movq	%rbx, %rdi
	callq	luaX_lexerror
	movl	$42, __A_VARIABLE(%rip)
.LBB9_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	inclinenumber, .Lfunc_end9-inclinenumber
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function skip_sep
	.type	skip_sep,@function
skip_sep:                               # @skip_sep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rdi, %r15
	movl	(%rdi), %edi
	movq	72(%r15), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	jbe	.LBB10_1
# %bb.2:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB10_3
# %bb.4:
	movq	80(%r15), %rsi
	addq	$24, %rsi
	leaq	-128(%rbp), %r14
	movl	$80, %edx
	movq	%r14, %rdi
	callq	luaO_chunkid
	leaq	56(%r15), %r12
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB10_5
.LBB10_1:
	movq	(%rbx), %rax
	jmp	.LBB10_9
.LBB10_3:
	leaq	56(%r15), %r12
.LBB10_5:
	leaq	(%rdx,%rdx), %r14
	movq	(%r12), %rdi
	cmpq	$-2, %r14
	jne	.LBB10_6
# %bb.7:
	callq	luaM_toobig
	jmp	.LBB10_8
.LBB10_6:
	movq	(%rbx), %rsi
	movq	%r14, %rcx
	callq	luaM_realloc_
.LBB10_8:
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
	movl	-44(%rbp), %edi         # 4-byte Reload
.LBB10_9:
	movq	%rsi, 8(%rbx)
	movb	%dil, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB10_10
# %bb.11:
	callq	luaZ_fill
	jmp	.LBB10_12
.LBB10_10:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB10_12:
	movl	%eax, (%r15)
	xorl	%ebx, %ebx
	cmpl	$61, %eax
	jne	.LBB10_26
# %bb.13:
	leaq	-128(%rbp), %r14
	xorl	%ebx, %ebx
	jmp	.LBB10_14
	.p2align	4, 0x90
.LBB10_24:                              #   in Loop: Header=BB10_14 Depth=1
	callq	luaZ_fill
.LBB10_25:                              #   in Loop: Header=BB10_14 Depth=1
	movl	%eax, (%r15)
	addl	$1, %ebx
	cmpl	$61, %eax
	jne	.LBB10_26
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %r12
	movq	8(%r12), %rcx
	movq	16(%r12), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB10_15
# %bb.16:                               #   in Loop: Header=BB10_14 Depth=1
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB10_18
# %bb.17:                               #   in Loop: Header=BB10_14 Depth=1
	movq	80(%r15), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	movq	%r14, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rdx
.LBB10_18:                              #   in Loop: Header=BB10_14 Depth=1
	leaq	(%rdx,%rdx), %r13
	movq	56(%r15), %rdi
	cmpq	$-2, %r13
	jne	.LBB10_19
# %bb.20:                               #   in Loop: Header=BB10_14 Depth=1
	callq	luaM_toobig
	jmp	.LBB10_21
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_14 Depth=1
	movq	(%r12), %rax
	jmp	.LBB10_22
	.p2align	4, 0x90
.LBB10_19:                              #   in Loop: Header=BB10_14 Depth=1
	movq	(%r12), %rsi
	movq	%r13, %rcx
	callq	luaM_realloc_
.LBB10_21:                              #   in Loop: Header=BB10_14 Depth=1
	movq	%rax, (%r12)
	movq	%r13, 16(%r12)
	movq	8(%r12), %rcx
	leaq	1(%rcx), %rsi
.LBB10_22:                              #   in Loop: Header=BB10_14 Depth=1
	movq	%rsi, 8(%r12)
	movb	$61, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jb	.LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_14 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	jmp	.LBB10_25
.LBB10_26:
	xorl	%ecx, %ecx
	cmpl	-44(%rbp), %eax         # 4-byte Folded Reload
	setne	%cl
	negl	%ecx
	xorl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	skip_sep, .Lfunc_end10-skip_sep
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
	subq	$104, %rsp
	movl	%edx, %r13d
	movq	%rsi, %r14
	movq	%rdi, %r15
	movabsq	$9223372036854775805, %r12 # imm = 0x7FFFFFFFFFFFFFFD
	movl	(%rdi), %edi
	movq	72(%r15), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	movq	%r13, -48(%rbp)         # 8-byte Spill
	jbe	.LBB11_1
# %bb.2:
	cmpq	%r12, %rdx
	movl	%edi, -56(%rbp)         # 4-byte Spill
	jbe	.LBB11_3
# %bb.4:
	movq	80(%r15), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r12
	movl	$80, %edx
	movq	%r12, %rdi
	callq	luaO_chunkid
	leaq	56(%r15), %r13
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	jmp	.LBB11_5
.LBB11_1:
	movq	(%rbx), %rax
	jmp	.LBB11_9
.LBB11_3:
	leaq	56(%r15), %r13
.LBB11_5:
	leaq	(%rdx,%rdx), %r12
	movq	(%r13), %rdi
	cmpq	$-2, %r12
	jne	.LBB11_6
# %bb.7:
	callq	luaM_toobig
	jmp	.LBB11_8
.LBB11_6:
	movq	(%rbx), %rsi
	movq	%r12, %rcx
	callq	luaM_realloc_
.LBB11_8:
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%rax, (%rbx)
	movq	%r12, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
	movabsq	$9223372036854775805, %r12 # imm = 0x7FFFFFFFFFFFFFFD
	movl	-56(%rbp), %edi         # 4-byte Reload
.LBB11_9:
	movq	%rsi, 8(%rbx)
	movb	%dil, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB11_10
# %bb.11:
	callq	luaZ_fill
	jmp	.LBB11_12
.LBB11_10:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB11_12:
	movl	%eax, (%r15)
	cmpl	$13, %eax
	je	.LBB11_14
# %bb.13:
	cmpl	$10, %eax
	jne	.LBB11_15
.LBB11_14:
	movq	%r15, %rdi
	callq	inclinenumber
.LBB11_15:
	testq	%r14, %r14
	movl	$.L.str.40, %eax
	movl	$.L.str.39, %ecx
	cmoveq	%rax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB11_16
.LBB11_27:                              #   in Loop: Header=BB11_16 Depth=1
	movq	80(%r15), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movq	%rbx, %rdx
	movq	-56(%rbp), %r8          # 8-byte Reload
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.34, %esi
	movl	$.L.str.30, %ecx
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB11_16:                              # =>This Inner Loop Header: Depth=1
	movl	(%r15), %ebx
	cmpl	$12, %ebx
	jle	.LBB11_17
# %bb.21:                               #   in Loop: Header=BB11_16 Depth=1
	cmpl	$13, %ebx
	je	.LBB11_19
# %bb.22:                               #   in Loop: Header=BB11_16 Depth=1
	cmpl	$91, %ebx
	je	.LBB11_28
# %bb.23:                               #   in Loop: Header=BB11_16 Depth=1
	cmpl	$93, %ebx
	jne	.LBB11_65
# %bb.24:                               #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	skip_sep
	cmpl	%r13d, %eax
	jne	.LBB11_16
	jmp	.LBB11_25
	.p2align	4, 0x90
.LBB11_17:                              #   in Loop: Header=BB11_16 Depth=1
	cmpl	$-1, %ebx
	je	.LBB11_27
# %bb.18:                               #   in Loop: Header=BB11_16 Depth=1
	cmpl	$10, %ebx
	jne	.LBB11_65
.LBB11_19:                              #   in Loop: Header=BB11_16 Depth=1
	movq	72(%r15), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB11_20
# %bb.57:                               #   in Loop: Header=BB11_16 Depth=1
	cmpq	%r12, %rdx
	jbe	.LBB11_59
# %bb.58:                               #   in Loop: Header=BB11_16 Depth=1
	movq	80(%r15), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r12
	movq	%r12, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB11_59:                              #   in Loop: Header=BB11_16 Depth=1
	leaq	(%rdx,%rdx), %r12
	movq	56(%r15), %rdi
	cmpq	$-2, %r12
	jne	.LBB11_60
# %bb.61:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaM_toobig
	jmp	.LBB11_62
.LBB11_28:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%r15, %rdi
	callq	skip_sep
	cmpl	%r13d, %eax
	jne	.LBB11_16
# %bb.29:                               #   in Loop: Header=BB11_16 Depth=1
	movl	(%r15), %ebx
	movq	72(%r15), %r13
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB11_30
# %bb.31:                               #   in Loop: Header=BB11_16 Depth=1
	cmpq	%r12, %rdx
	jbe	.LBB11_33
# %bb.32:                               #   in Loop: Header=BB11_16 Depth=1
	movq	80(%r15), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r12
	movq	%r12, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdx
.LBB11_33:                              #   in Loop: Header=BB11_16 Depth=1
	leaq	(%rdx,%rdx), %r12
	movq	56(%r15), %rdi
	cmpq	$-2, %r12
	jne	.LBB11_34
# %bb.35:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaM_toobig
	jmp	.LBB11_36
.LBB11_65:                              #   in Loop: Header=BB11_16 Depth=1
	testq	%r14, %r14
	je	.LBB11_78
# %bb.66:                               #   in Loop: Header=BB11_16 Depth=1
	movq	72(%r15), %r13
	movq	8(%r13), %rcx
	movq	16(%r13), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB11_67
# %bb.68:                               #   in Loop: Header=BB11_16 Depth=1
	cmpq	%r12, %rdx
	jbe	.LBB11_70
# %bb.69:                               #   in Loop: Header=BB11_16 Depth=1
	movq	80(%r15), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %r12
	movq	%r12, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdx
.LBB11_70:                              #   in Loop: Header=BB11_16 Depth=1
	leaq	(%rdx,%rdx), %r12
	movq	56(%r15), %rdi
	cmpq	$-2, %r12
	jne	.LBB11_71
# %bb.72:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaM_toobig
	jmp	.LBB11_73
.LBB11_20:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%rbx), %rax
	jmp	.LBB11_63
.LBB11_60:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%rbx), %rsi
	movq	%r12, %rcx
	callq	luaM_realloc_
.LBB11_62:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rax, (%rbx)
	movq	%r12, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
	movabsq	$9223372036854775805, %r12 # imm = 0x7FFFFFFFFFFFFFFD
.LBB11_63:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rsi, 8(%rbx)
	movb	$10, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	inclinenumber
	testq	%r14, %r14
	jne	.LBB11_16
# %bb.64:                               #   in Loop: Header=BB11_16 Depth=1
	movq	72(%r15), %rax
	movq	$0, 8(%rax)
	jmp	.LBB11_16
.LBB11_78:                              #   in Loop: Header=BB11_16 Depth=1
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB11_79
# %bb.80:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaZ_fill
	movl	%eax, (%r15)
	jmp	.LBB11_16
.LBB11_67:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%r13), %rax
	jmp	.LBB11_74
.LBB11_30:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%r13), %rax
	jmp	.LBB11_37
.LBB11_79:                              #   in Loop: Header=BB11_16 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
	movl	%eax, (%r15)
	jmp	.LBB11_16
.LBB11_71:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%r13), %rsi
	movq	%r12, %rcx
	callq	luaM_realloc_
.LBB11_73:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rax, (%r13)
	movq	%r12, 16(%r13)
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rsi
	movabsq	$9223372036854775805, %r12 # imm = 0x7FFFFFFFFFFFFFFD
.LBB11_74:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rsi, 8(%r13)
	movb	%bl, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB11_75
# %bb.77:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaZ_fill
	jmp	.LBB11_76
.LBB11_75:                              #   in Loop: Header=BB11_16 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB11_76:                              #   in Loop: Header=BB11_16 Depth=1
	movl	%eax, (%r15)
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB11_16
.LBB11_34:                              #   in Loop: Header=BB11_16 Depth=1
	movq	(%r13), %rsi
	movq	%r12, %rcx
	callq	luaM_realloc_
.LBB11_36:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rax, (%r13)
	movq	%r12, 16(%r13)
	movq	8(%r13), %rcx
	leaq	1(%rcx), %rsi
	movabsq	$9223372036854775805, %r12 # imm = 0x7FFFFFFFFFFFFFFD
.LBB11_37:                              #   in Loop: Header=BB11_16 Depth=1
	movq	%rsi, 8(%r13)
	movb	%bl, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB11_38
# %bb.39:                               #   in Loop: Header=BB11_16 Depth=1
	callq	luaZ_fill
	jmp	.LBB11_40
.LBB11_38:                              #   in Loop: Header=BB11_16 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB11_40:                              #   in Loop: Header=BB11_16 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	movl	%eax, (%r15)
	testl	%r13d, %r13d
	jne	.LBB11_16
# %bb.41:                               #   in Loop: Header=BB11_16 Depth=1
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	movl	$91, %edx
	callq	luaX_lexerror
	jmp	.LBB11_16
.LBB11_25:
	movl	(%r15), %r13d
	movq	72(%r15), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB11_26
# %bb.42:
	cmpq	%r12, %rdx
	jbe	.LBB11_44
# %bb.43:
	movq	80(%r15), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r12
	movl	$80, %edx
	movq	%r12, %rdi
	callq	luaO_chunkid
	movq	56(%r15), %rdi
	movl	4(%r15), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r15), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB11_44:
	leaq	(%rdx,%rdx), %r12
	movq	56(%r15), %rdi
	cmpq	$-2, %r12
	jne	.LBB11_45
# %bb.46:
	callq	luaM_toobig
	jmp	.LBB11_47
.LBB11_26:
	movq	(%rbx), %rax
	jmp	.LBB11_48
.LBB11_45:
	movq	(%rbx), %rsi
	movq	%r12, %rcx
	callq	luaM_realloc_
.LBB11_47:
	movq	%rax, (%rbx)
	movq	%r12, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB11_48:
	movq	%rsi, 8(%rbx)
	movb	%r13b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r15), %rdi
	subq	$1, (%rdi)
	jae	.LBB11_49
# %bb.50:
	callq	luaZ_fill
	jmp	.LBB11_51
.LBB11_49:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB11_51:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%eax, (%r15)
	testq	%r14, %r14
	je	.LBB11_56
# %bb.52:
	movq	56(%r15), %r12
	movq	72(%r15), %rax
	movslq	%edi, %rcx
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	addq	%rcx, %rsi
	addq	$2, %rsi
	leal	(%rdi,%rdi), %eax
	addl	$4, %eax
	cltq
	subq	%rax, %rdx
	movq	%r12, %rdi
	callq	luaS_newlstr
	movq	%rax, %rbx
	movq	48(%r15), %rax
	movq	8(%rax), %rsi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	luaH_setstr
	cmpl	$0, 8(%rax)
	jne	.LBB11_55
# %bb.53:
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	movq	32(%r12), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB11_55
# %bb.54:
	movq	%r12, %rdi
	callq	luaC_step
.LBB11_55:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%r14)
.LBB11_56:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	read_long_string, .Lfunc_end11-read_long_string
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function read_numeral
.LCPI12_0:
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.byte	46                      # 0x2e
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.zero	1
	.text
	.p2align	4, 0x90
	.type	read_numeral,@function
read_numeral:                           # @read_numeral
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r12
	movl	(%rdi), %r13d
	leaq	-144(%rbp), %r15
	.p2align	4, 0x90
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB12_2
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB12_5
# %bb.4:                                #   in Loop: Header=BB12_1 Depth=1
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	leaq	(%rdx,%rdx), %r14
	movq	56(%r12), %rdi
	cmpq	$-2, %r14
	jne	.LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_1 Depth=1
	callq	luaM_toobig
	jmp	.LBB12_8
	.p2align	4, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	movq	(%rbx), %rax
	jmp	.LBB12_9
	.p2align	4, 0x90
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	movq	(%rbx), %rsi
	movq	%r14, %rcx
	callq	luaM_realloc_
.LBB12_8:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB12_9:                               #   in Loop: Header=BB12_1 Depth=1
	movq	%rsi, 8(%rbx)
	movb	%r13b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r12), %rdi
	subq	$1, (%rdi)
	jae	.LBB12_10
# %bb.11:                               #   in Loop: Header=BB12_1 Depth=1
	callq	luaZ_fill
	jmp	.LBB12_12
	.p2align	4, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_1 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_12:                              #   in Loop: Header=BB12_1 Depth=1
	movl	%eax, (%r12)
	callq	__locale_ctype_ptr
	movslq	(%r12), %r13
	movzbl	1(%rax,%r13), %eax
	andb	$4, %al
	cmpq	$46, %r13
	je	.LBB12_1
# %bb.13:                               #   in Loop: Header=BB12_1 Depth=1
	testb	%al, %al
	jne	.LBB12_1
# %bb.14:
	movl	$.L.str.44, %edi
	movl	%r13d, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB12_39
# %bb.15:
	movl	(%r12), %r14d
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB12_16
# %bb.17:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB12_19
# %bb.18:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB12_19:
	leaq	(%rdx,%rdx), %r15
	movq	56(%r12), %rdi
	cmpq	$-2, %r15
	jne	.LBB12_20
# %bb.21:
	callq	luaM_toobig
	jmp	.LBB12_22
.LBB12_16:
	movq	(%rbx), %rax
	jmp	.LBB12_23
.LBB12_20:
	movq	(%rbx), %rsi
	movq	%r15, %rcx
	callq	luaM_realloc_
.LBB12_22:
	movq	%rax, (%rbx)
	movq	%r15, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB12_23:
	movq	%rsi, 8(%rbx)
	movb	%r14b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r12), %rdi
	subq	$1, (%rdi)
	jae	.LBB12_24
# %bb.25:
	callq	luaZ_fill
	movl	%eax, %esi
	jmp	.LBB12_26
.LBB12_24:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %esi
.LBB12_26:
	movl	%esi, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.45, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB12_39
# %bb.27:
	movl	(%r12), %r14d
	movq	72(%r12), %rbx
	movq	8(%rbx), %rcx
	movq	16(%rbx), %rdx
	leaq	1(%rcx), %rsi
	cmpq	%rdx, %rsi
	jbe	.LBB12_28
# %bb.29:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB12_31
# %bb.30:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
.LBB12_31:
	leaq	(%rdx,%rdx), %r15
	movq	56(%r12), %rdi
	cmpq	$-2, %r15
	jne	.LBB12_32
# %bb.33:
	callq	luaM_toobig
	jmp	.LBB12_34
.LBB12_28:
	movq	(%rbx), %rax
	jmp	.LBB12_35
.LBB12_32:
	movq	(%rbx), %rsi
	movq	%r15, %rcx
	callq	luaM_realloc_
.LBB12_34:
	movq	%rax, (%rbx)
	movq	%r15, 16(%rbx)
	movq	8(%rbx), %rcx
	leaq	1(%rcx), %rsi
.LBB12_35:
	movq	%rsi, 8(%rbx)
	movb	%r14b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r12), %rdi
	subq	$1, (%rdi)
	jae	.LBB12_36
# %bb.37:
	callq	luaZ_fill
	jmp	.LBB12_38
.LBB12_36:
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_38:
	movl	%eax, (%r12)
.LBB12_39:
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	(%r12), %r15
	movq	72(%r12), %r14
	leaq	8(%r14), %r13
	movq	8(%r14), %rcx
	movq	16(%r14), %rdx
	leaq	1(%rcx), %rsi
	leaq	16(%r14), %r8
	cmpq	%rdx, %rsi
	seta	%bl
	cmpq	$95, %r15
	je	.LBB12_41
# %bb.40:
	movb	1(%rax,%r15), %al
	andb	$7, %al
	je	.LBB12_54
	.p2align	4, 0x90
.LBB12_41:                              # =>This Inner Loop Header: Depth=1
	testb	$1, %bl
	je	.LBB12_42
# %bb.43:                               #   in Loop: Header=BB12_41 Depth=1
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	movq	%r8, %r13
	jbe	.LBB12_45
# %bb.44:                               #   in Loop: Header=BB12_41 Depth=1
	movq	80(%r12), %rsi
	addq	$24, %rsi
	movl	$80, %edx
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movq	%r13, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rdx
.LBB12_45:                              #   in Loop: Header=BB12_41 Depth=1
	leaq	(%rdx,%rdx), %rbx
	movq	56(%r12), %rdi
	cmpq	$-2, %rbx
	jne	.LBB12_46
# %bb.47:                               #   in Loop: Header=BB12_41 Depth=1
	callq	luaM_toobig
	jmp	.LBB12_48
	.p2align	4, 0x90
.LBB12_42:                              #   in Loop: Header=BB12_41 Depth=1
	movq	(%r14), %rax
	jmp	.LBB12_49
	.p2align	4, 0x90
.LBB12_46:                              #   in Loop: Header=BB12_41 Depth=1
	movq	(%r14), %rsi
	movq	%rbx, %rcx
	callq	luaM_realloc_
.LBB12_48:                              #   in Loop: Header=BB12_41 Depth=1
	movq	%rax, (%r14)
	movq	%rbx, (%r13)
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	(%r13), %rcx
	leaq	1(%rcx), %rsi
.LBB12_49:                              #   in Loop: Header=BB12_41 Depth=1
	movq	%rsi, (%r13)
	movb	%r15b, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%r12), %rdi
	subq	$1, (%rdi)
	jae	.LBB12_50
# %bb.51:                               #   in Loop: Header=BB12_41 Depth=1
	callq	luaZ_fill
	jmp	.LBB12_52
	.p2align	4, 0x90
.LBB12_50:                              #   in Loop: Header=BB12_41 Depth=1
	movq	8(%rdi), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rdi)
	movzbl	(%rax), %eax
.LBB12_52:                              #   in Loop: Header=BB12_41 Depth=1
	movl	%eax, (%r12)
	callq	__locale_ctype_ptr
	movslq	(%r12), %r15
	movzbl	1(%rax,%r15), %eax
	andb	$7, %al
	movq	72(%r12), %r14
	leaq	8(%r14), %r13
	movq	8(%r14), %rcx
	movq	16(%r14), %rdx
	leaq	1(%rcx), %rsi
	leaq	16(%r14), %r8
	cmpq	%rdx, %rsi
	seta	%bl
	cmpq	$95, %r15
	je	.LBB12_41
# %bb.53:                               #   in Loop: Header=BB12_41 Depth=1
	testb	%al, %al
	jne	.LBB12_41
.LBB12_54:
	testb	%bl, %bl
	je	.LBB12_55
# %bb.56:
	movabsq	$9223372036854775805, %rax # imm = 0x7FFFFFFFFFFFFFFD
	cmpq	%rax, %rdx
	jbe	.LBB12_58
# %bb.57:
	movq	80(%r12), %rsi
	addq	$24, %rsi
	leaq	-144(%rbp), %r15
	movl	$80, %edx
	movq	%r15, %rdi
	movq	%r8, %rbx
	callq	luaO_chunkid
	movq	56(%r12), %rdi
	movl	4(%r12), %ecx
	movl	$.L.str.33, %esi
	movl	$.L.str.35, %r8d
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movq	56(%r12), %rdi
	movl	$3, %esi
	callq	luaD_throw
	movq	%rbx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdx
.LBB12_58:
	leaq	(%rdx,%rdx), %rbx
	movq	56(%r12), %rdi
	cmpq	$-2, %rbx
	jne	.LBB12_59
# %bb.60:
	movq	%r8, %r15
	callq	luaM_toobig
	jmp	.LBB12_61
.LBB12_55:
	movq	(%r14), %rax
	jmp	.LBB12_62
.LBB12_59:
	movq	(%r14), %rsi
	movq	%rbx, %rcx
	movq	%r8, %r15
	callq	luaM_realloc_
.LBB12_61:
	movq	%r15, %rcx
	movq	%rax, (%r14)
	movq	%rbx, (%r15)
	movq	(%r13), %rcx
	leaq	1(%rcx), %rsi
.LBB12_62:
	movq	%rsi, (%r13)
	movb	$0, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%r12), %rax
	movq	(%rax), %rdi
	movq	8(%rax), %r9
	testq	%r9, %r9
	je	.LBB12_63
# %bb.64:
	movb	88(%r12), %al
	cmpq	$8, %r9
	jae	.LBB12_66
# %bb.65:
	movq	%r9, %rcx
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB12_85
.LBB12_63:
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB12_89
.LBB12_66:
	movq	%r9, %r8
	andq	$-8, %r8
	movl	%r9d, %ecx
	andl	$7, %ecx
	movq	%r8, %r10
	negq	%r10
	leaq	(%r9,%rdi), %rbx
	addq	$-8, %rbx
	xorl	%edx, %edx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI12_0(%rip), %xmm1  # xmm1 = <46,46,46,46,46,46,46,46,u,u,u,u,u,u,u,u>
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB12_67
	.p2align	4, 0x90
.LBB12_83:                              #   in Loop: Header=BB12_67 Depth=1
	addq	$-8, %rdx
	cmpq	%rdx, %r10
	je	.LBB12_84
.LBB12_67:                              # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rdx), %xmm2      # xmm2 = mem[0],zero
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm2
	movd	%xmm2, %esi
	testb	$1, %sil
	je	.LBB12_69
# %bb.68:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 7(%rbx,%rdx)
.LBB12_69:                              #   in Loop: Header=BB12_67 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movd	%xmm3, %esi
	shrl	$16, %esi
	testb	$1, %sil
	je	.LBB12_71
# %bb.70:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 6(%rbx,%rdx)
.LBB12_71:                              #   in Loop: Header=BB12_67 Depth=1
	pextrw	$1, %xmm2, %esi
	testb	$1, %sil
	je	.LBB12_73
# %bb.72:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 5(%rbx,%rdx)
.LBB12_73:                              #   in Loop: Header=BB12_67 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$3, %xmm3, %esi
	testb	$1, %sil
	je	.LBB12_75
# %bb.74:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 4(%rbx,%rdx)
.LBB12_75:                              #   in Loop: Header=BB12_67 Depth=1
	pextrw	$2, %xmm2, %esi
	testb	$1, %sil
	je	.LBB12_77
# %bb.76:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 3(%rbx,%rdx)
.LBB12_77:                              #   in Loop: Header=BB12_67 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$5, %xmm3, %esi
	testb	$1, %sil
	je	.LBB12_79
# %bb.78:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 2(%rbx,%rdx)
.LBB12_79:                              #   in Loop: Header=BB12_67 Depth=1
	pextrw	$3, %xmm2, %esi
	testb	$1, %sil
	je	.LBB12_81
# %bb.80:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, 1(%rbx,%rdx)
.LBB12_81:                              #   in Loop: Header=BB12_67 Depth=1
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pextrw	$7, %xmm2, %esi
	testb	$1, %sil
	je	.LBB12_83
# %bb.82:                               #   in Loop: Header=BB12_67 Depth=1
	movb	%al, (%rbx,%rdx)
	jmp	.LBB12_83
.LBB12_84:
	cmpq	%r8, %r9
	jne	.LBB12_85
.LBB12_88:
	movq	72(%r12), %rax
	movq	(%rax), %rdi
.LBB12_89:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	luaO_str2d
	testl	%eax, %eax
	jne	.LBB12_147
# %bb.90:
	callq	localeconv
	movb	88(%r12), %r11b
	testq	%rax, %rax
	je	.LBB12_91
# %bb.92:
	movq	(%rax), %rax
	movb	(%rax), %al
	jmp	.LBB12_93
	.p2align	4, 0x90
.LBB12_87:                              #   in Loop: Header=BB12_85 Depth=1
	movq	%rdx, %rcx
	testq	%rdx, %rdx
	je	.LBB12_88
.LBB12_85:                              # =>This Inner Loop Header: Depth=1
	leaq	-1(%rcx), %rdx
	cmpb	$46, -1(%rdi,%rcx)
	jne	.LBB12_87
# %bb.86:                               #   in Loop: Header=BB12_85 Depth=1
	movb	%al, -1(%rdi,%rcx)
	jmp	.LBB12_87
.LBB12_91:
	movb	$46, %al
.LBB12_93:
	movb	%al, 88(%r12)
	movq	72(%r12), %rdx
	movq	(%rdx), %rdi
	movq	8(%rdx), %r9
	testq	%r9, %r9
	je	.LBB12_119
# %bb.94:
	cmpq	$8, %r9
	jae	.LBB12_96
# %bb.95:
	movq	%r9, %rdx
	jmp	.LBB12_115
.LBB12_96:
	movq	%r9, %r8
	andq	$-8, %r8
	movl	%r9d, %edx
	andl	$7, %edx
	movzbl	%r11b, %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%r8, %r10
	negq	%r10
	leaq	(%r9,%rdi), %rsi
	addq	$-8, %rsi
	xorl	%ebx, %ebx
	pxor	%xmm1, %xmm1
	jmp	.LBB12_97
	.p2align	4, 0x90
.LBB12_113:                             #   in Loop: Header=BB12_97 Depth=1
	addq	$-8, %rbx
	cmpq	%rbx, %r10
	je	.LBB12_114
.LBB12_97:                              # =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rbx), %xmm2      # xmm2 = mem[0],zero
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm2
	pcmpeqb	%xmm0, %xmm2
	movd	%xmm2, %ecx
	testb	$1, %cl
	je	.LBB12_99
# %bb.98:                               #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 7(%rsi,%rbx)
.LBB12_99:                              #   in Loop: Header=BB12_97 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movd	%xmm3, %ecx
	shrl	$16, %ecx
	testb	$1, %cl
	je	.LBB12_101
# %bb.100:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 6(%rsi,%rbx)
.LBB12_101:                             #   in Loop: Header=BB12_97 Depth=1
	pextrw	$1, %xmm2, %ecx
	testb	$1, %cl
	je	.LBB12_103
# %bb.102:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 5(%rsi,%rbx)
.LBB12_103:                             #   in Loop: Header=BB12_97 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$3, %xmm3, %ecx
	testb	$1, %cl
	je	.LBB12_105
# %bb.104:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 4(%rsi,%rbx)
.LBB12_105:                             #   in Loop: Header=BB12_97 Depth=1
	pextrw	$2, %xmm2, %ecx
	testb	$1, %cl
	je	.LBB12_107
# %bb.106:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 3(%rsi,%rbx)
.LBB12_107:                             #   in Loop: Header=BB12_97 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$5, %xmm3, %ecx
	testb	$1, %cl
	je	.LBB12_109
# %bb.108:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 2(%rsi,%rbx)
.LBB12_109:                             #   in Loop: Header=BB12_97 Depth=1
	pextrw	$3, %xmm2, %ecx
	testb	$1, %cl
	je	.LBB12_111
# %bb.110:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, 1(%rsi,%rbx)
.LBB12_111:                             #   in Loop: Header=BB12_97 Depth=1
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pextrw	$7, %xmm2, %ecx
	testb	$1, %cl
	je	.LBB12_113
# %bb.112:                              #   in Loop: Header=BB12_97 Depth=1
	movb	%al, (%rsi,%rbx)
	jmp	.LBB12_113
.LBB12_114:
	cmpq	%r8, %r9
	jne	.LBB12_115
.LBB12_118:
	movq	72(%r12), %rax
	movq	(%rax), %rdi
.LBB12_119:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rsi
	callq	luaO_str2d
	testl	%eax, %eax
	jne	.LBB12_146
# %bb.120:
	movq	72(%r12), %rcx
	movq	8(%rcx), %r9
	testq	%r9, %r9
	je	.LBB12_145
# %bb.121:
	movb	88(%r12), %al
	movq	(%rcx), %rcx
	cmpq	$8, %r9
	jae	.LBB12_123
# %bb.122:
	movq	%r9, %rdx
	jmp	.LBB12_142
	.p2align	4, 0x90
.LBB12_117:                             #   in Loop: Header=BB12_115 Depth=1
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB12_118
.LBB12_115:                             # =>This Inner Loop Header: Depth=1
	leaq	-1(%rdx), %rsi
	cmpb	%r11b, -1(%rdi,%rdx)
	jne	.LBB12_117
# %bb.116:                              #   in Loop: Header=BB12_115 Depth=1
	movb	%al, -1(%rdi,%rdx)
	jmp	.LBB12_117
.LBB12_123:
	movq	%r9, %r8
	andq	$-8, %r8
	movl	%r9d, %edx
	andl	$7, %edx
	movzbl	%al, %esi
	movd	%esi, %xmm0
	punpcklbw	%xmm0, %xmm0    # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%r8, %r10
	negq	%r10
	leaq	(%r9,%rcx), %rbx
	addq	$-8, %rbx
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	jmp	.LBB12_124
	.p2align	4, 0x90
.LBB12_140:                             #   in Loop: Header=BB12_124 Depth=1
	addq	$-8, %rsi
	cmpq	%rsi, %r10
	je	.LBB12_141
.LBB12_124:                             # =>This Inner Loop Header: Depth=1
	movq	(%rbx,%rsi), %xmm2      # xmm2 = mem[0],zero
	punpcklbw	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1],xmm2[2],xmm1[2],xmm2[3],xmm1[3],xmm2[4],xmm1[4],xmm2[5],xmm1[5],xmm2[6],xmm1[6],xmm2[7],xmm1[7]
	pshufd	$78, %xmm2, %xmm2       # xmm2 = xmm2[2,3,0,1]
	pshuflw	$27, %xmm2, %xmm2       # xmm2 = xmm2[3,2,1,0,4,5,6,7]
	pshufhw	$27, %xmm2, %xmm2       # xmm2 = xmm2[0,1,2,3,7,6,5,4]
	packuswb	%xmm0, %xmm2
	pcmpeqb	%xmm0, %xmm2
	movd	%xmm2, %edi
	testb	$1, %dil
	je	.LBB12_126
# %bb.125:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 7(%rbx,%rsi)
.LBB12_126:                             #   in Loop: Header=BB12_124 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	movd	%xmm3, %edi
	shrl	$16, %edi
	testb	$1, %dil
	je	.LBB12_128
# %bb.127:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 6(%rbx,%rsi)
.LBB12_128:                             #   in Loop: Header=BB12_124 Depth=1
	pextrw	$1, %xmm2, %edi
	testb	$1, %dil
	je	.LBB12_130
# %bb.129:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 5(%rbx,%rsi)
.LBB12_130:                             #   in Loop: Header=BB12_124 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$3, %xmm3, %edi
	testb	$1, %dil
	je	.LBB12_132
# %bb.131:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 4(%rbx,%rsi)
.LBB12_132:                             #   in Loop: Header=BB12_124 Depth=1
	pextrw	$2, %xmm2, %edi
	testb	$1, %dil
	je	.LBB12_134
# %bb.133:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 3(%rbx,%rsi)
.LBB12_134:                             #   in Loop: Header=BB12_124 Depth=1
	movdqa	%xmm2, %xmm3
	punpcklbw	%xmm0, %xmm3    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1],xmm3[2],xmm0[2],xmm3[3],xmm0[3],xmm3[4],xmm0[4],xmm3[5],xmm0[5],xmm3[6],xmm0[6],xmm3[7],xmm0[7]
	pextrw	$5, %xmm3, %edi
	testb	$1, %dil
	je	.LBB12_136
# %bb.135:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 2(%rbx,%rsi)
.LBB12_136:                             #   in Loop: Header=BB12_124 Depth=1
	pextrw	$3, %xmm2, %edi
	testb	$1, %dil
	je	.LBB12_138
# %bb.137:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, 1(%rbx,%rsi)
.LBB12_138:                             #   in Loop: Header=BB12_124 Depth=1
	punpcklbw	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1],xmm2[2],xmm0[2],xmm2[3],xmm0[3],xmm2[4],xmm0[4],xmm2[5],xmm0[5],xmm2[6],xmm0[6],xmm2[7],xmm0[7]
	pextrw	$7, %xmm2, %edi
	testb	$1, %dil
	je	.LBB12_140
# %bb.139:                              #   in Loop: Header=BB12_124 Depth=1
	movb	$46, (%rbx,%rsi)
	jmp	.LBB12_140
.LBB12_141:
	cmpq	%r8, %r9
	jne	.LBB12_142
.LBB12_145:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.46, %esi
	movq	%r12, %rdi
	movl	$284, %edx              # imm = 0x11C
	callq	luaX_lexerror
.LBB12_146:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_147:
	movl	$42, __A_VARIABLE(%rip)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.p2align	4, 0x90
.LBB12_144:                             #   in Loop: Header=BB12_142 Depth=1
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	je	.LBB12_145
.LBB12_142:                             # =>This Inner Loop Header: Depth=1
	leaq	-1(%rdx), %rsi
	cmpb	%al, -1(%rcx,%rdx)
	jne	.LBB12_144
# %bb.143:                              #   in Loop: Header=BB12_142 Depth=1
	movb	$46, -1(%rcx,%rdx)
	jmp	.LBB12_144
.Lfunc_end12:
	.size	read_numeral, .Lfunc_end12-read_numeral
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
