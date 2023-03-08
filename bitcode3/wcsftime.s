	.text
	.file	"wcsftime.c"
	.globl	__ctloc                 # -- Begin function __ctloc
	.p2align	4, 0x90
	.type	__ctloc,@function
__ctloc:                                # @__ctloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movl	$0, 1020(%rdi)
	movl	$255, %edx
	callq	mbstowcs
	xorl	%ecx, %ecx
	cmpq	$-1, %rax
	cmovneq	%rax, %rcx
	movq	%rcx, (%r14)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ctloc, .Lfunc_end0-__ctloc
                                        # -- End function
	.globl	wcsftime                # -- Begin function wcsftime
	.p2align	4, 0x90
	.type	wcsftime,@function
wcsftime:                               # @wcsftime
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
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__strftime              # TAILCALL
.Lfunc_end1:
	.size	wcsftime, .Lfunc_end1-wcsftime
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
	subq	$1240, %rsp             # imm = 0x4D8
	movq	%rcx, %r11
	movq	%rsi, %r10
	leaq	-1(%rsi), %r8
	xorl	%r9d, %r9d
	leaq	-240(%rbp), %rsi
	movl	$0, -88(%rbp)           # 4-byte Folded Spill
	xorl	%r13d, %r13d
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_2 Depth 2
                                        #     Child Loop BB2_31 Depth 2
                                        #     Child Loop BB2_128 Depth 2
                                        #     Child Loop BB2_75 Depth 2
                                        #     Child Loop BB2_121 Depth 2
                                        #     Child Loop BB2_42 Depth 2
                                        #     Child Loop BB2_38 Depth 2
	leaq	(%rdi,%r13,4), %r12
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB2_2:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx,%r14,4), %eax
	testl	%eax, %eax
	je	.LBB2_177
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=2
	leaq	(%r14,%r13), %rbx
	cmpl	$37, %eax
	je	.LBB2_6
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_181
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=2
	movl	%eax, (%r12,%r14,4)
	addq	$1, %r14
	addq	$-4, %r15
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, %rcx
	subq	%r15, %rcx
	movl	4(%rdx,%r14,4), %eax
	cmpl	$43, %eax
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$48, %eax
	jne	.LBB2_9
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, -96(%rbp)         # 4-byte Spill
	addq	$8, %rcx
	movl	8(%rdx,%r14,4), %eax
	jmp	.LBB2_10
.LBB2_9:                                # %._crit_edge158
                                        #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %rcx
                                        # kill: def $eax killed $eax def $rax
	movl	$0, -96(%rbp)           # 4-byte Folded Spill
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rcx, %rdx
	leal	-49(%rax), %ecx
	cmpl	$8, %ecx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r8, -80(%rbp)          # 8-byte Spill
	ja	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, %rdi
	movl	$10, %edx
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	wcstoul
	leaq	-240(%rbp), %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	xorl	%r9d, %r9d
	movq	%rax, %rdi
	movq	-240(%rbp), %rdx
	movl	(%rdx), %eax
	cmpl	$79, %eax
	jne	.LBB2_13
	jmp	.LBB2_14
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%edi, %edi
	cmpl	$79, %eax
	je	.LBB2_14
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$69, %eax
	jne	.LBB2_15
.LBB2_14:                               #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %rdx
.LBB2_15:                               #   in Loop: Header=BB2_1 Depth=1
	movl	(%rdx), %eax
	leal	-37(%rax), %ecx
	cmpl	$85, %ecx
	ja	.LBB2_181
# %bb.16:                               #   in Loop: Header=BB2_1 Depth=1
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	cmpl	$107, %eax
	movl	$.L.str.6, %eax
	movl	$.L.str.5, %edx
	cmoveq	%rax, %rdx
	movl	8(%r11), %ecx
	jmp	.LBB2_18
.LBB2_23:                               #   in Loop: Header=BB2_1 Depth=1
	movl	8(%r11), %edi
	movl	$12, %ecx
	testl	%edi, %edi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	je	.LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$12, %edi
	je	.LBB2_26
# %bb.25:                               #   in Loop: Header=BB2_1 Depth=1
	movslq	%edi, %rcx
	imulq	$715827883, %rcx, %rcx  # imm = 0x2AAAAAAB
	movq	%rcx, %rsi
	shrq	$63, %rsi
	shrq	$33, %rcx
	addl	%esi, %ecx
	shll	$2, %ecx
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %edi
	movl	%edi, %ecx
.LBB2_26:                               #   in Loop: Header=BB2_1 Depth=1
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	cmpl	$73, %eax
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	jmp	.LBB2_18
.LBB2_27:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%r11, %r13
	cmpl	$11, 8(%r11)
	setg	%al
	movq	_C_time_locale+328(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movq	%rax, %r14
	addq	$1, %rax
	cmpq	$2, %rax
	jae	.LBB2_119
# %bb.28:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r13, %r11
	jmp	.LBB2_108
.LBB2_29:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%r8, %r12
	movq	%r10, %r14
	movq	%r11, %r15
	movslq	16(%r11), %rax
	movq	_C_time_locale(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	leaq	1(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB2_78
# %bb.30:                               # %.preheader5
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_31:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=2
	movl	-1280(%rbp,%r9,4), %ecx
	movl	%ecx, (%rdi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %r9
	cmpq	%rax, %r9
	jb	.LBB2_31
	jmp	.LBB2_130
.LBB2_33:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	cmpl	$100, %eax
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movl	12(%r11), %ecx
	jmp	.LBB2_18
.LBB2_34:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.35:                               #   in Loop: Header=BB2_1 Depth=1
	leaq	(%r14,%r13), %rbx
	addq	$1, %rbx
	movl	$37, (%r12,%r14,4)
	jmp	.LBB2_102
.LBB2_36:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%r8, %r12
	movq	%r10, %r14
	movq	%r11, %r15
	movslq	24(%r11), %rax
	movq	_C_time_locale+248(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	leaq	1(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB2_78
# %bb.37:                               # %.preheader2
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_38:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=2
	movl	-1280(%rbp,%r9,4), %ecx
	movl	%ecx, (%rdi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %r9
	cmpq	%rax, %r9
	jb	.LBB2_38
	jmp	.LBB2_130
.LBB2_40:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%r8, %r12
	movq	%r10, %r14
	movq	%r11, %r15
	movslq	16(%r11), %rax
	movq	_C_time_locale+96(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	leaq	1(%rax), %rcx
	cmpq	$2, %rcx
	jb	.LBB2_78
# %bb.41:                               # %.preheader8
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_42:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.43:                               #   in Loop: Header=BB2_42 Depth=2
	movl	-1280(%rbp,%r9,4), %ecx
	movl	%ecx, (%rdi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %r9
	cmpq	%rax, %r9
	jb	.LBB2_42
	jmp	.LBB2_130
.LBB2_44:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	20(%r11), %ebx
	testl	%ebx, %ebx
	js	.LBB2_131
# %bb.45:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%ebx, %eax
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	addl	$19, %r9d
	jmp	.LBB2_132
.LBB2_46:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movq	%r10, %rbx
	subq	%r13, %rbx
	subq	%r14, %rbx
	movl	12(%r11), %r8d
	movl	16(%r11), %ecx
	addl	$1, %ecx
	movl	20(%r11), %eax
	testl	%eax, %eax
	jns	.LBB2_48
# %bb.47:                               #   in Loop: Header=BB2_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movl	%r8d, -96(%rbp)         # 4-byte Spill
	movl	%ecx, %r15d
	callq	abs
	movl	%r15d, %ecx
	movl	-96(%rbp), %r8d         # 4-byte Reload
.LBB2_48:                               #   in Loop: Header=BB2_1 Depth=1
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
	callq	swprintf
	testl	%eax, %eax
	js	.LBB2_183
# %bb.49:                               #   in Loop: Header=BB2_1 Depth=1
	cltq
	addq	%rax, %r13
	addq	%r14, %r13
	movq	%r13, %rbx
	movq	-72(%rbp), %r10         # 8-byte Reload
	cmpq	%r10, %r13
	movl	$0, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB2_22
.LBB2_50:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	$37, -240(%rbp)
	movl	-96(%rbp), %ecx         # 4-byte Reload
	testl	%ecx, %ecx
	movl	$43, %eax
	cmovnel	%ecx, %eax
	movl	%eax, -236(%rbp)
	movl	$10, %eax
	cmovneq	%rdi, %rax
	cmpq	$6, %rax
	movl	$6, %ecx
	cmovaq	%rax, %rcx
	leaq	-232(%rbp), %rbx
	movq	%rbx, %rdi
	addq	$-6, %rcx
	je	.LBB2_53
# %bb.51:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$30, %esi
	movl	$.L.str.8, %edx
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	swprintf
	movq	%rbx, %rdi
	testl	%eax, %eax
	jle	.LBB2_53
# %bb.52:                               #   in Loop: Header=BB2_1 Depth=1
	cltq
	leaq	(%rbx,%rax,4), %rdi
.LBB2_53:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str.9, %esi
	callq	wcscpy
	subq	%r15, %r12
	movq	-72(%rbp), %rsi         # 8-byte Reload
	subq	%r13, %rsi
	subq	%r14, %rsi
	leaq	-240(%rbp), %rdx
	movq	%r12, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	__strftime
	testl	%eax, %eax
	jle	.LBB2_183
# %bb.54:                               #   in Loop: Header=BB2_1 Depth=1
	cltq
	addq	%rax, %r13
	addq	%r14, %r13
	movq	%r13, %rbx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	jmp	.LBB2_108
.LBB2_55:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	20(%r11), %ebx
	cmpl	$-1900, %ebx            # imm = 0xF894
	setl	-81(%rbp)               # 1-byte Folded Spill
	movq	%r11, %rdi
	callq	iso_year_adjust
	movq	%rbx, %rdi
	movl	%eax, %esi
	testl	%edi, %edi
	js	.LBB2_134
# %bb.56:                               #   in Loop: Header=BB2_1 Depth=1
	movl	%edi, %eax
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	addl	$19, %r9d
	movl	%edi, %eax
	movq	-64(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_155
.LBB2_57:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	4(%r11), %ecx
	jmp	.LBB2_58
.LBB2_59:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	4(%r11), %r8d
	movl	8(%r11), %ecx
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r15
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_60:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	(%r11), %ecx
	jmp	.LBB2_58
.LBB2_61:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	8(%r11), %ecx
	movl	(%r11), %r9d
	movl	4(%r11), %r8d
	movl	$.L.str.14, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r15
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_62:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
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
	jmp	.LBB2_58
.LBB2_63:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
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
	jg	.LBB2_151
# %bb.64:                               #   in Loop: Header=BB2_1 Depth=1
	movl	28(%rsi), %ecx
	testl	%eax, %eax
	js	.LBB2_147
# %bb.65:                               #   in Loop: Header=BB2_1 Depth=1
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
	jmp	.LBB2_151
.LBB2_66:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
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
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	jmp	.LBB2_58
.LBB2_67:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+304(%rip), %rsi
	jmp	.LBB2_104
.LBB2_68:                               #   in Loop: Header=BB2_1 Depth=1
	movl	20(%r11), %r9d
	cmpl	$-1901, %r9d            # imm = 0xF893
	jg	.LBB2_124
# %bb.69:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, %rbx
	movl	$45, -240(%rbp)
	movl	$-1900, %ecx            # imm = 0xF894
	subl	%r9d, %ecx
	movb	$1, %al
	leaq	-236(%rbp), %rdi
	movl	%ecx, %r9d
	jmp	.LBB2_173
.LBB2_70:                               #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, 32(%r11)
	js	.LBB2_140
# %bb.71:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, %r15
	movq	%r8, %r13
	movq	%r11, %r12
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	__tz_lock
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	jne	.LBB2_73
# %bb.72:                               #   in Loop: Header=BB2_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
.LBB2_73:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	cmpl	$0, 32(%r12)
	setg	%al
	movq	_tzname(,%rax,8), %r14
	movq	%r14, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_143
# %bb.74:                               # %.preheader14
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdi
.LBB2_75:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%rdi, %rbx
	jae	.LBB2_182
# %bb.76:                               #   in Loop: Header=BB2_75 Depth=2
	movsbl	(%r14,%rcx), %edx
	movl	%edx, (%rsi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB2_75
	jmp	.LBB2_144
.LBB2_77:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%r8, %r12
	movq	%r10, %r14
	movq	%r11, %r15
	movslq	24(%r11), %rax
	movq	_C_time_locale+192(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	leaq	1(%rax), %rcx
	cmpq	$2, %rcx
	jae	.LBB2_127
.LBB2_78:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r12, %r8
	movq	%r13, %rsi
	jmp	.LBB2_109
.LBB2_79:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+320(%rip), %rsi
	jmp	.LBB2_104
.LBB2_80:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rbx
	movq	%r11, %rdi
	callq	iso_year_adjust
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edi
	movl	20(%rsi), %eax
	testl	%eax, %eax
	jns	.LBB2_82
# %bb.81:                               #   in Loop: Header=BB2_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%edi, -72(%rbp)         # 4-byte Spill
	movl	%eax, %edi
	callq	abs
	movl	-72(%rbp), %edi         # 4-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB2_82:                               #   in Loop: Header=BB2_1 Depth=1
	cltq
	imulq	$1374389535, %rax, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$37, %rcx
	addl	%edx, %ecx
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	testl	%edi, %edi
	js	.LBB2_136
# %bb.83:                               #   in Loop: Header=BB2_1 Depth=1
	testl	%edi, %edi
	je	.LBB2_145
# %bb.84:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$-1, %ecx
	movl	$-1900, %edx            # imm = 0xF894
	jmp	.LBB2_137
.LBB2_85:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	28(%r11), %ecx
	addl	$1, %ecx
	movl	$.L.str.11, %edx
	jmp	.LBB2_18
.LBB2_86:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	16(%r11), %ecx
	addl	$1, %ecx
.LBB2_58:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str.5, %edx
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r12, %rdi
.LBB2_19:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%r10, %r15
.LBB2_20:                               #   in Loop: Header=BB2_1 Depth=1
	callq	swprintf
	testl	%eax, %eax
	js	.LBB2_183
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	cltq
	addq	%rax, %r13
	addq	%r14, %r13
	movq	%r13, %rbx
	cmpq	%r15, %r13
	movl	$0, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-240(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jb	.LBB2_110
	jmp	.LBB2_183
.LBB2_87:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.88:                               #   in Loop: Header=BB2_1 Depth=1
	leaq	(%r14,%r13), %rbx
	addq	$1, %rbx
	movl	$10, (%r12,%r14,4)
	jmp	.LBB2_102
.LBB2_89:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+456(%rip), %rsi
	jmp	.LBB2_104
.LBB2_90:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	cmpl	$0, 32(%r11)
	js	.LBB2_138
# %bb.91:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%r11, %rbx
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	__tz_lock
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	jne	.LBB2_93
# %bb.92:                               #   in Loop: Header=BB2_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
.LBB2_93:                               #   in Loop: Header=BB2_1 Depth=1
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
	jmp	.LBB2_139
.LBB2_94:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.95:                               #   in Loop: Header=BB2_1 Depth=1
	leaq	(%r14,%r13), %rbx
	addq	$1, %rbx
	movl	$9, (%r12,%r14,4)
	jmp	.LBB2_102
.LBB2_96:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.97:                               #   in Loop: Header=BB2_1 Depth=1
	movl	24(%r11), %eax
	testl	%eax, %eax
	jne	.LBB2_101
# %bb.98:                               #   in Loop: Header=BB2_1 Depth=1
	leaq	(%r14,%r13), %rbx
	addq	$1, %rbx
	movl	$55, (%r12,%r14,4)
	jmp	.LBB2_102
.LBB2_99:                               #   in Loop: Header=BB2_1 Depth=1
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.100:                              #   in Loop: Header=BB2_1 Depth=1
	movl	24(%r11), %eax
.LBB2_101:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$48, %eax
	leaq	(%r14,%r13), %rbx
	addq	$1, %rbx
	movl	%eax, (%r12,%r14,4)
.LBB2_102:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB2_110
.LBB2_103:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+312(%rip), %rsi
.LBB2_104:                              #   in Loop: Header=BB2_1 Depth=1
	callq	mbstowcs
	cmpl	$0, -1280(%rbp)
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	je	.LBB2_107
# %bb.105:                              #   in Loop: Header=BB2_1 Depth=1
	subq	%r15, %r12
	movq	%r10, %r15
	subq	%r13, %r10
	subq	%r14, %r10
	leaq	-1280(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r11, %r12
	movq	%r11, %rcx
	callq	__strftime
	testl	%eax, %eax
	jle	.LBB2_183
# %bb.106:                              #   in Loop: Header=BB2_1 Depth=1
	cltq
	addq	%rax, %r13
	addq	%r14, %r13
	movq	%r13, %rbx
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %r10
	movq	%r12, %r11
	jmp	.LBB2_108
.LBB2_107:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB2_108:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-240(%rbp), %rsi
.LBB2_109:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_110:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, (%rdx)
	je	.LBB2_178
.LBB2_111:                              #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %rdx
	movq	%rbx, %r13
	jmp	.LBB2_1
.LBB2_112:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	20(%r11), %eax
	testl	%eax, %eax
	jns	.LBB2_114
# %bb.113:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movq	%r10, %rbx
	callq	abs
	movq	%rbx, %r10
.LBB2_114:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
                                        # kill: def $ecx killed $ecx killed $rcx
	jmp	.LBB2_19
.LBB2_115:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, 32(%r11)
	js	.LBB2_140
# %bb.116:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%r10, %rbx
	callq	__tz_lock
	cmpl	$0, -88(%rbp)           # 4-byte Folded Reload
	jne	.LBB2_118
# %bb.117:                              #   in Loop: Header=BB2_1 Depth=1
	callq	_tzset_unlocked
	movl	$1, -88(%rbp)           # 4-byte Folded Spill
.LBB2_118:                              #   in Loop: Header=BB2_1 Depth=1
	callq	__gettzinfo
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, 32(%rdx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__tz_unlock
	subq	%r15, %r12
	movq	%rbx, %r15
	subq	%r13, %rbx
	subq	%r14, %rbx
	movabsq	$-5247073869855161349, %rcx # imm = 0xB72EA61D950C83FB
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movabsq	$8608480567731124087, %rcx # imm = 0x7777777777777777
	movq	%rsi, %rax
	imulq	%rcx
	subq	%rsi, %rdx
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
	movq	%rbx, %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	xorl	%eax, %eax
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_119:                              # %.preheader11
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r15d, %r15d
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r13, %r11
	movq	-80(%rbp), %r8          # 8-byte Reload
	leaq	-240(%rbp), %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB2_121
.LBB2_120:                              #   in Loop: Header=BB2_121 Depth=2
	movl	%eax, (%rdi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %r15
	cmpq	%r14, %r15
	jae	.LBB2_110
.LBB2_121:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.122:                              #   in Loop: Header=BB2_121 Depth=2
	cmpl	$80, (%rdx)
	movl	-1280(%rbp,%r15,4), %eax
	jne	.LBB2_120
# %bb.123:                              #   in Loop: Header=BB2_121 Depth=2
	movq	%rdi, %r12
	movl	%eax, %edi
	callq	towlower
	movq	-48(%rbp), %rdx         # 8-byte Reload
	leaq	-240(%rbp), %rsi
	movq	-80(%rbp), %r8          # 8-byte Reload
	movq	%r13, %r11
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r12, %rdi
	xorl	%r9d, %r9d
	jmp	.LBB2_120
.LBB2_140:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB2_111
.LBB2_124:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$1900, %r9d             # imm = 0x76C
	xorl	%eax, %eax
	cmpl	$43, -96(%rbp)          # 4-byte Folded Reload
	jne	.LBB2_171
# %bb.125:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, %rbx
	cmpl	$10000, %r9d            # imm = 0x2710
	jb	.LBB2_172
# %bb.126:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$43, -240(%rbp)
	movb	$1, %al
	leaq	-236(%rbp), %rdi
	jmp	.LBB2_173
.LBB2_127:                              # %.preheader
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %r10
	movq	%r15, %r11
	movq	%r12, %r8
	movq	%r13, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
.LBB2_128:                              #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	%r8, %rbx
	jae	.LBB2_183
# %bb.129:                              #   in Loop: Header=BB2_128 Depth=2
	movl	-1280(%rbp,%r9,4), %ecx
	movl	%ecx, (%rdi,%rbx,4)
	addq	$1, %rbx
	addq	$1, %r9
	cmpq	%rax, %r9
	jb	.LBB2_128
.LBB2_130:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%r9d, %r9d
	jmp	.LBB2_110
.LBB2_131:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	leal	1900(%rbx), %edi
	movq	%r10, -72(%rbp)         # 8-byte Spill
	callq	abs
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	movq	%r9, %rax
	shrq	$63, %rax
	sarq	$37, %r9
	addl	%eax, %r9d
.LBB2_132:                              #   in Loop: Header=BB2_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB2_141
# %bb.133:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$99, %r9d
	movl	%eax, %edx
	movl	$.L.str.3, %eax
	movl	$.L.str.1, %ecx
	cmovleq	%rcx, %rax
	cmpl	$43, %edx
	cmovneq	%rcx, %rax
	movl	$.L.str.2, %edx
	jmp	.LBB2_142
.LBB2_134:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%esi, %ebx
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	addl	$1900, %edi             # imm = 0x76C
	callq	abs
	cltq
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	movq	%r9, %rax
	shrq	$63, %rax
	sarq	$37, %r9
	addl	%eax, %r9d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	20(%rcx), %eax
	testl	%eax, %eax
	js	.LBB2_153
# %bb.135:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rcx, %r8
	jmp	.LBB2_154
.LBB2_136:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$1, %ecx
	movl	$-1899, %edx            # imm = 0xF895
.LBB2_137:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	%edx, 20(%rsi)
	cmovll	%ecx, %edi
	jmp	.LBB2_146
.LBB2_138:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%r8d, %r8d
.LBB2_139:                              #   in Loop: Header=BB2_1 Depth=1
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
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
	movq	%r10, %r15
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_141:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str, %edx
	movl	$.L.str.1, %eax
.LBB2_142:                              #   in Loop: Header=BB2_1 Depth=1
	cmpq	$2, %rdi
	movl	$2, %r8d
	cmovaq	%rdi, %r8
	subq	%r15, %r12
	movq	%r10, %rsi
	subq	%r13, %rsi
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
	movq	%r10, %r15
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_143:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB2_144:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rsi, %r14
	callq	__tz_unlock
	movq	%r13, %r8
	movq	%r14, %rdi
	xorl	%r9d, %r9d
	movq	-72(%rbp), %r10         # 8-byte Reload
	movq	%r12, %r11
	leaq	-240(%rbp), %rsi
	movq	%r15, %rdx
	jmp	.LBB2_110
.LBB2_145:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%edi, %edi
.LBB2_146:                              #   in Loop: Header=BB2_1 Depth=1
	addl	%eax, %edi
	subq	%r15, %r12
	movq	%rbx, %rsi
	subq	%r13, %rsi
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
	jmp	.LBB2_152
.LBB2_147:                              #   in Loop: Header=BB2_1 Depth=1
	subl	%ecx, %edx
	movl	20(%rsi), %ecx
	testl	%ecx, %ecx
	movl	$1899, %esi             # imm = 0x76B
	movl	$-101, %eax
	cmovsl	%esi, %eax
	addl	%ecx, %eax
	testb	$3, %al
	jne	.LBB2_149
# %bb.148:                              #   in Loop: Header=BB2_1 Depth=1
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
	jne	.LBB2_150
.LBB2_149:                              #   in Loop: Header=BB2_1 Depth=1
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%cl
.LBB2_150:                              #   in Loop: Header=BB2_1 Depth=1
	movzbl	%cl, %eax
	subl	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$5, %edx
	setl	%cl
	orl	$52, %ecx
.LBB2_151:                              #   in Loop: Header=BB2_1 Depth=1
	subq	%r15, %r12
	movq	%rbx, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
.LBB2_152:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movq	%rbx, %r15
	jmp	.LBB2_20
.LBB2_153:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movq	%r9, -248(%rbp)         # 8-byte Spill
	callq	abs
	movq	-248(%rbp), %r9         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
.LBB2_154:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movl	%ebx, %esi
.LBB2_155:                              #   in Loop: Header=BB2_1 Depth=1
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	testl	%esi, %esi
	jns	.LBB2_157
# %bb.156:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$1, %eax
	cmpl	$-1899, 20(%r8)         # imm = 0xF895
	movl	$1, %edx
	jl	.LBB2_158
.LBB2_157:                              #   in Loop: Header=BB2_1 Depth=1
	testl	%esi, %esi
	movl	$-1, %edx
	cmovlel	%esi, %edx
	xorl	%eax, %eax
	movb	-81(%rbp), %bl          # 1-byte Reload
	movb	%bl, %al
	cmpl	$-1900, %edi            # imm = 0xF894
	cmovgel	%esi, %edx
.LBB2_158:                              #   in Loop: Header=BB2_1 Depth=1
	addl	%ecx, %edx
	cmpl	$100, %edx
	je	.LBB2_161
# %bb.159:                              #   in Loop: Header=BB2_1 Depth=1
	cmpl	$-1, %edx
	jne	.LBB2_162
# %bb.160:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$-1, %r9d
	movl	$99, %edx
	jmp	.LBB2_162
.LBB2_161:                              #   in Loop: Header=BB2_1 Depth=1
	addl	$1, %r9d
	xorl	%edx, %edx
.LBB2_162:                              #   in Loop: Header=BB2_1 Depth=1
	imull	$100, %r9d, %ebx
	addl	%edx, %ebx
	movl	$45, %ecx
	testl	%eax, %eax
	jne	.LBB2_165
# %bb.163:                              #   in Loop: Header=BB2_1 Depth=1
	leaq	-240(%rbp), %rdi
	xorl	%eax, %eax
	cmpl	$43, -96(%rbp)          # 4-byte Folded Reload
	jne	.LBB2_166
# %bb.164:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$43, %ecx
	cmpl	$10000, %ebx            # imm = 0x2710
	jb	.LBB2_166
.LBB2_165:                              #   in Loop: Header=BB2_1 Depth=1
	movl	%ecx, -240(%rbp)
	movb	$1, %al
	leaq	-236(%rbp), %rdi
.LBB2_166:                              #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rdx        # 8-byte Reload
	testq	%rdx, %rdx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	subq	%rax, %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	movl	$37, (%rdi)
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	je	.LBB2_168
# %bb.167:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$48, 4(%rdi)
	addq	$8, %rdi
	jmp	.LBB2_169
.LBB2_168:                              #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %rdi
.LBB2_169:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str.10, %esi
	callq	wcscpy
	subq	%r15, %r12
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	leaq	-240(%rbp), %rdx
	movq	%r12, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	%ebx, %r8d
	jmp	.LBB2_170
.LBB2_171:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rdi, %rbx
.LBB2_172:                              #   in Loop: Header=BB2_1 Depth=1
	movq	%rsi, %rdi
.LBB2_173:                              #   in Loop: Header=BB2_1 Depth=1
	testq	%rbx, %rbx
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	subq	%rax, %rbx
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	movl	$37, (%rdi)
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movl	%r9d, -72(%rbp)         # 4-byte Spill
	movq	%r10, %rbx
	je	.LBB2_175
# %bb.174:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$48, 4(%rdi)
	addq	$8, %rdi
	jmp	.LBB2_176
.LBB2_175:                              #   in Loop: Header=BB2_1 Depth=1
	addq	$4, %rdi
.LBB2_176:                              #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str.10, %esi
	callq	wcscpy
	subq	%r15, %r12
	movq	%rbx, %r15
	movq	%rbx, %rsi
	subq	%r13, %rsi
	subq	%r14, %rsi
	leaq	-240(%rbp), %rdx
	movq	%r12, %rdi
	movq	-104(%rbp), %rcx        # 8-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
.LBB2_170:                              #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	callq	swprintf
	testl	%eax, %eax
	jns	.LBB2_21
	jmp	.LBB2_183
.LBB2_177:                              # %.loopexit16
	addq	%r14, %r13
	movq	%r13, %rbx
.LBB2_178:
	testq	%r10, %r10
	je	.LBB2_180
# %bb.179:
	movl	$0, (%rdi,%rbx,4)
.LBB2_180:
	movq	%rbx, %r9
.LBB2_181:
	movq	%r9, %rax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_182:
	callq	__tz_unlock
.LBB2_183:
	xorl	%r9d, %r9d
	jmp	.LBB2_181
.Lfunc_end2:
	.size	__strftime, .Lfunc_end2-__strftime
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_34
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_36
	.quad	.LBB2_40
	.quad	.LBB2_44
	.quad	.LBB2_46
	.quad	.LBB2_181
	.quad	.LBB2_50
	.quad	.LBB2_55
	.quad	.LBB2_17
	.quad	.LBB2_23
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_57
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_27
	.quad	.LBB2_181
	.quad	.LBB2_59
	.quad	.LBB2_60
	.quad	.LBB2_61
	.quad	.LBB2_62
	.quad	.LBB2_63
	.quad	.LBB2_66
	.quad	.LBB2_67
	.quad	.LBB2_68
	.quad	.LBB2_70
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_181
	.quad	.LBB2_77
	.quad	.LBB2_29
	.quad	.LBB2_79
	.quad	.LBB2_33
	.quad	.LBB2_33
	.quad	.LBB2_181
	.quad	.LBB2_80
	.quad	.LBB2_29
	.quad	.LBB2_181
	.quad	.LBB2_85
	.quad	.LBB2_17
	.quad	.LBB2_23
	.quad	.LBB2_86
	.quad	.LBB2_87
	.quad	.LBB2_181
	.quad	.LBB2_27
	.quad	.LBB2_181
	.quad	.LBB2_89
	.quad	.LBB2_90
	.quad	.LBB2_94
	.quad	.LBB2_96
	.quad	.LBB2_181
	.quad	.LBB2_99
	.quad	.LBB2_103
	.quad	.LBB2_112
	.quad	.LBB2_115
                                        # -- End function
	.text
	.globl	wcsftime_l              # -- Begin function wcsftime_l
	.p2align	4, 0x90
	.type	wcsftime_l,@function
wcsftime_l:                             # @wcsftime_l
# %bb.0:
	jmp	__strftime              # TAILCALL
.Lfunc_end3:
	.size	wcsftime_l, .Lfunc_end3-wcsftime_l
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
	jne	.LBB4_2
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
	jne	.LBB4_3
.LBB4_2:
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	xorl	%edx, %edx
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%dl
.LBB4_3:
	movl	24(%rdi), %eax
	movl	28(%rdi), %ecx
	shll	$4, %ecx
	leal	(%rcx,%rax,2), %ecx
	orl	%edx, %ecx
	cmpl	$33, %ecx
	ja	.LBB4_4
# %bb.9:
	movl	$-1, %eax
	movabsq	$13690420227, %rdx      # imm = 0x330033C03
	btq	%rcx, %rdx
	jae	.LBB4_4
# %bb.8:
	retq
.LBB4_4:
	addl	$-5794, %ecx            # imm = 0xE95E
	cmpl	$53, %ecx
	ja	.LBB4_7
# %bb.5:
	movabsq	$11822082166292481, %rax # imm = 0x2A001F00070001
	btq	%rcx, %rax
	jae	.LBB4_7
# %bb.6:
	movl	$1, %eax
	retq
.LBB4_7:
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	iso_year_adjust, .Lfunc_end4-iso_year_adjust
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str:
	.long	37                      # 0x25
	.long	115                     # 0x73
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	42                      # 0x2a
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str, 28

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.zero	1
	.size	.L.str.1, 1

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str.2:
	.long	37                      # 0x25
	.long	115                     # 0x73
	.long	37                      # 0x25
	.long	48                      # 0x30
	.long	46                      # 0x2e
	.long	42                      # 0x2a
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"+"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str.5:
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
	.p2align	2
.L.str.6:
	.long	37                      # 0x25
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
	.p2align	2
.L.str.7:
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	47                      # 0x2f
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	47                      # 0x2f
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.7, 60

	.type	.L.str.8,@object        # @.str.8
	.p2align	2
.L.str.8:
	.long	37                      # 0x25
	.long	108                     # 0x6c
	.long	117                     # 0x75
	.long	0                       # 0x0
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
	.p2align	2
.L.str.9:
	.long	89                      # 0x59
	.long	45                      # 0x2d
	.long	37                      # 0x25
	.long	109                     # 0x6d
	.long	45                      # 0x2d
	.long	37                      # 0x25
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.9, 32

	.type	.L.str.10,@object       # @.str.10
	.p2align	2
.L.str.10:
	.long	46                      # 0x2e
	.long	42                      # 0x2a
	.long	117                     # 0x75
	.long	0                       # 0x0
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
	.p2align	2
.L.str.11:
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	51                      # 0x33
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.11, 20

	.type	.L.str.12,@object       # @.str.12
	.p2align	2
.L.str.12:
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	58                      # 0x3a
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
	.p2align	2
.L.str.13:
	.long	37                      # 0x25
	.long	108                     # 0x6c
	.long	108                     # 0x6c
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
	.p2align	2
.L.str.14:
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	58                      # 0x3a
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	58                      # 0x3a
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.14, 60

	.type	.L.str.15,@object       # @.str.15
	.p2align	2
.L.str.15:
	.long	37                      # 0x25
	.long	43                      # 0x2b
	.long	48                      # 0x30
	.long	51                      # 0x33
	.long	108                     # 0x6c
	.long	100                     # 0x64
	.long	37                      # 0x25
	.long	46                      # 0x2e
	.long	50                      # 0x32
	.long	108                     # 0x6c
	.long	100                     # 0x64
	.long	0                       # 0x0
	.size	.L.str.15, 48

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
