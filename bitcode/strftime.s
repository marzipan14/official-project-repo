	.text
	.file	"strftime.c"
	.globl	strftime                # -- Begin function strftime
	.p2align	4, 0x90
	.type	strftime,@function
strftime:                               # @strftime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	cmpq	$0, 72(%rax)
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strftime, .Lfunc_end0-strftime
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __strftime
	.type	__strftime,@function
__strftime:                             # @__strftime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rcx, %r11
	movq	%rdx, %r13
	movq	%rsi, %r10
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1(%rsi), %r8
	xorl	%r9d, %r9d
	leaq	-128(%rbp), %rsi
	xorl	%ecx, %ecx
	xorl	%r15d, %r15d
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_83 Depth 2
                                        #     Child Loop BB1_79 Depth 2
                                        #     Child Loop BB1_29 Depth 2
                                        #     Child Loop BB1_45 Depth 2
                                        #     Child Loop BB1_41 Depth 2
	leaq	(%rdi,%r15), %r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r13,%r14), %eax
	testb	%al, %al
	je	.LBB1_182
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	leaq	(%r15,%r14), %rbx
	cmpb	$37, %al
	je	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_186
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=2
	movb	%al, (%r12,%r14)
	addq	$1, %r14
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movb	1(%r13,%r14), %al
	cmpb	$43, %al
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	cmpb	$48, %al
	jne	.LBB1_9
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	2(%r13,%r14), %dl
	addq	%r14, %r13
	addq	$2, %r13
	jmp	.LBB1_10
.LBB1_9:                                # %._crit_edge110
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r13
	addq	$1, %r13
	movl	%eax, %edx
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	leal	-49(%rdx), %ecx
	cmpb	$8, %cl
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r8, -80(%rbp)          # 8-byte Spill
	ja	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movl	$10, %edx
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	callq	strtoul
	movq	%r13, %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	xorl	%r9d, %r9d
	movq	-128(%rbp), %r13
	movb	(%r13), %dl
	cmpb	$79, %dl
	jne	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	cmpb	$79, %dl
	je	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	cmpb	$69, %dl
	jne	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r13
.LBB1_15:                               #   in Loop: Header=BB1_1 Depth=1
	movsbl	(%r13), %edx
	leal	-37(%rdx), %ecx
	cmpl	$85, %ecx
	ja	.LBB1_186
# %bb.16:                               #   in Loop: Header=BB1_1 Depth=1
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_17:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	cmpb	$107, %dl
	movl	$.L.str.6, %eax
	movl	$.L.str.5, %edx
	cmoveq	%rax, %rdx
	movl	8(%r11), %ecx
	jmp	.LBB1_18
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	movl	8(%r11), %eax
	movl	$12, %ecx
	testl	%eax, %eax
	je	.LBB1_25
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	cmpl	$12, %eax
	je	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rcx
	imulq	$715827883, %rcx, %rcx  # imm = 0x2AAAAAAB
	movq	%rcx, %rsi
	shrq	$63, %rsi
	shrq	$33, %rcx
	addl	%esi, %ecx
	shll	$2, %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, %ecx
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	cmpb	$73, %dl
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB1_18
.LBB1_26:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$11, 8(%r11)
	setg	%al
	movq	_C_time_locale+328(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_58
# %bb.27:                               # %.preheader11
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, %rdx
	xorl	%r15d, %r15d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-128(%rbp), %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	%r14, -96(%rbp)         # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	jmp	.LBB1_29
.LBB1_28:                               #   in Loop: Header=BB1_29 Depth=2
	movb	%al, (%rdi,%rbx)
	addq	$1, %rbx
	addq	$1, %r15
	cmpq	%rdx, %r15
	jae	.LBB1_128
.LBB1_29:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=2
	cmpb	$80, (%r13)
	movzbl	(%r14,%r15), %eax
	jne	.LBB1_28
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=2
	movzbl	%al, %r12d
	movq	%rdi, %r14
	callq	__locale_ctype_ptr
	movq	-136(%rbp), %rdx        # 8-byte Reload
	leaq	-128(%rbp), %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r14, %rdi
	movq	-96(%rbp), %r14         # 8-byte Reload
	xorl	%r9d, %r9d
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	leal	32(%r12), %ecx
	cmpb	$1, %al
	movzbl	%cl, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmovnel	%r12d, %eax
	jmp	.LBB1_28
.LBB1_32:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r15
	movq	%r11, %r12
	movslq	16(%r11), %rax
	movq	_C_time_locale(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_123
# %bb.33:                               # %.preheader5
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	%r12, %r11
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-128(%rbp), %rsi
.LBB1_34:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=2
	movzbl	(%r14,%rcx), %edx
	movb	%dl, (%rdi,%rbx)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_34
	jmp	.LBB1_85
.LBB1_36:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	cmpb	$100, %dl
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movl	12(%r11), %ecx
	jmp	.LBB1_18
.LBB1_37:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jae	.LBB1_188
# %bb.38:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	$37, (%r14,%r12)
	jmp	.LBB1_109
.LBB1_39:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, %r12
	movq	%r10, %r15
	movslq	24(%r11), %rax
	movq	_C_time_locale+248(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_86
# %bb.40:                               # %.preheader2
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	leaq	-128(%rbp), %rsi
.LBB1_41:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.42:                               #   in Loop: Header=BB1_41 Depth=2
	movzbl	(%r14,%rcx), %edx
	movb	%dl, (%rdi,%rbx)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_41
	jmp	.LBB1_85
.LBB1_43:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, %r12
	movq	%r10, %r15
	movslq	16(%r11), %rax
	movq	_C_time_locale+96(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_86
# %bb.44:                               # %.preheader8
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	leaq	-128(%rbp), %rsi
.LBB1_45:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.46:                               #   in Loop: Header=BB1_45 Depth=2
	movzbl	(%r14,%rcx), %edx
	movb	%dl, (%rdi,%rbx)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_45
	jmp	.LBB1_85
.LBB1_47:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	20(%r11), %ebx
	testl	%ebx, %ebx
	js	.LBB1_134
# %bb.48:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%ebx, %eax
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	addl	$19, %r9d
	jmp	.LBB1_135
.LBB1_49:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rbx
	subq	%r15, %rbx
	subq	%r14, %rbx
	movl	12(%r11), %r8d
	movl	16(%r11), %ecx
	addl	$1, %ecx
	movl	20(%r11), %eax
	testl	%eax, %eax
	jns	.LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%ecx, -136(%rbp)        # 4-byte Spill
	callq	abs
	movl	-136(%rbp), %ecx        # 4-byte Reload
	movl	-96(%rbp), %r8d         # 4-byte Reload
.LBB1_51:                               #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %r9
	imulq	$1374389535, %r9, %rax  # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r9d
	movl	$.L.str.7, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	sniprintf
	testl	%eax, %eax
	jns	.LBB1_52
	jmp	.LBB1_188
.LBB1_53:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movb	$37, -128(%rbp)
	movl	-96(%rbp), %ecx         # 4-byte Reload
	testb	%cl, %cl
	movzbl	%cl, %edx
	movl	$43, %ecx
	cmovnel	%edx, %ecx
	movb	%cl, -127(%rbp)
	movl	$10, %edx
	cmovneq	%rax, %rdx
	cmpq	$6, %rdx
	movl	$6, %ecx
	cmovaq	%rdx, %rcx
	leaq	-126(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$-6, %rcx
	je	.LBB1_56
# %bb.54:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$30, %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	sniprintf
	movq	%rbx, %rdi
	testl	%eax, %eax
	jle	.LBB1_56
# %bb.55:                               #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rdi
	addq	%rbx, %rdi
.LBB1_56:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.9, %esi
	callq	strcpy
	addq	%r14, %r12
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%r15, %rsi
	subq	%r14, %rsi
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	__strftime
	testl	%eax, %eax
	jle	.LBB1_188
# %bb.57:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	%r15, %rbx
.LBB1_58:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	jmp	.LBB1_125
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	20(%r11), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	cmpl	$-1900, %eax            # imm = 0xF894
	setl	-81(%rbp)               # 1-byte Folded Spill
	movq	%r11, %rdi
	callq	iso_year_adjust
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	%eax, %esi
	movl	20(%r8), %edi
	testl	%edi, %edi
	js	.LBB1_137
# %bb.60:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%edi, %eax
	imulq	$1374389535, %rax, %r10 # imm = 0x51EB851F
	shrq	$37, %r10
	addl	$19, %r10d
	jmp	.LBB1_140
.LBB1_61:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	4(%r11), %ecx
	jmp	.LBB1_62
.LBB1_63:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	4(%r11), %r8d
	movl	8(%r11), %ecx
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	sniprintf
	testl	%eax, %eax
	jns	.LBB1_21
	jmp	.LBB1_188
.LBB1_64:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	(%r11), %ecx
	jmp	.LBB1_62
.LBB1_65:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	8(%r11), %ecx
	movl	(%r11), %r9d
	movl	4(%r11), %r8d
	movl	$.L.str.14, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	sniprintf
	testl	%eax, %eax
	jns	.LBB1_21
	jmp	.LBB1_188
.LBB1_66:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	28(%r11), %eax
	subl	24(%r11), %eax
	movl	%eax, %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	imulq	$-1840700269, %rcx, %rcx # imm = 0x92492493
	shrq	$32, %rcx
	addl	%eax, %ecx
	addl	$7, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
	jmp	.LBB1_62
.LBB1_67:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rdi
	movq	%r10, %rbx
	callq	iso_year_adjust
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	24(%rsi), %ecx
	subl	$1, %ecx
	movl	$6, %edx
	cmovael	%ecx, %edx
	movl	$1, %ecx
	testl	%eax, %eax
	jg	.LBB1_171
# %bb.68:                               #   in Loop: Header=BB1_1 Depth=1
	movl	28(%rsi), %ecx
	testl	%eax, %eax
	js	.LBB1_167
# %bb.69:                               #   in Loop: Header=BB1_1 Depth=1
	subl	%edx, %ecx
	movl	%ecx, %eax
	addl	$10, %eax
	cltq
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	addl	%eax, %ecx
	addl	$10, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
	jmp	.LBB1_171
.LBB1_70:                               #   in Loop: Header=BB1_1 Depth=1
	movl	24(%r11), %eax
	movl	28(%r11), %ecx
	movl	$1, %edx
	subl	%eax, %edx
	testl	%eax, %eax
	movl	$-6, %eax
	cmovnel	%edx, %eax
	leal	(%rcx,%rax), %edx
	addl	$7, %edx
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	addl	%eax, %ecx
	movslq	%edx, %rax
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	addl	%eax, %ecx
	addl	$7, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	jmp	.LBB1_62
.LBB1_71:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	_C_time_locale+304(%rip), %rdi
	callq	strlen
	movq	_C_time_locale+304(%rip), %rdx
	jmp	.LBB1_111
.LBB1_72:                               #   in Loop: Header=BB1_1 Depth=1
	movl	20(%r11), %edi
	cmpl	$-1901, %edi            # imm = 0xF893
	jg	.LBB1_131
# %bb.73:                               #   in Loop: Header=BB1_1 Depth=1
	movb	$45, -128(%rbp)
	movl	$-1900, %ecx            # imm = 0xF894
	subl	%edi, %ecx
	movb	$1, %dl
	leaq	-127(%rbp), %rdi
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB1_174
.LBB1_74:                               #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 32(%r11)
	js	.LBB1_130
# %bb.75:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, %r15
	movq	%r11, %r12
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	__tz_lock
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB1_77
# %bb.76:                               #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, %eax
.LBB1_77:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	xorl	%eax, %eax
	cmpl	$0, 32(%r12)
	setg	%al
	movq	_tzname(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_163
# %bb.78:                               # %.preheader14
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdi
.LBB1_79:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %rbx
	jae	.LBB1_187
# %bb.80:                               #   in Loop: Header=BB1_79 Depth=2
	movzbl	(%r14,%rcx), %edx
	movb	%dl, (%rsi,%rbx)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_79
	jmp	.LBB1_164
.LBB1_81:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r8, %r12
	movq	%r10, %r15
	movslq	24(%r11), %rax
	movq	_C_time_locale+192(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB1_86
# %bb.82:                               # %.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	leaq	-128(%rbp), %rsi
.LBB1_83:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.84:                               #   in Loop: Header=BB1_83 Depth=2
	movzbl	(%r14,%rcx), %edx
	movb	%dl, (%rdi,%rbx)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB1_83
.LBB1_85:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB1_127
.LBB1_86:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r12, %r8
	jmp	.LBB1_126
.LBB1_87:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	_C_time_locale+320(%rip), %rdi
	callq	strlen
	movq	_C_time_locale+320(%rip), %rdx
	jmp	.LBB1_111
.LBB1_88:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rbx
	movq	%r11, %rdi
	callq	iso_year_adjust
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edi
	movl	20(%rsi), %eax
	testl	%eax, %eax
	jns	.LBB1_90
# %bb.89:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%edi, -72(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	callq	abs
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB1_90:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	testl	%edi, %edi
	js	.LBB1_146
# %bb.91:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%edi, %edi
	je	.LBB1_165
# %bb.92:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$-1, %ecx
	movl	$-1900, %edx            # imm = 0xF894
	jmp	.LBB1_147
.LBB1_93:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	28(%r11), %ecx
	addl	$1, %ecx
	movl	$.L.str.11, %edx
	jmp	.LBB1_18
.LBB1_94:                               #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	16(%r11), %ecx
	addl	$1, %ecx
.LBB1_62:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.5, %edx
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %rdi
.LBB1_19:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	%r10, %r12
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	callq	sniprintf
	testl	%eax, %eax
	js	.LBB1_188
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	%r15, %rbx
	cmpq	%r12, %r15
	movl	$0, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %r10
.LBB1_181:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-128(%rbp), %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jb	.LBB1_128
	jmp	.LBB1_188
.LBB1_95:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jae	.LBB1_188
# %bb.96:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	$10, (%r14,%r12)
	jmp	.LBB1_109
.LBB1_97:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	_C_time_locale+456(%rip), %rdi
	callq	strlen
	movq	_C_time_locale+456(%rip), %rdx
	jmp	.LBB1_111
.LBB1_98:                               #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 32(%r11)
	js	.LBB1_148
# %bb.99:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %rbx
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	__tz_lock
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB1_101
# %bb.100:                              #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, %eax
.LBB1_101:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	__gettzinfo
	xorl	%ecx, %ecx
	cmpl	$0, 32(%rbx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	xorl	%ebx, %ebx
	subq	40(%rax,%rcx,8), %rbx
	callq	__tz_unlock
	movq	%rbx, %r8
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_149
.LBB1_102:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jae	.LBB1_188
# %bb.103:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	$9, (%r14,%r12)
	jmp	.LBB1_109
.LBB1_104:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB1_188
# %bb.105:                              #   in Loop: Header=BB1_1 Depth=1
	movl	24(%r11), %eax
	testl	%eax, %eax
	je	.LBB1_152
# %bb.106:                              #   in Loop: Header=BB1_1 Depth=1
	addb	$48, %al
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	%al, (%r14,%r12)
	jmp	.LBB1_153
.LBB1_107:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %rbx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jae	.LBB1_188
# %bb.108:                              #   in Loop: Header=BB1_1 Depth=1
	movb	24(%r11), %al
	addb	$48, %al
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	%al, (%r14,%r12)
.LBB1_109:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_128
.LBB1_110:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	_C_time_locale+312(%rip), %rdi
	callq	strlen
	movq	_C_time_locale+312(%rip), %rdx
.LBB1_111:                              #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, (%rdx)
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	je	.LBB1_114
# %bb.112:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, -72(%rbp)         # 8-byte Spill
	subq	%r15, %r10
	subq	%r14, %r10
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r11, %r12
	movq	%r11, %rcx
	callq	__strftime
	testl	%eax, %eax
	jle	.LBB1_188
# %bb.113:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	%r15, %rbx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_124
.LBB1_114:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_125
.LBB1_115:                              #   in Loop: Header=BB1_1 Depth=1
	movl	20(%r11), %eax
	testl	%eax, %eax
	jns	.LBB1_117
# %bb.116:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movq	%r10, %rbx
	callq	abs
	movq	%rbx, %r10
.LBB1_117:                              #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB1_19
.LBB1_118:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, 32(%r11)
	js	.LBB1_130
# %bb.119:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	__tz_lock
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB1_121
# %bb.120:                              #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, %eax
.LBB1_121:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	__gettzinfo
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, 32(%rdx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	movq	40(%rax,%rcx,8), %rbx
	callq	__tz_unlock
	addq	%r14, %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	subq	%r15, %rax
	subq	%r14, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movabsq	$-5247073869855161349, %rcx # imm = 0xB72EA61D950C83FB
	movq	%rbx, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movabsq	$8608480567731124087, %rcx # imm = 0x7777777777777777
	movq	%rbx, %rax
	imulq	%rcx
	subq	%rbx, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$5, %rdx
	leaq	(%rdx,%rax), %rdi
	callq	labs
	movq	%rax, %r8
	movabsq	$-8608480567731124087, %rcx # imm = 0x8888888888888889
	imulq	%rcx
	addq	%r8, %rdx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$5, %rdx
	addq	%rax, %rdx
	imulq	$60, %rdx, %rax
	subq	%rax, %r8
	movl	$.L.str.15, %edx
	movq	%r12, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	-136(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	callq	sniprintf
	testl	%eax, %eax
	js	.LBB1_188
# %bb.122:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_179
.LBB1_123:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
.LBB1_124:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, %r11
.LBB1_125:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-80(%rbp), %r8          # 8-byte Reload
.LBB1_126:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-128(%rbp), %rsi
.LBB1_127:                              #   in Loop: Header=BB1_1 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
.LBB1_128:                              #   in Loop: Header=BB1_1 Depth=1
	movb	(%r13), %dl
.LBB1_129:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r13
	movq	%rbx, %r15
	testb	%dl, %dl
	jne	.LBB1_1
	jmp	.LBB1_183
.LBB1_130:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jmp	.LBB1_129
.LBB1_131:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %edi             # imm = 0x76C
	xorl	%edx, %edx
	cmpb	$43, -96(%rbp)          # 1-byte Folded Reload
	movl	%edi, -72(%rbp)         # 4-byte Spill
	jne	.LBB1_173
# %bb.132:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$10000, %edi            # imm = 0x2710
	jb	.LBB1_173
# %bb.133:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$43, -128(%rbp)
	movb	$1, %dl
	leaq	-127(%rbp), %rdi
	jmp	.LBB1_174
.LBB1_134:                              #   in Loop: Header=BB1_1 Depth=1
	leal	1900(%rbx), %edi
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	abs
	movq	-72(%rbp), %r10         # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	movq	%r9, %rax
	shrq	$63, %rax
	sarq	$37, %r9
	addl	%eax, %r9d
.LBB1_135:                              #   in Loop: Header=BB1_1 Depth=1
	movl	-96(%rbp), %edx         # 4-byte Reload
	testb	%dl, %dl
	je	.LBB1_150
# %bb.136:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$99, %r9d
	movl	$.L.str.3, %eax
	movl	$.L.str.1, %ecx
	cmovleq	%rcx, %rax
	cmpb	$43, %dl
	cmovneq	%rcx, %rax
	movl	$.L.str.2, %edx
	jmp	.LBB1_151
.LBB1_137:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%esi, %ebx
	addl	$1900, %edi             # imm = 0x76C
	callq	abs
	movq	-64(%rbp), %r8          # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r10 # imm = 0x51EB851F
	movq	%r10, %rax
	shrq	$63, %rax
	sarq	$37, %r10
	addl	%eax, %r10d
	movl	20(%r8), %edi
	testl	%edi, %edi
	jns	.LBB1_139
# %bb.138:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %edi             # imm = 0x76C
	movq	%r10, -152(%rbp)        # 8-byte Spill
	callq	abs
	movq	-152(%rbp), %r10        # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	movl	%eax, %edi
.LBB1_139:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%ebx, %esi
.LBB1_140:                              #   in Loop: Header=BB1_1 Depth=1
	movslq	%edi, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	testl	%esi, %esi
	movq	-136(%rbp), %r9         # 8-byte Reload
	jns	.LBB1_142
# %bb.141:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %eax
	cmpl	$-1899, 20(%r8)         # imm = 0xF895
	movl	$1, %edx
	jl	.LBB1_143
.LBB1_142:                              #   in Loop: Header=BB1_1 Depth=1
	testl	%esi, %esi
	movl	$-1, %edx
	cmovlel	%esi, %edx
	xorl	%eax, %eax
	movb	-81(%rbp), %bl          # 1-byte Reload
	movb	%bl, %al
	cmpl	$-1900, -140(%rbp)      # 4-byte Folded Reload
                                        # imm = 0xF894
	cmovgel	%esi, %edx
.LBB1_143:                              #   in Loop: Header=BB1_1 Depth=1
	addl	%ecx, %edx
	cmpl	$100, %edx
	je	.LBB1_154
# %bb.144:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$-1, %edx
	jne	.LBB1_155
# %bb.145:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$-1, %r10d
	movl	$99, %edx
	jmp	.LBB1_155
.LBB1_146:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$1, %ecx
	movl	$-1899, %edx            # imm = 0xF895
.LBB1_147:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	%edx, 20(%rsi)
	cmovll	%ecx, %edi
	jmp	.LBB1_166
.LBB1_148:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r8d, %r8d
.LBB1_149:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movslq	20(%r11), %rcx
	leaq	-69(%rcx), %rdx
	movq	%rcx, %rax
	addq	$-66, %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
	sarq	$2, %rax
	leal	-1(%rcx), %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$37, %rdx
	addl	%edi, %edx
	movslq	%edx, %rdx
	leal	299(%rcx), %edi
	movslq	%edi, %rdi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	movq	%rdi, %rbx
	shrq	$63, %rbx
	sarq	$39, %rdi
	addl	%ebx, %edi
	movslq	%edi, %rdi
	imull	$365, %ecx, %ecx        # imm = 0x16D
	addl	$-25550, %ecx           # imm = 0x9C32
	movslq	%ecx, %rcx
	movslq	28(%r11), %rbx
	subq	%rdx, %rbx
	addq	%rax, %rbx
	addq	%rdi, %rbx
	addq	%rcx, %rbx
	leaq	(%rbx,%rbx,2), %rax
	movslq	8(%r11), %rcx
	leaq	(%rcx,%rax,8), %rax
	imulq	$60, %rax, %rax
	movslq	4(%r11), %rcx
	addq	%rax, %rcx
	imulq	$60, %rcx, %rax
	movslq	(%r11), %rcx
	subq	%r8, %rcx
	addq	%rax, %rcx
	movl	$.L.str.13, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	sniprintf
	testl	%eax, %eax
	jns	.LBB1_21
	jmp	.LBB1_188
.LBB1_150:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str, %edx
	movl	$.L.str.1, %eax
.LBB1_151:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	$2, %rcx
	movl	$2, %r8d
	cmovaq	%rcx, %r8
	addq	%r14, %r12
	movq	%r10, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	xorl	%edi, %edi
	cmpl	$-1900, %ebx            # imm = 0xF894
	setl	%dil
	movl	$.L.str.4, %ecx
	cmovgeq	%rax, %rcx
	subq	%rdi, %r8
	movq	%r12, %rdi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	sniprintf
	testl	%eax, %eax
	jns	.LBB1_21
	jmp	.LBB1_188
.LBB1_152:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r14), %rbx
	addq	$1, %rbx
	movb	$55, (%r14,%r12)
.LBB1_153:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_127
.LBB1_154:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1, %r10d
	xorl	%edx, %edx
.LBB1_155:                              #   in Loop: Header=BB1_1 Depth=1
	imull	$100, %r10d, %esi
	addl	%edx, %esi
	movb	$45, %cl
	testl	%eax, %eax
	movl	-96(%rbp), %edx         # 4-byte Reload
	jne	.LBB1_158
# %bb.156:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-128(%rbp), %rdi
	xorl	%eax, %eax
	cmpb	$43, %dl
	jne	.LBB1_159
# %bb.157:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$43, %cl
	cmpl	$10000, %esi            # imm = 0x2710
	jb	.LBB1_159
.LBB1_158:                              #   in Loop: Header=BB1_1 Depth=1
	movb	%cl, -128(%rbp)
	movb	$1, %al
	leaq	-127(%rbp), %rdi
.LBB1_159:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r9, %r9
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	subq	%rax, %r9
	movb	$37, (%rdi)
	testb	%dl, %dl
	movl	%esi, -140(%rbp)        # 4-byte Spill
	movq	%r9, %rbx
	je	.LBB1_161
# %bb.160:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$48, 1(%rdi)
	addq	$2, %rdi
	jmp	.LBB1_162
.LBB1_161:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %rdi
.LBB1_162:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.10, %esi
	callq	strcpy
	addq	%r14, %r12
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%r15, %rsi
	subq	%r14, %rsi
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	movq	%rbx, %rcx
	movl	-140(%rbp), %r8d        # 4-byte Reload
	xorl	%eax, %eax
	callq	sniprintf
	testl	%eax, %eax
	js	.LBB1_188
.LBB1_52:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	%r15, %rbx
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_180
.LBB1_173:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %rdi
.LBB1_174:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%rax, %rax
	setne	%cl
	andb	%dl, %cl
	movzbl	%cl, %ecx
	subq	%rcx, %rax
	movb	$37, (%rdi)
	cmpb	$0, -96(%rbp)           # 1-byte Folded Reload
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r10, %rbx
	je	.LBB1_176
# %bb.175:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$48, 1(%rdi)
	addq	$2, %rdi
	jmp	.LBB1_177
.LBB1_176:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %rdi
.LBB1_177:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.10, %esi
	callq	strcpy
	addq	%r14, %r12
	movq	%rbx, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	leaq	-128(%rbp), %rdx
	movq	%r12, %rdi
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
	xorl	%eax, %eax
	callq	sniprintf
	testl	%eax, %eax
	js	.LBB1_188
# %bb.178:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	addq	%r14, %r15
	movq	%rbx, %r10
.LBB1_179:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rbx
.LBB1_180:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r10, %r15
	movl	$0, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB1_181
.LBB1_163:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_164:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %r14
	callq	__tz_unlock
	movq	%r15, %r8
	movq	%r14, %rdi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r12, %r11
	jmp	.LBB1_126
.LBB1_165:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
.LBB1_166:                              #   in Loop: Header=BB1_1 Depth=1
	addl	%eax, %edi
	addq	%r14, %r12
	movq	%rbx, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movslq	%edi, %rax
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	addl	$100, %eax
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB1_172
.LBB1_167:                              #   in Loop: Header=BB1_1 Depth=1
	subl	%ecx, %edx
	movl	20(%rsi), %ecx
	testl	%ecx, %ecx
	movl	$1899, %esi             # imm = 0x76B
	movl	$-101, %eax
	cmovsl	%esi, %eax
	addl	%ecx, %eax
	testb	$3, %al
	jne	.LBB1_169
# %bb.168:                              #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rsi
	shrq	$63, %rsi
	sarq	$37, %rcx
	addl	%esi, %ecx
	imull	$100, %ecx, %esi
	movl	%eax, %edi
	movb	$1, %cl
	subl	%esi, %edi
	jne	.LBB1_170
.LBB1_169:                              #   in Loop: Header=BB1_1 Depth=1
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%cl
.LBB1_170:                              #   in Loop: Header=BB1_1 Depth=1
	movzbl	%cl, %eax
	subl	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$5, %edx
	setl	%cl
	orl	$52, %ecx
.LBB1_171:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%r14, %r12
	movq	%rbx, %rsi
	subq	%r15, %rsi
	subq	%r14, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
.LBB1_172:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r12
	jmp	.LBB1_20
.LBB1_182:                              # %.loopexit16
	addq	%r14, %r15
	movq	%r15, %rbx
.LBB1_183:
	testq	%r10, %r10
	je	.LBB1_185
# %bb.184:
	movb	$0, (%rdi,%rbx)
.LBB1_185:
	movq	%rbx, %r9
.LBB1_186:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_187:
	callq	__tz_unlock
.LBB1_188:
	xorl	%r9d, %r9d
	jmp	.LBB1_186
.Lfunc_end1:
	.size	__strftime, .Lfunc_end1-__strftime
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_37
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_39
	.quad	.LBB1_43
	.quad	.LBB1_47
	.quad	.LBB1_49
	.quad	.LBB1_186
	.quad	.LBB1_53
	.quad	.LBB1_59
	.quad	.LBB1_17
	.quad	.LBB1_22
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_61
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_26
	.quad	.LBB1_186
	.quad	.LBB1_63
	.quad	.LBB1_64
	.quad	.LBB1_65
	.quad	.LBB1_66
	.quad	.LBB1_67
	.quad	.LBB1_70
	.quad	.LBB1_71
	.quad	.LBB1_72
	.quad	.LBB1_74
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_186
	.quad	.LBB1_81
	.quad	.LBB1_32
	.quad	.LBB1_87
	.quad	.LBB1_36
	.quad	.LBB1_36
	.quad	.LBB1_186
	.quad	.LBB1_88
	.quad	.LBB1_32
	.quad	.LBB1_186
	.quad	.LBB1_93
	.quad	.LBB1_17
	.quad	.LBB1_22
	.quad	.LBB1_94
	.quad	.LBB1_95
	.quad	.LBB1_186
	.quad	.LBB1_26
	.quad	.LBB1_186
	.quad	.LBB1_97
	.quad	.LBB1_98
	.quad	.LBB1_102
	.quad	.LBB1_104
	.quad	.LBB1_186
	.quad	.LBB1_107
	.quad	.LBB1_110
	.quad	.LBB1_115
	.quad	.LBB1_118
                                        # -- End function
	.text
	.globl	strftime_l              # -- Begin function strftime_l
	.p2align	4, 0x90
	.type	strftime_l,@function
strftime_l:                             # @strftime_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strftime_l, .Lfunc_end2-strftime_l
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function iso_year_adjust
	.type	iso_year_adjust,@function
iso_year_adjust:                        # @iso_year_adjust
# %bb.0:
	movl	20(%rdi), %ecx
	testl	%ecx, %ecx
	movl	$1900, %edx             # imm = 0x76C
	movl	$-100, %eax
	cmovsl	%edx, %eax
	addl	%ecx, %eax
	testb	$3, %al
	jne	.LBB3_2
# %bb.1:
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	movl	%eax, %esi
	movl	$1, %edx
	subl	%ecx, %esi
	jne	.LBB3_3
.LBB3_2:
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	xorl	%edx, %edx
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%dl
.LBB3_3:
	movl	24(%rdi), %eax
	movl	28(%rdi), %ecx
	shll	$4, %ecx
	leal	(%rcx,%rax,2), %ecx
	orl	%edx, %ecx
	cmpl	$33, %ecx
	ja	.LBB3_4
# %bb.9:
	movl	$-1, %eax
	movabsq	$13690420227, %rdx      # imm = 0x330033C03
	btq	%rcx, %rdx
	jae	.LBB3_4
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_4:
	addl	$-5794, %ecx            # imm = 0xE95E
	cmpl	$53, %ecx
	ja	.LBB3_7
# %bb.5:
	movabsq	$11822082166292481, %rax # imm = 0x2A001F00070001
	btq	%rcx, %rax
	jae	.LBB3_7
# %bb.6:
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_7:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	iso_year_adjust, .Lfunc_end3-iso_year_adjust
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s%.*d"
	.size	.L.str, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s%0.*d"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"+"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%.2d"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%2d"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%.2d/%.2d/%.2d"
	.size	.L.str.7, 15

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%lu"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Y-%m-%d"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".*u"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.3d"
	.size	.L.str.11, 5

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%.2d:%.2d"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%lld"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%.2d:%.2d:%.2d"
	.size	.L.str.14, 15

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%+03ld%.2ld"
	.size	.L.str.15, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
