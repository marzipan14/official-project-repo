	.text
	.file	"aliasesi.c"
	.globl	_iconv_resolve_encoding_name # -- Begin function _iconv_resolve_encoding_name
	.p2align	4, 0x90
	.type	_iconv_resolve_encoding_name,@function
_iconv_resolve_encoding_name:           # @_iconv_resolve_encoding_name
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	movq	%rsi, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_5
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$32, %cl
	je	.LBB0_23
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$13, %cl
	je	.LBB0_23
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %cl
	jne	.LBB0_1
	jmp	.LBB0_23
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_12
# %bb.6:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	_strdup_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_12
# %bb.7:
	movq	%rax, %r15
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movb	(%r12), %r14b
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB0_13
# %bb.8:                                # %.preheader2
	xorl	%ebx, %ebx
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	movb	%al, (%r15,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r12,%rbx), %r14d
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB0_13
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$95, %al
	cmpb	$45, %r14b
	je	.LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	callq	__locale_ctype_ptr
	movsbq	%r14b, %rcx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	leal	32(%r14), %ecx
	cmpb	$1, %al
	movzbl	%r14b, %edx
	movzbl	%cl, %eax
	cmovnel	%edx, %eax
	jmp	.LBB0_9
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB0_23
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	_iconv_aliases(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_20
# %bb.14:
	cmpb	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_20
# %bb.15:
	cmpb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_20
# %bb.16:
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r12d
	jle	.LBB0_24
.LBB0_20:
	xorl	%r14d, %r14d
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	free
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_24:
	movslq	%r13d, %rax
	addq	%rbx, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movslq	%r12d, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movq	%rbx, %rax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strnstr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_21
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	movq	%rax, %rbx
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-48(%rbp), %rax         # 8-byte Folded Reload
	je	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_25 Depth=1
	callq	__locale_ctype_ptr
	movsbq	-1(%r12), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %cl
	jne	.LBB0_33
.LBB0_29:                               #   in Loop: Header=BB0_25 Depth=1
	addq	-56(%rbp), %rbx         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rbx         # 8-byte Folded Reload
	je	.LBB0_34
# %bb.30:                               #   in Loop: Header=BB0_25 Depth=1
	callq	__locale_ctype_ptr
	movsbq	(%rbx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %cl
	je	.LBB0_34
.LBB0_32:                               #   in Loop: Header=BB0_25 Depth=1
	subl	-48(%rbp), %r12d        # 4-byte Folded Reload
	addl	%r12d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %r12         # 8-byte Reload
	cmpl	%r12d, %r13d
	jge	.LBB0_25
	jmp	.LBB0_21
.LBB0_33:                               #   in Loop: Header=BB0_25 Depth=1
	addq	-56(%rbp), %rbx         # 8-byte Folded Reload
	jmp	.LBB0_32
.LBB0_34:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB0_35:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rbx
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jbe	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_35 Depth=1
	cmpb	$10, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_35
.LBB0_37:
	cmpb	$35, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_39
# %bb.38:
	xorl	%r14d, %r14d
	jmp	.LBB0_22
.LBB0_39:
	leaq	1(%rbx), %r14
	callq	__locale_ctype_ptr
	movsbq	1(%rbx), %rcx
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_44
# %bb.41:                               #   in Loop: Header=BB0_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %cl
	je	.LBB0_44
# %bb.42:                               #   in Loop: Header=BB0_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_40 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movsbq	1(%r14), %rcx
	addq	$1, %r14
	jmp	.LBB0_40
.LBB0_44:
	subq	%rbx, %r14
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_strndup_r
	movq	%rax, %r14
	jmp	.LBB0_21
.Lfunc_end0:
	.size	_iconv_resolve_encoding_name, .Lfunc_end0-_iconv_resolve_encoding_name
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
