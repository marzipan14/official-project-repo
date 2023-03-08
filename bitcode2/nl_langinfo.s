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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
                                        # kill: def $edi killed $edi def $rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$84, %edi
	ja	.LBB0_39
# %bb.1:
	movl	$.L.str, %eax
	movl	%edi, %ecx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rax
	movq	_C_time_locale-72(,%rax,8), %rax
	jmp	.LBB0_42
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rax
	movq	_C_time_locale-264(,%rax,8), %rax
	jmp	.LBB0_42
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rax
	movq	_C_time_locale+192(,%rax,8), %rax
	jmp	.LBB0_42
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rax
	movq	_C_time_locale+80(,%rax,8), %rax
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+320(%rip), %rax
	jmp	.LBB0_42
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+312(%rip), %rax
	jmp	.LBB0_42
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+304(%rip), %rax
	jmp	.LBB0_42
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+456(%rip), %rax
	jmp	.LBB0_42
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+328(%rip), %rax
	jmp	.LBB0_42
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+336(%rip), %rax
	jmp	.LBB0_42
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+464(%rip), %rax
	jmp	.LBB0_42
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+472(%rip), %rax
	jmp	.LBB0_42
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+480(%rip), %rax
	jmp	.LBB0_42
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+488(%rip), %rax
	jmp	.LBB0_42
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+496(%rip), %rax
	jmp	.LBB0_42
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_numeric_locale(%rip), %rax
	jmp	.LBB0_42
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_numeric_locale+8(%rip), %rax
	jmp	.LBB0_42
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_messages_locale(%rip), %rax
	jmp	.LBB0_42
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_messages_locale+8(%rip), %rax
	jmp	.LBB0_42
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_messages_locale+16(%rip), %rax
	jmp	.LBB0_42
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_messages_locale+24(%rip), %rax
	jmp	.LBB0_42
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_monetary_locale+8(%rip), %r14
	cmpb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_24
# %bb.25:
	movq	%rbx, %rdi
	callq	__localeconv_l
	movb	82(%rax), %r15b
	movq	%rbx, %rdi
	callq	__localeconv_l
	movq	%rax, %rcx
	movl	$.L.str.1, %eax
	cmpb	84(%rcx), %r15b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_42
# %bb.26:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$127, %r15b
	jne	.LBB0_29
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_monetary_locale+16(%rip), %rsi
	movq	%r14, %rdi
	callq	strcmp
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_37
# %bb.28:
	movb	$46, %r15b
	jmp	.LBB0_30
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+448(%rip), %rax
	jmp	.LBB0_42
.LBB0_39:
	leal	-100001(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %eax
	cmpl	$5, %ecx
	ja	.LBB0_42
# %bb.40:
	movslq	%edi, %rax
	shlq	$5, %rax
	addq	%rbx, %rax
	addq	$-3200000, %rax         # imm = 0xFFCF2C00
	jmp	.LBB0_43
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movq	_C_time_locale+344(%rip), %rax
	jmp	.LBB0_42
.LBB0_24:
	movl	$.L.str.1, %eax
	jmp	.LBB0_43
.LBB0_29:
	testb	%r15b, %r15b
	setne	%r15b
	addb	%r15b, %r15b
	addb	$43, %r15b
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	strlen
	movq	nl_langinfo_l.csym(%rip), %rdi
	addl	$2, %eax
	movslq	%eax, %rsi
	callq	realloc
	movq	%rax, %rbx
	movq	nl_langinfo_l.csym(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_33
# %bb.31:
	testq	%rdi, %rdi
	je	.LBB0_33
# %bb.32:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_33:
	movq	%rbx, nl_langinfo_l.csym(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_34
# %bb.35:
	movb	%r15b, (%rbx)
	addq	$1, %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcpy
	movq	nl_langinfo_l.csym(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_36
.LBB0_34:
	movl	$.L.str.1, %eax
.LBB0_36:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_42
.Lfunc_end0:
	.size	nl_langinfo_l, .Lfunc_end0-nl_langinfo_l
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_42
	.quad	.LBB0_41
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_4
	.quad	.LBB0_5
	.quad	.LBB0_6
	.quad	.LBB0_7
	.quad	.LBB0_7
	.quad	.LBB0_7
	.quad	.LBB0_7
	.quad	.LBB0_7
	.quad	.LBB0_7
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
	.quad	.LBB0_12
	.quad	.LBB0_13
	.quad	.LBB0_14
	.quad	.LBB0_15
	.quad	.LBB0_17
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
	.quad	.LBB0_23
	.quad	.LBB0_38
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_39
	.quad	.LBB0_16
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
	movq	72(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %esi
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %edi
	callq	nl_langinfo_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
