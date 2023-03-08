	.text
	.file	"regerror.c"
	.globl	regerror                # -- Begin function regerror
	.p2align	4, 0x90
	.type	regerror,@function
regerror:                               # @regerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %edi
	jne	.LBB0_5
# %bb.1:
	movq	16(%rsi), %r12
	movl	$rerrs, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rdi
	movq	%r12, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 24(%rbx)
	leaq	24(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_5:
	movl	%edi, %edx
	andl	$-257, %edx             # imm = 0xFEFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB0_9
# %bb.6:
	xorl	%eax, %eax
	movl	$rerrs, %ecx
	jmp	.LBB0_42
.LBB0_7:
	movl	(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_13
# %bb.8:
	leaq	-96(%rbp), %r12
	movl	$.L.str.36, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB0_14
.LBB0_13:
	movl	$.L.str.35, %r12d
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_48
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB0_11
# %bb.10:
	xorl	%eax, %eax
	movl	$rerrs+24, %ecx
	jmp	.LBB0_42
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB0_15
# %bb.12:
	xorl	%eax, %eax
	movl	$rerrs+48, %ecx
	jmp	.LBB0_42
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %edx
	jne	.LBB0_17
# %bb.16:
	xorl	%eax, %eax
	movl	$rerrs+72, %ecx
	jmp	.LBB0_42
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %edx
	jne	.LBB0_19
# %bb.18:
	xorl	%eax, %eax
	movl	$rerrs+96, %ecx
	jmp	.LBB0_42
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %edx
	jne	.LBB0_21
# %bb.20:
	xorl	%eax, %eax
	movl	$rerrs+120, %ecx
	jmp	.LBB0_42
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %edx
	jne	.LBB0_23
# %bb.22:
	xorl	%eax, %eax
	movl	$rerrs+144, %ecx
	jmp	.LBB0_42
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %edx
	jne	.LBB0_25
# %bb.24:
	xorl	%eax, %eax
	movl	$rerrs+168, %ecx
	jmp	.LBB0_42
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %edx
	jne	.LBB0_27
# %bb.26:
	xorl	%eax, %eax
	movl	$rerrs+192, %ecx
	jmp	.LBB0_42
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jne	.LBB0_29
# %bb.28:
	xorl	%eax, %eax
	movl	$rerrs+216, %ecx
	jmp	.LBB0_42
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, %edx
	jne	.LBB0_31
# %bb.30:
	xorl	%eax, %eax
	movl	$rerrs+240, %ecx
	jmp	.LBB0_42
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %edx
	jne	.LBB0_33
# %bb.32:
	xorl	%eax, %eax
	movl	$rerrs+264, %ecx
	jmp	.LBB0_42
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$13, %edx
	jne	.LBB0_35
# %bb.34:
	xorl	%eax, %eax
	movl	$rerrs+288, %ecx
	jmp	.LBB0_42
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$14, %edx
	jne	.LBB0_37
# %bb.36:
	xorl	%eax, %eax
	movl	$rerrs+312, %ecx
	jmp	.LBB0_42
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$15, %edx
	jne	.LBB0_39
# %bb.38:
	xorl	%eax, %eax
	movl	$rerrs+336, %ecx
	jmp	.LBB0_42
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %edx
	jne	.LBB0_41
# %bb.40:
	xorl	%eax, %eax
	movl	$rerrs+360, %ecx
	jmp	.LBB0_42
.LBB0_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
	movl	$rerrs+384, %ecx
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %edi              # imm = 0x100
	jne	.LBB0_44
# %bb.43:
	movq	16(%rcx), %r12
	jmp	.LBB0_49
.LBB0_44:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_46
# %bb.45:
	leaq	-96(%rbp), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB0_47
.LBB0_46:
	movq	8(%rcx), %rsi
	leaq	-96(%rbp), %rdi
	callq	strcpy
.LBB0_47:
	leaq	-96(%rbp), %r12
.LBB0_48:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_49:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_54
# %bb.50:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rbx
	jae	.LBB0_52
# %bb.51:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strcpy
	jmp	.LBB0_53
.LBB0_52:
	leaq	-1(%r15), %rdx
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	strncpy
	movb	$0, -1(%r14,%r15)
.LBB0_53:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	regerror, .Lfunc_end0-regerror
                                        # -- End function
	.type	rerrs,@object           # @rerrs
	.section	.rodata,"a",@progbits
	.p2align	4
rerrs:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.1
	.quad	.L.str.2
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
	.long	5                       # 0x5
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	6                       # 0x6
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	8                       # 0x8
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	9                       # 0x9
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	10                      # 0xa
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	11                      # 0xb
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	12                      # 0xc
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	14                      # 0xe
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	15                      # 0xf
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.32
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.size	rerrs, 408

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"REG_0x%x"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"REG_NOMATCH"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"regexec() failed to match"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"REG_BADPAT"
	.size	.L.str.3, 11

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"invalid regular expression"
	.size	.L.str.4, 27

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"REG_ECOLLATE"
	.size	.L.str.5, 13

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid collating element"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"REG_ECTYPE"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"invalid character class"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"REG_EESCAPE"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"trailing backslash (\\)"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"REG_ESUBREG"
	.size	.L.str.11, 12

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"invalid backreference number"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"REG_EBRACK"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"brackets ([ ]) not balanced"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"REG_EPAREN"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"parentheses not balanced"
	.size	.L.str.16, 25

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"REG_EBRACE"
	.size	.L.str.17, 11

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"braces not balanced"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"REG_BADBR"
	.size	.L.str.19, 10

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"invalid repetition count(s)"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"REG_ERANGE"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"invalid character range"
	.size	.L.str.22, 24

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"REG_ESPACE"
	.size	.L.str.23, 11

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"out of memory"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"REG_BADRPT"
	.size	.L.str.25, 11

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"repetition-operator operand invalid"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"REG_EMPTY"
	.size	.L.str.27, 10

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"empty (sub)expression"
	.size	.L.str.28, 22

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"REG_ASSERT"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"\"can't happen\" -- you found a bug"
	.size	.L.str.30, 34

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"REG_INVARG"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalid argument to regex routine"
	.size	.L.str.32, 34

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.zero	1
	.size	.L.str.33, 1

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"*** unknown regexp error code ***"
	.size	.L.str.34, 34

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"0"
	.size	.L.str.35, 2

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%d"
	.size	.L.str.36, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
