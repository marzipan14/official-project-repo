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
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
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
	subq	$104, %rsp
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	leaq	-1(%rsi), %r12
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$0, -84(%rbp)           # 4-byte Folded Spill
	xorl	%r15d, %r15d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
                                        #     Child Loop BB1_31 Depth 2
                                        #     Child Loop BB1_78 Depth 2
                                        #     Child Loop BB1_72 Depth 2
                                        #     Child Loop BB1_26 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_38 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r13), %al
	.p2align	4, 0x90
.LBB1_2:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_6
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_214
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=2
	movb	%al, (%rbx,%r15)
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r13), %eax
	addq	$1, %r13
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_209
# %bb.7:                                #   in Loop: Header=BB1_1 Depth=1
	movb	1(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	je	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %al
	jne	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movb	1(%r13), %bl
	addq	$2, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r13
	xorl	%ebx, %ebx
.LBB1_11:                               #   in Loop: Header=BB1_1 Depth=1
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$49, %al
	jl	.LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %al
	jg	.LBB1_15
# %bb.13:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	leaq	-144(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul
	movq	%rax, %r14
	movq	-144(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%r14d, %r14d
.LBB1_16:                               #   in Loop: Header=BB1_1 Depth=1
	movb	(%r13), %cl
	movl	$42, __A_VARIABLE(%rip)
	movb	$69, %al
	cmpb	$69, %cl
	je	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$79, %al
	cmpb	$79, %cl
	jne	.LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_20
.LBB1_19:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	movsbl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-37, %ecx
	cmpl	$85, %ecx
	ja	.LBB1_214
# %bb.21:                               #   in Loop: Header=BB1_1 Depth=1
	jmpq	*.LJTI1_0(,%rcx,8)
.LBB1_22:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	cmpb	$107, (%r13)
	movl	$.L.str.6, %eax
	movl	$.L.str.5, %edx
	cmoveq	%rax, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ecx
	jmp	.LBB1_96
.LBB1_23:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	$11, 8(%rcx)
	setg	%al
	movq	_C_time_locale+328(,%rax,8), %rbx
	movq	%rbx, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_202
# %bb.24:                               # %.preheader11
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, %rdx
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rcx
	leaq	(%rax,%r15), %rsi
	xorl	%r12d, %r12d
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_26
	.p2align	4, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_26 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, (%rsi,%r12)
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %r12
	jae	.LBB1_127
.LBB1_26:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-80(%rbp), %rax         # 8-byte Folded Reload
	jae	.LBB1_213
# %bb.27:                               #   in Loop: Header=BB1_26 Depth=2
	cmpb	$80, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx,%r12), %eax
	jne	.LBB1_25
# %bb.28:                               #   in Loop: Header=BB1_26 Depth=2
	movzbl	%al, %r14d
	movq	%rsi, %rbx
	callq	__locale_ctype_ptr
	movq	%rbx, %rsi
	movq	-104(%rbp), %rdx        # 8-byte Reload
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	leal	32(%r14), %ecx
	cmpb	$1, %al
	movzbl	%cl, %eax
	cmovnel	%r14d, %eax
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	jmp	.LBB1_25
.LBB1_29:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movslq	16(%rax), %rax
	movq	_C_time_locale(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_202
# %bb.30:                               # %.preheader5
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_31:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB1_213
# %bb.32:                               #   in Loop: Header=BB1_31 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB1_31
	jmp	.LBB1_80
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	cmpb	$100, (%r13)
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	12(%rax), %ecx
	jmp	.LBB1_96
.LBB1_34:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_213
# %bb.35:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	$37, (%rbx,%r15)
	jmp	.LBB1_180
.LBB1_36:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movslq	24(%rax), %rax
	movq	_C_time_locale+248(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_202
# %bb.37:                               # %.preheader2
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_38:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB1_213
# %bb.39:                               #   in Loop: Header=BB1_38 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB1_38
	jmp	.LBB1_80
.LBB1_40:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movslq	16(%rax), %rax
	movq	_C_time_locale+96(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_202
# %bb.41:                               # %.preheader8
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_42:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB1_213
# %bb.43:                               #   in Loop: Header=BB1_42 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB1_42
	jmp	.LBB1_80
.LBB1_44:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	js	.LBB1_133
# %bb.45:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%r8d, %eax
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	addl	$19, %r9d
	jmp	.LBB1_134
.LBB1_46:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	subq	%r15, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	12(%rax), %r8d
	movl	16(%rax), %r14d
	addl	$1, %r14d
	movl	20(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_48
# %bb.47:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	callq	abs
	movl	-96(%rbp), %r8d         # 4-byte Reload
	movq	-80(%rbp), %rdi         # 8-byte Reload
.LBB1_48:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %r9
	imulq	$1374389535, %r9, %rax  # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %r9d
	movl	$.L.str.7, %edx
	movq	%rbx, %rsi
	movl	%r14d, %ecx
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_213
# %bb.49:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-72(%rbp), %r15         # 8-byte Folded Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB1_203
	jmp	.LBB1_213
.LBB1_50:                               #   in Loop: Header=BB1_1 Depth=1
	movb	$37, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	je	.LBB1_138
# %bb.51:                               #   in Loop: Header=BB1_1 Depth=1
	movb	%bl, -143(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r14
	ja	.LBB1_181
# %bb.52:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-142(%rbp), %rdi
	jmp	.LBB1_184
.LBB1_53:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %r12         # 8-byte Reload
	movl	20(%r12), %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	cmpl	$-1900, %eax            # imm = 0xF894
	setl	-104(%rbp)              # 1-byte Folded Spill
	movq	%r12, %rdi
	callq	iso_year_adjust
	movl	20(%r12), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_139
# %bb.54:                               #   in Loop: Header=BB1_1 Depth=1
	movl	%edi, %ecx
	imulq	$1374389535, %rcx, %r8  # imm = 0x51EB851F
	shrq	$37, %r8
	addl	$19, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_142
.LBB1_55:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	4(%rax), %ecx
	jmp	.LBB1_95
.LBB1_56:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	4(%rax), %r8d
	movl	8(%rax), %ecx
	movl	$.L.str.12, %edx
	xorl	%eax, %eax
	callq	sniprintf
	jmp	.LBB1_97
.LBB1_57:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %ecx
	jmp	.LBB1_95
.LBB1_58:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %ecx
	movl	(%rax), %r9d
	movl	4(%rax), %r8d
	movl	$.L.str.14, %edx
	xorl	%eax, %eax
	callq	sniprintf
	jmp	.LBB1_97
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	28(%rcx), %eax
	subl	24(%rcx), %eax
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
	jmp	.LBB1_95
.LBB1_60:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	iso_year_adjust
	movl	24(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB1_146
# %bb.61:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_147
.LBB1_62:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	24(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_149
# %bb.63:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_150
.LBB1_64:                               #   in Loop: Header=BB1_1 Depth=1
	movq	_C_time_locale+304(%rip), %rbx
	jmp	.LBB1_114
.LBB1_65:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1901, %ecx            # imm = 0xF893
	jg	.LBB1_128
# %bb.66:                               #   in Loop: Header=BB1_1 Depth=1
	movb	$45, -144(%rbp)
	movl	$-1900, %eax            # imm = 0xF894
	subl	%ecx, %eax
	movl	%eax, %ecx
	jmp	.LBB1_131
.LBB1_67:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB1_202
# %bb.68:                               #   in Loop: Header=BB1_1 Depth=1
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	jne	.LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_70:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$0, 32(%rbx)
	setg	%al
	movq	_tzname(,%rax,8), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_75
# %bb.71:                               # %.preheader14
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_72:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB1_211
# %bb.73:                               #   in Loop: Header=BB1_72 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB1_72
# %bb.74:                               # %.loopexit15
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%rcx, %r15
.LBB1_75:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	callq	__tz_unlock
	jmp	.LBB1_186
.LBB1_76:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movslq	24(%rax), %rax
	movq	_C_time_locale+192(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_202
# %bb.77:                               # %.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%r15), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB1_78:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rsi
	jae	.LBB1_213
# %bb.79:                               #   in Loop: Header=BB1_78 Depth=2
	movzbl	(%r14,%rcx), %ebx
	movb	%bl, (%rdx,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB1_78
.LBB1_80:                               # %.loopexit1
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%rcx, %r15
	jmp	.LBB1_202
.LBB1_81:                               #   in Loop: Header=BB1_1 Depth=1
	movq	_C_time_locale+320(%rip), %rbx
	jmp	.LBB1_114
.LBB1_82:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	iso_year_adjust
	movl	%eax, %r14d
	movl	20(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_84
# %bb.83:                               #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	callq	abs
.LBB1_84:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cltq
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB1_155
# %bb.85:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_197
# %bb.86:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	$-1901, 20(%rcx)        # imm = 0xF893
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB1_198
# %bb.87:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	jmp	.LBB1_198
.LBB1_88:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	28(%rax), %ecx
	addl	$1, %ecx
	movl	$.L.str.11, %edx
	jmp	.LBB1_96
.LBB1_89:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$79, %al
	jne	.LBB1_91
# %bb.90:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_91:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
	testl	%eax, %eax
	je	.LBB1_125
# %bb.92:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	je	.LBB1_126
# %bb.93:                               #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rcx
	imulq	$715827883, %rcx, %rcx  # imm = 0x2AAAAAAB
	movq	%rcx, %rdx
	shrq	$63, %rdx
	shrq	$33, %rcx
	addl	%edx, %ecx
	shll	$2, %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	jmp	.LBB1_126
.LBB1_94:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	16(%rax), %ecx
	addl	$1, %ecx
.LBB1_95:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.5, %edx
.LBB1_96:                               #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	callq	sniprintf
.LBB1_97:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_213
# %bb.98:                               #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB1_203
	jmp	.LBB1_213
.LBB1_99:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_213
# %bb.100:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	$10, (%rbx,%r15)
	jmp	.LBB1_180
.LBB1_101:                              #   in Loop: Header=BB1_1 Depth=1
	movq	_C_time_locale+456(%rip), %rbx
	jmp	.LBB1_114
.LBB1_102:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB1_156
# %bb.103:                              #   in Loop: Header=BB1_1 Depth=1
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	jne	.LBB1_105
# %bb.104:                              #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_105:                              #   in Loop: Header=BB1_1 Depth=1
	callq	__gettzinfo
	xorl	%ecx, %ecx
	cmpl	$0, 32(%rbx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	xorl	%r14d, %r14d
	subq	40(%rax,%rcx,8), %r14
	callq	__tz_unlock
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_157
.LBB1_106:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_213
# %bb.107:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	$9, (%rbx,%r15)
	jmp	.LBB1_180
.LBB1_108:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_213
# %bb.109:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	24(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_179
# %bb.110:                              #   in Loop: Header=BB1_1 Depth=1
	addb	$48, %al
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	%al, (%rbx,%r15)
	jmp	.LBB1_180
.LBB1_111:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_213
# %bb.112:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movb	24(%rax), %al
	addb	$48, %al
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	%al, (%rbx,%r15)
	jmp	.LBB1_180
.LBB1_113:                              #   in Loop: Header=BB1_1 Depth=1
	movq	_C_time_locale+312(%rip), %rbx
.LBB1_114:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, %rdx
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_203
# %bb.115:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%r15, %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_213
# %bb.116:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_203
.LBB1_117:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB1_119
# %bb.118:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	callq	abs
.LBB1_119:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movl	$.L.str.5, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB1_96
.LBB1_120:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmpl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB1_202
# %bb.121:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r12, -80(%rbp)         # 8-byte Spill
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -84(%rbp)           # 4-byte Folded Reload
	jne	.LBB1_123
# %bb.122:                              #   in Loop: Header=BB1_1 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -84(%rbp)           # 4-byte Folded Spill
.LBB1_123:                              #   in Loop: Header=BB1_1 Depth=1
	callq	__gettzinfo
	xorl	%ecx, %ecx
	cmpl	$0, 32(%rbx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	movq	40(%rax,%rcx,8), %r14
	callq	__tz_unlock
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	%r15, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %r12
	subq	%r15, %r12
	movabsq	$-5247073869855161349, %rcx # imm = 0xB72EA61D950C83FB
	movq	%r14, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	movabsq	$8608480567731124087, %rcx # imm = 0x7777777777777777
	movq	%r14, %rax
	imulq	%rcx
	subq	%r14, %rdx
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
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_212
# %bb.124:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jb	.LBB1_159
	jmp	.LBB1_212
.LBB1_125:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB1_126:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	cmpb	$73, (%r13)
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB1_153
.LBB1_127:                              # %.loopexit13
                                        #   in Loop: Header=BB1_1 Depth=1
	addq	%r12, %r15
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	%rcx, %rbx
	jmp	.LBB1_203
.LBB1_128:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %ecx             # imm = 0x76C
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %bl
	jne	.LBB1_191
# %bb.129:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$10000, %ecx            # imm = 0x2710
	jb	.LBB1_191
# %bb.130:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$43, -144(%rbp)
.LBB1_131:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	je	.LBB1_190
# %bb.132:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$-1, %r14
	leaq	-143(%rbp), %rdi
	jmp	.LBB1_192
.LBB1_133:                              #   in Loop: Header=BB1_1 Depth=1
	leal	1900(%r8), %edi
	movq	%r8, -80(%rbp)          # 8-byte Spill
	callq	abs
	movq	-80(%rbp), %r8          # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	movq	%r9, %rax
	shrq	$63, %rax
	sarq	$37, %r9
	addl	%eax, %r9d
.LBB1_134:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %ecx
	testb	%bl, %bl
	je	.LBB1_160
# %bb.135:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %edx
	cmpl	$100, %r9d
	jl	.LBB1_161
# %bb.136:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %bl
	jne	.LBB1_161
# %bb.137:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %ecx
	jmp	.LBB1_161
.LBB1_138:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$43, -143(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r14d
	jmp	.LBB1_182
.LBB1_139:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%eax, -108(%rbp)        # 4-byte Spill
	addl	$1900, %edi             # imm = 0x76C
	callq	abs
	cltq
	imulq	$1374389535, %rax, %r8  # imm = 0x51EB851F
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$37, %r8
	addl	%eax, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%r12), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jns	.LBB1_141
# %bb.140:                              #   in Loop: Header=BB1_1 Depth=1
	addl	$1900, %edi             # imm = 0x76C
	movq	%r8, %r12
	callq	abs
	movq	%r12, %r8
	movl	%eax, %edi
.LBB1_141:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-80(%rbp), %r12         # 8-byte Reload
	movl	-108(%rbp), %eax        # 4-byte Reload
.LBB1_142:                              #   in Loop: Header=BB1_1 Depth=1
	movl	-96(%rbp), %esi         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %rdi
	imulq	$1374389535, %rdi, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_165
# %bb.143:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%ecx, %ecx
	movb	-104(%rbp), %dl         # 1-byte Reload
	movb	%dl, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1901, %esi            # imm = 0xF893
	jg	.LBB1_166
# %bb.144:                              #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	je	.LBB1_166
# %bb.145:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB1_166
.LBB1_146:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$6, %edx
.LBB1_147:                              #   in Loop: Header=BB1_1 Depth=1
	movl	28(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testl	%eax, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jle	.LBB1_169
.LBB1_148:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_152
.LBB1_149:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$6, %eax
.LBB1_150:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	28(%rcx), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$7, %eax
	cltq
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	addl	%eax, %ecx
	addl	$7, %ecx
.LBB1_151:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
.LBB1_152:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	subq	%r15, %rsi
	movl	$.L.str.5, %edx
.LBB1_153:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_212
# %bb.154:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB1_186
	jmp	.LBB1_212
.LBB1_155:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpl	$-1899, 20(%rcx)        # imm = 0xF895
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmovll	%ecx, %r14d
	jmp	.LBB1_198
.LBB1_156:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r14d, %r14d
	movq	-72(%rbp), %r12         # 8-byte Reload
.LBB1_157:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movq	%r12, %rsi
	subq	%r15, %rsi
	movslq	20(%rbx), %rcx
	leaq	-69(%rcx), %rdx
	movq	%rcx, %rax
	addq	$-66, %rax
	testq	%rdx, %rdx
	cmovnsq	%rdx, %rax
	sarq	$2, %rax
	leal	-1(%rcx), %edx
	movslq	%edx, %rdx
	imulq	$1374389535, %rdx, %rdx # imm = 0x51EB851F
	movq	%rdx, %rbx
	shrq	$63, %rbx
	sarq	$37, %rdx
	addl	%ebx, %edx
	movslq	%edx, %r8
	leal	299(%rcx), %ebx
	movslq	%ebx, %rbx
	imulq	$1374389535, %rbx, %rbx # imm = 0x51EB851F
	movq	%rbx, %rdx
	shrq	$63, %rdx
	sarq	$39, %rbx
	addl	%edx, %ebx
	movslq	%ebx, %rdx
	imull	$365, %ecx, %ecx        # imm = 0x16D
	addl	$-25550, %ecx           # imm = 0x9C32
	movslq	%ecx, %rcx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movslq	28(%rbx), %rbx
	subq	%r8, %rbx
	addq	%rax, %rbx
	addq	%rdx, %rbx
	addq	%rcx, %rbx
	leaq	(%rbx,%rbx,2), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movslq	8(%rdx), %rcx
	leaq	(%rcx,%rax,8), %rax
	imulq	$60, %rax, %rax
	movslq	4(%rdx), %rcx
	addq	%rax, %rcx
	imulq	$60, %rcx, %rax
	movslq	(%rdx), %rcx
	subq	%r14, %rcx
	addq	%rax, %rcx
	movl	$.L.str.13, %edx
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_212
# %bb.158:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	jae	.LBB1_212
.LBB1_159:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-80(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_203
.LBB1_160:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str, %edx
.LBB1_161:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r14
	ja	.LBB1_163
# %bb.162:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r14d
.LBB1_163:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movq	%rbx, %rsi
	subq	%r15, %rsi
	xorl	%eax, %eax
	cmpl	$-1900, %r8d            # imm = 0xF894
	setl	%al
	movq	%rbx, %r12
	movl	$.L.str.4, %ebx
	cmovlq	%rbx, %rcx
	subq	%rax, %r14
	movq	%r14, %r8
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_213
# %bb.164:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	-80(%rbp), %r12         # 8-byte Reload
	jb	.LBB1_203
	jmp	.LBB1_213
.LBB1_165:                              #   in Loop: Header=BB1_1 Depth=1
	cmpl	$-1900, %esi            # imm = 0xF894
	setl	%cl
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	$-1899, 20(%rdx)        # imm = 0xF895
	setl	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	cmovll	%esi, %eax
	orb	%cl, %dl
	movzbl	%dl, %ecx
.LBB1_166:                              #   in Loop: Header=BB1_1 Depth=1
	addl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB1_171
# %bb.167:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %eax
	jne	.LBB1_173
# %bb.168:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.LBB1_172
.LBB1_169:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_205
# %bb.170:                              #   in Loop: Header=BB1_1 Depth=1
	subl	%edx, %esi
	movl	%esi, %eax
	addl	$10, %eax
	cltq
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	leal	(%rax,%rsi), %ecx
	addl	$10, %ecx
	jmp	.LBB1_151
.LBB1_171:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$99, %eax
	movl	$-1, %edx
.LBB1_172:                              #   in Loop: Header=BB1_1 Depth=1
	addl	%edx, %r8d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_173:                              #   in Loop: Header=BB1_1 Depth=1
	imull	$100, %r8d, %edx
	addl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movb	$45, %al
	testl	%ecx, %ecx
	jne	.LBB1_176
# %bb.174:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-144(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %bl
	jne	.LBB1_178
# %bb.175:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$43, %al
	cmpl	$10000, %edx            # imm = 0x2710
	jb	.LBB1_178
.LBB1_176:                              #   in Loop: Header=BB1_1 Depth=1
	movb	%al, -144(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_187
# %bb.177:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$-1, %r14
	leaq	-143(%rbp), %rdi
.LBB1_178:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_188
.LBB1_179:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movb	$55, (%rbx,%r15)
.LBB1_180:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_203
.LBB1_181:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-142(%rbp), %rdi
	addq	$-6, %r14
	je	.LBB1_184
.LBB1_182:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$30, %esi
	movl	$.L.str.8, %edx
	leaq	-142(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rcx
	xorl	%eax, %eax
	callq	sniprintf
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	testl	%eax, %eax
	jle	.LBB1_184
# %bb.183:                              #   in Loop: Header=BB1_1 Depth=1
	movslq	%eax, %rdi
	leaq	-142(%rbp), %rax
	addq	%rax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_184:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.9, %esi
	callq	strcpy
	movq	-48(%rbp), %rbx         # 8-byte Reload
	leaq	(%rbx,%r15), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%r15, %rsi
	leaq	-144(%rbp), %rdx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_212
# %bb.185:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
.LBB1_186:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_203
.LBB1_187:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r14d, %r14d
	leaq	-143(%rbp), %rdi
.LBB1_188:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$37, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	movl	%edx, -80(%rbp)         # 4-byte Spill
	je	.LBB1_195
.LBB1_194:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$48, 1(%rdi)
	addq	$2, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_196
.LBB1_190:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-143(%rbp), %rdi
	jmp	.LBB1_193
.LBB1_191:                              #   in Loop: Header=BB1_1 Depth=1
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	leaq	-144(%rbp), %rdi
.LBB1_192:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_193:                              #   in Loop: Header=BB1_1 Depth=1
	movb	$37, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	%bl, %bl
	jne	.LBB1_194
.LBB1_195:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %rdi
.LBB1_196:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movl	$.L.str.10, %esi
	callq	strcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movq	%rbx, %rsi
	subq	%r15, %rsi
	leaq	-144(%rbp), %rdx
	movq	%r14, %rcx
	movl	-80(%rbp), %r8d         # 4-byte Reload
	xorl	%eax, %eax
	callq	sniprintf
	jmp	.LBB1_199
.LBB1_197:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%r14d, %r14d
.LBB1_198:                              #   in Loop: Header=BB1_1 Depth=1
	addl	%eax, %r14d
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdi
	movq	%rbx, %rsi
	subq	%r15, %rsi
	movslq	%r14d, %rax
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
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	callq	sniprintf
.LBB1_199:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_212
# %bb.200:                              #   in Loop: Header=BB1_1 Depth=1
	cltq
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jae	.LBB1_212
# %bb.201:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_202:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB1_203:                              #   in Loop: Header=BB1_1 Depth=1
	cmpb	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_209
# %bb.204:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_1
.LBB1_205:                              #   in Loop: Header=BB1_1 Depth=1
	subl	%esi, %edx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	20(%rax), %ecx
	testl	%ecx, %ecx
	movl	$1899, %esi             # imm = 0x76B
	movl	$-101, %eax
	cmovsl	%esi, %eax
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %al
	je	.LBB1_207
.LBB1_206:                              #   in Loop: Header=BB1_1 Depth=1
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%cl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_208
.LBB1_207:                              #   in Loop: Header=BB1_1 Depth=1
	imull	$-1030792151, %eax, %esi # imm = 0xC28F5C29
	addl	$85899344, %esi         # imm = 0x51EB850
	rorl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	cmpl	$42949672, %esi         # imm = 0x28F5C28
	jbe	.LBB1_206
.LBB1_208:                              #   in Loop: Header=BB1_1 Depth=1
	movzbl	%cl, %eax
	subl	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$5, %edx
	setl	%cl
	orl	$52, %ecx
	jmp	.LBB1_148
.LBB1_209:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	movq	%r15, -56(%rbp)         # 8-byte Spill
	je	.LBB1_214
# %bb.210:
	movb	$0, (%rbx,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_214
.LBB1_211:
	callq	__tz_unlock
.LBB1_212:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_213:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB1_214:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__strftime, .Lfunc_end1-__strftime
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI1_0:
	.quad	.LBB1_34
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_36
	.quad	.LBB1_40
	.quad	.LBB1_44
	.quad	.LBB1_46
	.quad	.LBB1_214
	.quad	.LBB1_50
	.quad	.LBB1_53
	.quad	.LBB1_22
	.quad	.LBB1_91
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_55
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_23
	.quad	.LBB1_214
	.quad	.LBB1_56
	.quad	.LBB1_57
	.quad	.LBB1_58
	.quad	.LBB1_59
	.quad	.LBB1_60
	.quad	.LBB1_62
	.quad	.LBB1_64
	.quad	.LBB1_65
	.quad	.LBB1_67
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_214
	.quad	.LBB1_76
	.quad	.LBB1_29
	.quad	.LBB1_81
	.quad	.LBB1_33
	.quad	.LBB1_33
	.quad	.LBB1_214
	.quad	.LBB1_82
	.quad	.LBB1_29
	.quad	.LBB1_214
	.quad	.LBB1_88
	.quad	.LBB1_22
	.quad	.LBB1_89
	.quad	.LBB1_94
	.quad	.LBB1_99
	.quad	.LBB1_214
	.quad	.LBB1_23
	.quad	.LBB1_214
	.quad	.LBB1_101
	.quad	.LBB1_102
	.quad	.LBB1_106
	.quad	.LBB1_108
	.quad	.LBB1_214
	.quad	.LBB1_111
	.quad	.LBB1_113
	.quad	.LBB1_117
	.quad	.LBB1_120
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %al
	je	.LBB3_1
.LBB3_2:
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	xorl	%edx, %edx
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%dl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_3
.LBB3_1:
	imull	$-1030792151, %eax, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB3_2
.LBB3_3:
	movl	24(%rdi), %eax
	movl	28(%rdi), %ecx
	shll	$4, %ecx
	leal	(%rcx,%rax,2), %ecx
	orl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %ecx
	ja	.LBB3_4
# %bb.9:
	movl	$-1, %eax
	movabsq	$13690420227, %rdx      # imm = 0x330033C03
	btq	%rcx, %rdx
	jb	.LBB3_8
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
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB3_7:
	xorl	%eax, %eax
	jmp	.LBB3_8
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
