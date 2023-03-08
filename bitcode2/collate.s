	.text
	.file	"collate.c"
	.globl	__collate_load_tables   # -- Begin function __collate_load_tables
	.p2align	4, 0x90
	.type	__collate_load_tables,@function
__collate_load_tables:                  # @__collate_load_tables
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movl	__collate_load_error(%rip), %r15d
	movl	$1, __collate_load_error(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_16
# %bb.1:
	movq	%rdi, %rbx
	movl	$.L.str, %esi
	callq	strcmp
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_18
# %bb.2:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_18
# %bb.3:
	movq	_PathLocale(%rip), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_16
# %bb.4:
	leaq	-1056(%rbp), %r14
	movq	%r14, %rdi
	callq	strcpy
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	strcat
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcat
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.4, %esi
	movq	%r14, %rdi
	callq	fopen
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_16
# %bb.5:
	movq	%rax, %rbx
	movl	$__collate_version, %edi
	movl	$10, %esi
	movl	$1, %edx
	movq	%rax, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB0_19
# %bb.6:
	movl	$__collate_version, %edi
	movl	$.L.str.5, %esi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_19
# %bb.7:
	movl	$__collate_substitute_table, %edi
	movl	$2560, %esi             # imm = 0xA00
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB0_19
# %bb.8:
	movl	$__collate_char_pri_table, %edi
	movl	$2048, %esi             # imm = 0x800
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB0_19
# %bb.9:
	movl	$__collate_chain_pri_table, %edi
	movl	$2000, %esi             # imm = 0x7D0
	movl	$1, %edx
	movq	%rbx, %rcx
	callq	fread
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	cmpq	$1, %r15
	jne	.LBB0_18
# %bb.10:
	movl	$0, __collate_load_error(%rip)
	movl	$0, __collate_substitute_nontrivial(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__collate_substitute_table+11, %eax
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movzbl	-11(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$0, -10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_20
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rax), %edx
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jne	.LBB0_20
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$20, %rax
	addq	$1, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	jb	.LBB0_11
	jmp	.LBB0_18
.LBB0_16:
	movl	%r15d, __collate_load_error(%rip)
.LBB0_17:
	movl	$-1, %r14d
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_19:
	movq	%rbx, %rdi
	callq	fclose
	jmp	.LBB0_17
.LBB0_20:
	movl	$1, __collate_substitute_nontrivial(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB0_18
.Lfunc_end0:
	.size	__collate_load_tables, .Lfunc_end0-__collate_load_tables
                                        # -- End function
	.globl	__collate_substitute    # -- Begin function __collate_substitute
	.p2align	4, 0x90
	.type	__collate_substitute,@function
__collate_substitute:                   # @__collate_substitute
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_2
# %bb.1:
	cmpb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
# %bb.4:
	leal	7(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	sarl	$3, %ecx
	addl	%eax, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movslq	%ecx, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_12
# %bb.5:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_10
# %bb.6:                                # %.preheader
	addq	$1, %r15
	xorl	%r12d, %r12d
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, %r13d
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_9:                                #   in Loop: Header=BB1_7 Depth=1
	addq	%r14, %rbx
	movzbl	-1(%r15), %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax), %rsi
	addq	$__collate_substitute_table, %rsi
	movq	%rbx, %rdi
	callq	strcpy
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15), %eax
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_10
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movslq	%r12d, %rbx
	movzbl	%al, %eax
	leaq	(%rax,%rax,4), %rax
	leaq	(%rax,%rax), %rdi
	addq	$__collate_substitute_table, %rdi
	callq	strlen
	movq	%rax, %r12
	addq	%rbx, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r13d
	jg	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leal	(%rax,%r12), %r13d
	movslq	%r13d, %rsi
	movq	%r14, %rdi
	callq	reallocf
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_9
.LBB1_12:
	movl	$.L__FUNCTION__.__collate_substitute, %esi
	movl	$71, %edi
	callq	__collate_err
.LBB1_2:
	movl	$.L.str.6, %edi
	callq	strdup
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_11
# %bb.3:
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_11:
	movl	$.L__FUNCTION__.__collate_strdup, %esi
	movl	$71, %edi
	callq	__collate_err
.Lfunc_end1:
	.size	__collate_substitute, .Lfunc_end1-__collate_substitute
                                        # -- End function
	.globl	__collate_strdup        # -- Begin function __collate_strdup
	.p2align	4, 0x90
	.type	__collate_strdup,@function
__collate_strdup:                       # @__collate_strdup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	strdup
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB2_2:
	movl	$.L__FUNCTION__.__collate_strdup, %esi
	movl	$71, %edi
	callq	__collate_err
.Lfunc_end2:
	.size	__collate_strdup, .Lfunc_end2-__collate_strdup
                                        # -- End function
	.globl	__collate_err           # -- Begin function __collate_err
	.p2align	4, 0x90
	.type	__collate_err,@function
__collate_err:                          # @__collate_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	%edi, %r14d
	callq	__errno
	movl	(%rax), %r15d
	movl	$.L.str.7, %esi
	movl	$15, %edx
	movl	$2, %edi
	callq	write
	movq	%rbx, %rdi
	callq	strlen
	movl	$2, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	movl	$.L.str.8, %esi
	movl	$2, %edx
	movl	$2, %edi
	callq	write
	callq	__getreent
	leaq	-28(%rbp), %rcx
	movq	%rax, %rdi
	movl	%r15d, %esi
	movl	$1, %edx
	callq	_strerror_r
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	strlen
	movl	$2, %edi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	write
	movl	$.L.str.9, %esi
	movl	$1, %edx
	movl	$2, %edi
	callq	write
	movl	%r14d, %edi
	callq	exit
.Lfunc_end3:
	.size	__collate_err, .Lfunc_end3-__collate_err
                                        # -- End function
	.globl	__collate_lookup        # -- Begin function __collate_lookup
	.p2align	4, 0x90
	.type	__collate_lookup,@function
__collate_lookup:                       # @__collate_lookup
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rdi, %r13
	movl	$1, (%rsi)
	movl	$0, (%rcx)
	movl	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, __collate_chain_pri_table(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_5
# %bb.1:                                # %.preheader
	movq	%rsi, %r15
	movl	$__collate_chain_pri_table, %ebx
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	strncmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_3
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 20(%rbx)
	leaq	20(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_2
.LBB4_5:
	movzbl	(%r13), %eax
	movl	__collate_char_pri_table(,%rax,8), %eax
	movl	%eax, (%r12)
	movzbl	(%r13), %eax
	leaq	__collate_char_pri_table+4(,%rax,8), %rbx
	jmp	.LBB4_6
.LBB4_3:
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, (%r15)
	movl	12(%rbx), %eax
	movl	%eax, (%r12)
	addq	$16, %rbx
.LBB4_6:
	movl	(%rbx), %eax
	movl	%eax, (%r14)
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
.Lfunc_end4:
	.size	__collate_lookup, .Lfunc_end4-__collate_lookup
                                        # -- End function
	.type	__collate_load_error,@object # @__collate_load_error
	.data
	.globl	__collate_load_error
	.p2align	2
__collate_load_error:
	.long	1                       # 0x1
	.size	__collate_load_error, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"C"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"POSIX"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"/"
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/LC_COLLATE"
	.size	.L.str.3, 12

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	__collate_version,@object # @__collate_version
	.comm	__collate_version,10,1
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"1.0\n"
	.size	.L.str.5, 5

	.type	__collate_substitute_table,@object # @__collate_substitute_table
	.comm	__collate_substitute_table,2560,16
	.type	__collate_char_pri_table,@object # @__collate_char_pri_table
	.comm	__collate_char_pri_table,2048,16
	.type	__collate_chain_pri_table,@object # @__collate_chain_pri_table
	.comm	__collate_chain_pri_table,2000,16
	.type	__collate_substitute_nontrivial,@object # @__collate_substitute_nontrivial
	.comm	__collate_substitute_nontrivial,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L__FUNCTION__.__collate_substitute,@object # @__FUNCTION__.__collate_substitute
.L__FUNCTION__.__collate_substitute:
	.asciz	"__collate_substitute"
	.size	.L__FUNCTION__.__collate_substitute, 21

	.type	.L__FUNCTION__.__collate_strdup,@object # @__FUNCTION__.__collate_strdup
.L__FUNCTION__.__collate_strdup:
	.asciz	"__collate_strdup"
	.size	.L__FUNCTION__.__collate_strdup, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"collate_error: "
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	": "
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
