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
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorl	%r12d, %r12d
	movq	%rsi, %rax
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpb	$13, %cl
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpb	$32, %cl
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %rax
	cmpb	$10, %cl
	jne	.LBB0_1
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_6:
	testq	%r14, %r14
	je	.LBB0_18
# %bb.7:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_strdup_r
	testq	%rax, %rax
	je	.LBB0_18
# %bb.8:                                # %.preheader1
	movq	%rax, %r15
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_11 Depth=1
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	leal	32(%rbx), %ecx
	cmpb	$1, %al
	movzbl	%cl, %eax
	cmovnel	%ebx, %eax
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	movb	%al, (%r15,%r12)
	addq	$1, %r12
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movsbq	(%r14,%r12), %rbx
	movb	$95, %al
	cmpq	$45, %rbx
	je	.LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	testb	%bl, %bl
	jne	.LBB0_9
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	movq	_iconv_aliases(%rip), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, -56(%rbp)         # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB0_34
# %bb.14:
	cmpb	$0, (%rbx)
	je	.LBB0_34
# %bb.15:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	cmpl	%r13d, -56(%rbp)        # 4-byte Folded Reload
	jg	.LBB0_35
# %bb.16:
	cmpb	$0, (%r15)
	je	.LBB0_35
# %bb.17:
	movslq	%r13d, %rax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	addq	%rbx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movslq	-56(%rbp), %rax         # 4-byte Folded Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB0_21
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB0_5
.LBB0_19:                               #   in Loop: Header=BB0_21 Depth=1
	addq	-64(%rbp), %rbx         # 8-byte Folded Reload
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=1
	subl	-48(%rbp), %r14d        # 4-byte Folded Reload
	addl	%r14d, %r13d
	cmpl	-56(%rbp), %r13d        # 4-byte Folded Reload
	jl	.LBB0_35
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strnstr
	testq	%rax, %rax
	je	.LBB0_35
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rax, %rbx
	movq	%rax, %r14
	cmpq	-48(%rbp), %rax         # 8-byte Folded Reload
	je	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	callq	__locale_ctype_ptr
	movsbq	-1(%r14), %rcx
	cmpq	$10, %rcx
	je	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB0_19
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	addq	-64(%rbp), %rbx         # 8-byte Folded Reload
	cmpq	-80(%rbp), %rbx         # 8-byte Folded Reload
	je	.LBB0_28
# %bb.26:                               #   in Loop: Header=BB0_21 Depth=1
	callq	__locale_ctype_ptr
	movsbq	(%rbx), %rcx
	cmpq	$10, %rcx
	je	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_21 Depth=1
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB0_20
.LBB0_28:
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rbx
	addq	$-1, %r14
	cmpq	%rax, %r14
	jbe	.LBB0_31
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	cmpb	$10, (%r14)
	jne	.LBB0_29
.LBB0_31:
	cmpb	$35, (%rbx)
	jne	.LBB0_36
.LBB0_34:
	xorl	%r12d, %r12d
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	free
	jmp	.LBB0_5
.LBB0_36:                               # %.preheader
	leaq	1(%rbx), %rax
.LBB0_37:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %r12
	callq	__locale_ctype_ptr
	movsbq	(%r12), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB0_40
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	cmpb	$10, %cl
	je	.LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=1
	leaq	1(%r12), %rax
	testb	%cl, %cl
	jne	.LBB0_37
.LBB0_40:
	subq	%rbx, %r12
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_strndup_r
	movq	%rax, %r12
	jmp	.LBB0_35
.Lfunc_end0:
	.size	_iconv_resolve_encoding_name, .Lfunc_end0-_iconv_resolve_encoding_name
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
