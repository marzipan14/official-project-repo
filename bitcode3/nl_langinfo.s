	.text
	.file	"nl_langinfo.c"
	.globl	nl_langinfo_l           # -- Begin function nl_langinfo_l
	.p2align	4, 0x90
	.type	nl_langinfo_l,@function
nl_langinfo_l:                          # @nl_langinfo_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
                                        # kill: def $edi killed $edi def $rdi
	cmpl	$84, %edi
	ja	.LBB0_36
# %bb.1:
	movl	$.L.str, %r15d
	movl	%edi, %eax
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_10:
	movslq	%edi, %rax
	movq	_C_time_locale-72(,%rax,8), %r15
	jmp	.LBB0_38
.LBB0_11:
	movslq	%edi, %rax
	movq	_C_time_locale-264(,%rax,8), %r15
	jmp	.LBB0_38
.LBB0_8:
	movslq	%edi, %rax
	movq	_C_time_locale+192(,%rax,8), %r15
	jmp	.LBB0_38
.LBB0_9:
	movslq	%edi, %rax
	movq	_C_time_locale+80(,%rax,8), %r15
.LBB0_38:
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_2:
	movq	_C_time_locale+320(%rip), %r15
	jmp	.LBB0_38
.LBB0_3:
	movq	_C_time_locale+312(%rip), %r15
	jmp	.LBB0_38
.LBB0_4:
	movq	_C_time_locale+304(%rip), %r15
	jmp	.LBB0_38
.LBB0_5:
	movq	_C_time_locale+456(%rip), %r15
	jmp	.LBB0_38
.LBB0_6:
	movq	_C_time_locale+328(%rip), %r15
	jmp	.LBB0_38
.LBB0_7:
	movq	_C_time_locale+336(%rip), %r15
	jmp	.LBB0_38
.LBB0_12:
	movq	_C_time_locale+464(%rip), %r15
	jmp	.LBB0_38
.LBB0_13:
	movq	_C_time_locale+472(%rip), %r15
	jmp	.LBB0_38
.LBB0_14:
	movq	_C_time_locale+480(%rip), %r15
	jmp	.LBB0_38
.LBB0_15:
	movq	_C_time_locale+488(%rip), %r15
	jmp	.LBB0_38
.LBB0_16:
	movq	_C_time_locale+496(%rip), %r15
	jmp	.LBB0_38
.LBB0_18:
	movq	_C_numeric_locale(%rip), %r15
	jmp	.LBB0_38
.LBB0_19:
	movq	_C_numeric_locale+8(%rip), %r15
	jmp	.LBB0_38
.LBB0_20:
	movq	_C_messages_locale(%rip), %r15
	jmp	.LBB0_38
.LBB0_21:
	movq	_C_messages_locale+8(%rip), %r15
	jmp	.LBB0_38
.LBB0_22:
	movq	_C_messages_locale+16(%rip), %r15
	jmp	.LBB0_38
.LBB0_23:
	movq	_C_messages_locale+24(%rip), %r15
	jmp	.LBB0_38
.LBB0_24:
	movq	_C_monetary_locale+8(%rip), %r14
	movl	$.L.str.1, %r15d
	cmpb	$0, (%r14)
	je	.LBB0_38
# %bb.25:
	movq	%rbx, %rdi
	callq	__localeconv_l
	movb	82(%rax), %r12b
	movq	%rbx, %rdi
	callq	__localeconv_l
	cmpb	84(%rax), %r12b
	jne	.LBB0_38
# %bb.26:
	cmpb	$127, %r12b
	jne	.LBB0_29
# %bb.27:
	movq	_C_monetary_locale+16(%rip), %rsi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_38
# %bb.28:
	movb	$46, %r12b
	jmp	.LBB0_30
.LBB0_35:
	movq	_C_time_locale+448(%rip), %r15
	jmp	.LBB0_38
.LBB0_36:
	leal	-100001(%rdi), %eax
	movl	$.L.str.1, %r15d
	cmpl	$5, %eax
	ja	.LBB0_38
# %bb.37:
	movslq	%edi, %rax
	shlq	$5, %rax
	leaq	(%rax,%rbx), %r15
	addq	$-3200000, %r15         # imm = 0xFFCF2C00
	jmp	.LBB0_38
.LBB0_17:
	movq	_C_time_locale+344(%rip), %r15
	jmp	.LBB0_38
.LBB0_29:
	testb	%r12b, %r12b
	setne	%r12b
	addb	%r12b, %r12b
	addb	$43, %r12b
.LBB0_30:
	movq	%r14, %rdi
	callq	strlen
	movq	nl_langinfo_l.csym(%rip), %rdi
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	realloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB0_33
# %bb.31:
	movq	nl_langinfo_l.csym(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB0_33
# %bb.32:
	callq	free
.LBB0_33:
	movq	%rbx, nl_langinfo_l.csym(%rip)
	testq	%rbx, %rbx
	je	.LBB0_38
# %bb.34:
	movb	%r12b, (%rbx)
	addq	$1, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	nl_langinfo_l.csym(%rip), %r15
	jmp	.LBB0_38
.Lfunc_end0:
	.size	nl_langinfo_l, .Lfunc_end0-nl_langinfo_l
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_38
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_8
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_9
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_11
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_16
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_24
	.quad	.LBB0_35
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_36
	.quad	.LBB0_17
                                        # -- End function
	.text
	.globl	nl_langinfo             # -- Begin function nl_langinfo
	.p2align	4, 0x90
	.type	nl_langinfo,@function
nl_langinfo:                            # @nl_langinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %esi
	cmovneq	%rax, %rsi
	movl	%ebx, %edi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	nl_langinfo_l           # TAILCALL
.Lfunc_end1:
	.size	nl_langinfo, .Lfunc_end1-nl_langinfo
                                        # -- End function
	.type	nl_langinfo_l.csym,@object # @nl_langinfo_l.csym
	.local	nl_langinfo_l.csym
	.comm	nl_langinfo_l.csym,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"US-ASCII"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
