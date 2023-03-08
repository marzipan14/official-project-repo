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
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB0_2
# %bb.1:
	movq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
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
	cmpq	$0, 72(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
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
	movq	%rsi, %r10
	movq	%rdi, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %eax
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_232
# %bb.1:                                # %.preheader18
	movq	%rcx, %r11
	leaq	-1(%r10), %r9
	xorl	%r14d, %r14d
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_36 Depth 2
                                        #     Child Loop BB2_89 Depth 2
                                        #     Child Loop BB2_83 Depth 2
                                        #     Child Loop BB2_30 Depth 2
                                        #     Child Loop BB2_49 Depth 2
                                        #     Child Loop BB2_44 Depth 2
	leaq	(%r8,%r14,4), %r12
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%r14,%rbx), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %eax
	je	.LBB2_7
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_236
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=2
	movl	%eax, (%r12,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdx,%rbx,4), %eax
	addq	$-4, %r13
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_3
	jmp	.LBB2_6
	.p2align	4, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rdi
	subq	%r13, %rdi
	movl	4(%rdx,%rbx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %eax
	je	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$43, %eax
	jne	.LBB2_10
.LBB2_9:                                #   in Loop: Header=BB2_2 Depth=1
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rdx,%rbx,4), %ecx
	jmp	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
	movl	%eax, %ecx
	xorl	%eax, %eax
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %ecx
	movq	%r9, -56(%rbp)          # 8-byte Spill
	jle	.LBB2_14
# %bb.12:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$57, %ecx
	jg	.LBB2_15
# %bb.13:                               #   in Loop: Header=BB2_2 Depth=1
	leaq	-256(%rbp), %rsi
	movl	$10, %edx
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	wcstoul
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-72(%rbp), %r8          # 8-byte Reload
	xorl	%esi, %esi
	movq	%rax, %rdx
	movq	-256(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	jmp	.LBB2_16
.LBB2_14:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	xorl	%eax, %eax
	jmp	.LBB2_20
.LBB2_15:                               #   in Loop: Header=BB2_2 Depth=1
	xorl	%edx, %edx
.LBB2_16:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$69, %ecx
	jne	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
	movl	$69, %eax
	jmp	.LBB2_20
.LBB2_18:                               #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$79, %ecx
	jne	.LBB2_21
# %bb.19:                               #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
	movl	$79, %eax
	.p2align	4, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_21:                               #   in Loop: Header=BB2_2 Depth=1
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-37, %ecx
	cmpl	$85, %ecx
	ja	.LBB2_236
# %bb.22:                               #   in Loop: Header=BB2_2 Depth=1
	jmpq	*.LJTI2_0(,%rcx,8)
.LBB2_23:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%rdi, %r15
	cmpl	$107, (%rdi)
	movl	$.L.str.6, %eax
	movl	$.L.str.5, %edx
	cmoveq	%rax, %rdx
	movq	%r11, %r13
	movl	8(%r11), %ecx
	jmp	.LBB2_24
.LBB2_26:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, %r12
	xorl	%eax, %eax
	movq	%r11, %r13
	cmpl	$11, 8(%r11)
	setg	%al
	movq	_C_time_locale+328(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB2_145
# %bb.27:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$0, %esi
	movq	%r12, %r8
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r13, %r11
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB2_93
# %bb.28:                               # %.preheader11
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ebx, %ebx
	movq	-56(%rbp), %r9          # 8-byte Reload
	jmp	.LBB2_30
.LBB2_29:                               #   in Loop: Header=BB2_30 Depth=2
	movl	%eax, (%r8,%r15,4)
	addq	$1, %r15
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB2_91
.LBB2_30:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.31:                               #   in Loop: Header=BB2_30 Depth=2
	cmpl	$80, (%rdi)
	movl	-1280(%rbp,%rbx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_29
# %bb.32:                               #   in Loop: Header=BB2_30 Depth=2
	movl	%eax, %edi
	callq	towlower
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r13, %r11
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r12, %r8
	xorl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_29
.LBB2_33:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %r12
	movq	%r8, %rbx
	movq	%r11, %r13
	movslq	16(%r11), %rax
	movq	_C_time_locale(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB2_92
# %bb.34:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$0, %esi
	movq	%rbx, %r8
	movq	%r12, %r10
	movq	%r13, %r11
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB2_93
# %bb.35:                               # %.preheader5
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB2_36:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=2
	movl	-1280(%rbp,%rcx,4), %edx
	movl	%edx, (%r8,%r15,4)
	addq	$1, %r15
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB2_36
	jmp	.LBB2_91
.LBB2_38:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%rdi, %r15
	cmpl	$100, (%rdi)
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movq	%r11, %r13
	movl	12(%r11), %ecx
.LBB2_24:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_239
# %bb.25:                               #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movl	$0, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r10
	movq	%r13, %r11
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r15, %rdi
	jb	.LBB2_228
	jmp	.LBB2_239
.LBB2_39:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.40:                               #   in Loop: Header=BB2_2 Depth=1
	addq	%rbx, %r14
	addq	$1, %r14
	movl	$37, (%r12,%rbx,4)
	jmp	.LBB2_126
.LBB2_41:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %r12
	movq	%r8, %rbx
	movq	%r11, %r13
	movslq	24(%r11), %rax
	movq	_C_time_locale+248(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB2_92
# %bb.42:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$0, %esi
	movq	%rbx, %r8
	movq	%r12, %r10
	movq	%r13, %r11
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB2_93
# %bb.43:                               # %.preheader2
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB2_44:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.45:                               #   in Loop: Header=BB2_44 Depth=2
	movl	-1280(%rbp,%rcx,4), %edx
	movl	%edx, (%r8,%r15,4)
	addq	$1, %r15
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB2_44
	jmp	.LBB2_91
.LBB2_46:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %r12
	movq	%r8, %rbx
	movq	%r11, %r13
	movslq	16(%r11), %rax
	movq	_C_time_locale+96(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB2_92
# %bb.47:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$0, %esi
	movq	%rbx, %r8
	movq	%r12, %r10
	movq	%r13, %r11
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB2_93
# %bb.48:                               # %.preheader8
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB2_49:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.50:                               #   in Loop: Header=BB2_49 Depth=2
	movl	-1280(%rbp,%rcx,4), %edx
	movl	%edx, (%r8,%r15,4)
	addq	$1, %r15
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB2_49
	jmp	.LBB2_91
.LBB2_51:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	20(%r11), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	js	.LBB2_151
# %bb.52:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%r15d, %eax
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	shrq	$37, %r9
	addl	$19, %r9d
	jmp	.LBB2_152
.LBB2_53:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	subq	%r13, %r12
	movq	%r10, -80(%rbp)         # 8-byte Spill
	subq	%r14, %r10
	subq	%rbx, %r10
	movl	12(%r11), %r8d
	movl	16(%r11), %ecx
	addl	$1, %ecx
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	20(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jns	.LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_2 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movq	%r10, %r15
	movl	%r8d, %r13d
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	callq	abs
	movl	-96(%rbp), %ecx         # 4-byte Reload
	movl	%r13d, %r8d
	movq	%r15, %r10
.LBB2_55:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
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
	movq	%r10, %rsi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_239
# %bb.56:                               #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r10         # 8-byte Reload
	cmpq	%r10, %r14
	movl	$0, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_138
.LBB2_57:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$37, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB2_156
# %bb.58:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, -252(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %r15
	cmpq	$5, %rdx
	ja	.LBB2_185
# %bb.59:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-248(%rbp), %rdi
	jmp	.LBB2_188
.LBB2_60:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	20(%r11), %eax
	movl	%eax, -116(%rbp)        # 4-byte Spill
	cmpl	$-1900, %eax            # imm = 0xF894
	setl	-81(%rbp)               # 1-byte Folded Spill
	movq	%r11, %rdi
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	iso_year_adjust
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	20(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB2_157
# %bb.61:                               #   in Loop: Header=BB2_2 Depth=1
	movl	%edi, %ecx
	imulq	$1374389535, %rcx, %r15 # imm = 0x51EB851F
	shrq	$37, %r15
	addl	$19, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_160
.LBB2_62:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%r11, %r13
	movl	4(%r11), %ecx
	jmp	.LBB2_63
.LBB2_67:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	4(%r11), %r8d
	movq	%r11, %r13
	movl	8(%r11), %ecx
	movl	$.L.str.12, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	jmp	.LBB2_65
.LBB2_68:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%r11, %r13
	movl	(%r11), %ecx
	jmp	.LBB2_63
.LBB2_69:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	8(%r11), %ecx
	movl	(%r11), %r9d
	movq	%r11, %r13
	movl	4(%r11), %r8d
	movl	$.L.str.14, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	jmp	.LBB2_65
.LBB2_70:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	28(%r11), %eax
	movq	%r11, %r13
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
	jmp	.LBB2_63
.LBB2_71:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %r15
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r11, %rdi
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	iso_year_adjust
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	24(%rdi), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB2_164
# %bb.72:                               #   in Loop: Header=BB2_2 Depth=1
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_165
.LBB2_73:                               #   in Loop: Header=BB2_2 Depth=1
	movl	24(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	je	.LBB2_167
# %bb.74:                               #   in Loop: Header=BB2_2 Depth=1
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_168
.LBB2_75:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+304(%rip), %rsi
	jmp	.LBB2_128
.LBB2_76:                               #   in Loop: Header=BB2_2 Depth=1
	movl	20(%r11), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1901, %ecx            # imm = 0xF893
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jg	.LBB2_146
# %bb.77:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$45, -256(%rbp)
	movl	$-1900, %eax            # imm = 0xF894
	subl	%ecx, %eax
	movl	%eax, %ecx
	jmp	.LBB2_149
.LBB2_78:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 32(%r11)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB2_91
# %bb.79:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %r12
	movq	%r11, %r13
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, %r14
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	jne	.LBB2_81
# %bb.80:                               #   in Loop: Header=BB2_2 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
.LBB2_81:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpl	$0, 32(%r13)
	setg	%al
	movq	_tzname(,%rax,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	strlen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_85
# %bb.82:                               # %.preheader14
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movq	%r12, %rdi
.LBB2_83:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %r15
	jae	.LBB2_237
# %bb.84:                               #   in Loop: Header=BB2_83 Depth=2
	movsbl	(%rbx,%rcx), %edx
	movl	%edx, (%rsi,%r15,4)
	addq	$1, %r15
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB2_83
.LBB2_85:                               #   in Loop: Header=BB2_2 Depth=1
	callq	__tz_unlock
	movq	%r12, %r9
	movq	%r14, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
	xorl	%esi, %esi
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	%r13, %r11
	jmp	.LBB2_227
.LBB2_86:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, %r12
	movq	%r8, %rbx
	movq	%r11, %r13
	movslq	24(%r11), %rax
	movq	_C_time_locale+192(,%rax,8), %rsi
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB2_92
# %bb.87:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	$0, %esi
	movq	%rbx, %r8
	movq	%r12, %r10
	movq	%r13, %r11
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB2_93
# %bb.88:                               # %.preheader
                                        #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB2_89:                               #   Parent Loop BB2_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.90:                               #   in Loop: Header=BB2_89 Depth=2
	movl	-1280(%rbp,%rcx,4), %edx
	movl	%edx, (%r8,%r15,4)
	addq	$1, %r15
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB2_89
	jmp	.LBB2_91
.LBB2_92:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
	xorl	%esi, %esi
	movq	%rbx, %r8
	movq	%r12, %r10
	jmp	.LBB2_176
.LBB2_93:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r14
	movq	-56(%rbp), %r9          # 8-byte Reload
	jmp	.LBB2_228
.LBB2_94:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+320(%rip), %rsi
	jmp	.LBB2_128
.LBB2_95:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r11, %rdi
	movq	%r11, -64(%rbp)         # 8-byte Spill
	callq	iso_year_adjust
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %r15d
	movl	20(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB2_97
# %bb.96:                               #   in Loop: Header=BB2_2 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	callq	abs
	movq	-64(%rbp), %rdi         # 8-byte Reload
.LBB2_97:                               #   in Loop: Header=BB2_2 Depth=1
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
	testl	%r15d, %r15d
	movq	-80(%rbp), %rsi         # 8-byte Reload
	js	.LBB2_171
# %bb.98:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB2_191
# %bb.99:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	$-1901, 20(%rdi)        # imm = 0xF893
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB2_192
# %bb.100:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	jmp	.LBB2_192
.LBB2_101:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%r11, %r13
	movl	28(%r11), %ecx
	addl	$1, %ecx
	movl	$.L.str.11, %edx
	jmp	.LBB2_64
.LBB2_102:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$79, %eax
	jne	.LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_104:                              #   in Loop: Header=BB2_2 Depth=1
	movl	8(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
	testl	%eax, %eax
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	je	.LBB2_107
# %bb.105:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$12, %eax
	je	.LBB2_107
# %bb.106:                              #   in Loop: Header=BB2_2 Depth=1
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
.LBB2_107:                              #   in Loop: Header=BB2_2 Depth=1
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%rdi, %r13
	cmpl	$73, (%rdi)
	movl	$.L.str.5, %eax
	movl	$.L.str.6, %edx
	cmoveq	%rax, %rdx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
# %bb.108:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r10
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jae	.LBB2_238
# %bb.109:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	%r15, %r8
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r13, %rdi
	jmp	.LBB2_228
.LBB2_110:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r8, %r15
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movq	%r11, %r13
	movl	16(%r11), %ecx
	addl	$1, %ecx
.LBB2_63:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.5, %edx
.LBB2_64:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
.LBB2_65:                               #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_239
# %bb.66:                               #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movl	$0, %esi
	movq	%r15, %r8
	movq	%r12, %r10
	movq	%r13, %r11
	jmp	.LBB2_139
.LBB2_111:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.112:                              #   in Loop: Header=BB2_2 Depth=1
	addq	%rbx, %r14
	addq	$1, %r14
	movl	$10, (%r12,%rbx,4)
	jmp	.LBB2_126
.LBB2_113:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+456(%rip), %rsi
	jmp	.LBB2_128
.LBB2_114:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	cmpl	$0, 32(%r11)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	js	.LBB2_172
# %bb.115:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r11, %r15
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	jne	.LBB2_117
# %bb.116:                              #   in Loop: Header=BB2_2 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
.LBB2_117:                              #   in Loop: Header=BB2_2 Depth=1
	callq	__gettzinfo
	xorl	%ecx, %ecx
	movq	%r15, -64(%rbp)         # 8-byte Spill
	cmpl	$0, 32(%r15)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	xorl	%r15d, %r15d
	subq	40(%rax,%rcx,8), %r15
	callq	__tz_unlock
	movq	-64(%rbp), %r11         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r10         # 8-byte Reload
	jmp	.LBB2_173
.LBB2_118:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.119:                              #   in Loop: Header=BB2_2 Depth=1
	addq	%rbx, %r14
	addq	$1, %r14
	movl	$9, (%r12,%rbx,4)
	jmp	.LBB2_126
.LBB2_120:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.121:                              #   in Loop: Header=BB2_2 Depth=1
	movl	24(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_125
# %bb.122:                              #   in Loop: Header=BB2_2 Depth=1
	addq	%rbx, %r14
	addq	$1, %r14
	movl	$55, (%r12,%rbx,4)
	jmp	.LBB2_126
.LBB2_123:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r15
	jae	.LBB2_239
# %bb.124:                              #   in Loop: Header=BB2_2 Depth=1
	movl	24(%r11), %eax
.LBB2_125:                              #   in Loop: Header=BB2_2 Depth=1
	addl	$48, %eax
	addq	%rbx, %r14
	addq	$1, %r14
	movl	%eax, (%r12,%rbx,4)
.LBB2_126:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_228
.LBB2_127:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movl	$0, -260(%rbp)
	leaq	-1280(%rbp), %rdi
	movl	$255, %edx
	movq	_C_time_locale+312(%rip), %rsi
.LBB2_128:                              #   in Loop: Header=BB2_2 Depth=1
	callq	mbstowcs
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	jne	.LBB2_130
# %bb.129:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_130:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -1280(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r10         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	je	.LBB2_133
# %bb.131:                              #   in Loop: Header=BB2_2 Depth=1
	subq	%r13, %r12
	movq	%r10, %r15
	subq	%r14, %r10
	subq	%rbx, %r10
	leaq	-1280(%rbp), %rdx
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r11, %r12
	movq	%r11, %rcx
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_239
# %bb.132:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r15, %r10
	movq	%r12, %r11
	jmp	.LBB2_226
.LBB2_133:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r14
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	jmp	.LBB2_226
.LBB2_134:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movl	20(%r11), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jns	.LBB2_136
# %bb.135:                              #   in Loop: Header=BB2_2 Depth=1
	addl	$1900, %eax             # imm = 0x76C
	movl	%eax, %edi
	movq	%r10, %r15
	callq	abs
	movq	%r15, %r10
.LBB2_136:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %rcx
	imulq	$1374389535, %rcx, %rax # imm = 0x51EB851F
	movq	%rax, %rdx
	shrq	$63, %rdx
	sarq	$37, %rax
	addl	%edx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %ecx
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_239
# %bb.137:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movl	$0, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r10
	jmp	.LBB2_138
.LBB2_140:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, 32(%r11)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB2_91
# %bb.141:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%r10, %r15
	movq	%r8, -72(%rbp)          # 8-byte Spill
	callq	__tz_lock
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -100(%rbp)          # 4-byte Folded Reload
	jne	.LBB2_143
# %bb.142:                              #   in Loop: Header=BB2_2 Depth=1
	callq	_tzset_unlocked
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -100(%rbp)          # 4-byte Folded Spill
.LBB2_143:                              #   in Loop: Header=BB2_2 Depth=1
	callq	__gettzinfo
	xorl	%ecx, %ecx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpl	$0, 32(%rdx)
	setg	%cl
	leaq	(%rcx,%rcx,4), %rcx
	movq	40(%rax,%rcx,8), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	__tz_unlock
	subq	%r13, %r12
	movq	%r15, %r13
	subq	%r14, %r15
	subq	%rbx, %r15
	movabsq	$-5247073869855161349, %rcx # imm = 0xB72EA61D950C83FB
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rax
	imulq	%rcx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$10, %rdx
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
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
	movq	%r15, %rsi
	movq	-80(%rbp), %rcx         # 8-byte Reload
	xorl	%eax, %eax
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
# %bb.144:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r13, %r10
	jmp	.LBB2_223
.LBB2_91:                               #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r14
	jmp	.LBB2_228
.LBB2_145:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r14
	xorl	%esi, %esi
	movq	%r12, %r8
	movq	-80(%rbp), %r10         # 8-byte Reload
	jmp	.LBB2_176
.LBB2_146:                              #   in Loop: Header=BB2_2 Depth=1
	addl	$1900, %ecx             # imm = 0x76C
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %eax         # 4-byte Reload
	cmpl	$43, %eax
	jne	.LBB2_214
# %bb.147:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$10000, %ecx            # imm = 0x2710
	jb	.LBB2_214
# %bb.148:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$43, -256(%rbp)
.LBB2_149:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB2_190
# %bb.150:                              #   in Loop: Header=BB2_2 Depth=1
	addq	$-1, %rdx
	leaq	-252(%rbp), %rdi
	movl	-96(%rbp), %eax         # 4-byte Reload
	jmp	.LBB2_215
.LBB2_151:                              #   in Loop: Header=BB2_2 Depth=1
	leal	1900(%r15), %edi
	movq	%r10, -80(%rbp)         # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	callq	abs
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	-80(%rbp), %r10         # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r9  # imm = 0x51EB851F
	movq	%r9, %rax
	shrq	$63, %rax
	sarq	$37, %r9
	addl	%eax, %r9d
.LBB2_152:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, %r8
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %ecx
	movl	-96(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB2_177
# %bb.153:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.2, %edx
	cmpl	$43, %eax
	jne	.LBB2_178
# %bb.154:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$100, %r9d
	jl	.LBB2_178
# %bb.155:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.3, %ecx
	jmp	.LBB2_178
.LBB2_156:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r10, %r15
	movl	$43, -252(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %edx
	jmp	.LBB2_186
.LBB2_157:                              #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, -120(%rbp)        # 4-byte Spill
	addl	$1900, %edi             # imm = 0x76C
	callq	abs
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cltq
	imulq	$1374389535, %rax, %r15 # imm = 0x51EB851F
	movq	%r15, %rax
	shrq	$63, %rax
	sarq	$37, %r15
	addl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	20(%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	jns	.LBB2_159
# %bb.158:                              #   in Loop: Header=BB2_2 Depth=1
	addl	$1900, %edi             # imm = 0x76C
	callq	abs
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edi
.LBB2_159:                              #   in Loop: Header=BB2_2 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
.LBB2_160:                              #   in Loop: Header=BB2_2 Depth=1
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
	js	.LBB2_193
# %bb.161:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%edx, %edx
	movb	-81(%rbp), %cl          # 1-byte Reload
	movb	%cl, %dl
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1901, -116(%rbp)      # 4-byte Folded Reload
                                        # imm = 0xF893
	jg	.LBB2_194
# %bb.162:                              #   in Loop: Header=BB2_2 Depth=1
	testl	%eax, %eax
	movq	-112(%rbp), %rcx        # 8-byte Reload
	je	.LBB2_195
# %bb.163:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB2_195
.LBB2_164:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$6, %edx
.LBB2_165:                              #   in Loop: Header=BB2_2 Depth=1
	movl	28(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testl	%eax, %eax
	movq	%r15, %r8
	jle	.LBB2_182
.LBB2_166:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_184
.LBB2_167:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$6, %eax
.LBB2_168:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r11, %r15
	movl	28(%r11), %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$7, %eax
	cltq
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	addl	%eax, %ecx
	addl	$7, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r12
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
# %bb.169:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %r10
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jae	.LBB2_238
# %bb.170:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r15, %r11
	jmp	.LBB2_226
.LBB2_171:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$-1899, 20(%rdi)        # imm = 0xF895
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	cmovll	%ecx, %r15d
	jmp	.LBB2_192
.LBB2_172:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%r15d, %r15d
.LBB2_173:                              #   in Loop: Header=BB2_2 Depth=1
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
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
	movslq	%edx, %r8
	leal	299(%rcx), %edi
	movslq	%edi, %rdi
	imulq	$1374389535, %rdi, %rdi # imm = 0x51EB851F
	movq	%rdi, %rdx
	shrq	$63, %rdx
	sarq	$39, %rdi
	addl	%edx, %edi
	movslq	%edi, %rdx
	imull	$365, %ecx, %ecx        # imm = 0x16D
	addl	$-25550, %ecx           # imm = 0x9C32
	movslq	%ecx, %rcx
	movslq	28(%r11), %rdi
	subq	%r8, %rdi
	addq	%rax, %rdi
	addq	%rdx, %rdi
	addq	%rcx, %rdi
	leaq	(%rdi,%rdi,2), %rax
	movslq	8(%r11), %rcx
	leaq	(%rcx,%rax,8), %rax
	imulq	$60, %rax, %rax
	movslq	4(%r11), %rcx
	addq	%rax, %rcx
	imulq	$60, %rcx, %rax
	movq	%r11, %r13
	movslq	(%r11), %rcx
	subq	%r15, %rcx
	addq	%rax, %rcx
	movl	$.L.str.13, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	movq	%r10, %r15
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
# %bb.174:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r10
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jae	.LBB2_238
# %bb.175:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
.LBB2_176:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r13, %r11
	jmp	.LBB2_226
.LBB2_177:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str, %edx
.LBB2_178:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %r8
	ja	.LBB2_180
# %bb.179:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r8d
.LBB2_180:                              #   in Loop: Header=BB2_2 Depth=1
	subq	%r13, %r12
	movq	%r10, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	xorl	%eax, %eax
	cmpl	$-1900, %r15d           # imm = 0xF894
	setl	%al
	movl	$.L.str.4, %edi
	cmovlq	%rdi, %rcx
	subq	%rax, %r8
	movq	%r12, %rdi
                                        # kill: def $r9d killed $r9d killed $r9
	xorl	%eax, %eax
	movq	%r10, %r15
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_239
# %bb.181:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	movl	$0, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r15, %r10
.LBB2_138:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-64(%rbp), %r11         # 8-byte Reload
.LBB2_139:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jb	.LBB2_228
	jmp	.LBB2_239
.LBB2_193:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$-1900, -116(%rbp)      # 4-byte Folded Reload
                                        # imm = 0xF894
	setl	%cl
	cmpl	$-1899, 20(%rsi)        # imm = 0xF895
	setl	%dl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	cmovll	%esi, %eax
	orb	%cl, %dl
	movzbl	%dl, %edx
.LBB2_194:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
.LBB2_195:                              #   in Loop: Header=BB2_2 Depth=1
	addl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB2_198
# %bb.196:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$100, %eax
	jne	.LBB2_200
# %bb.197:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	movl	$1, %esi
	jmp	.LBB2_199
.LBB2_182:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_212
# %bb.183:                              #   in Loop: Header=BB2_2 Depth=1
	subl	%edx, %esi
	movl	%esi, %eax
	addl	$10, %eax
	cltq
	imulq	$-1840700269, %rax, %rax # imm = 0x92492493
	shrq	$32, %rax
	leal	(%rax,%rsi), %ecx
	addl	$10, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$2, %ecx
	addl	%eax, %ecx
.LBB2_184:                              #   in Loop: Header=BB2_2 Depth=1
	subq	%r13, %r12
	movq	%r8, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movl	$.L.str.5, %edx
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	swprintf
	jmp	.LBB2_221
.LBB2_198:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$99, %eax
	movl	$-1, %esi
.LBB2_199:                              #   in Loop: Header=BB2_2 Depth=1
	addl	%esi, %r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB2_200:                              #   in Loop: Header=BB2_2 Depth=1
	imull	$100, %r15d, %esi
	addl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$45, %eax
	testl	%edx, %edx
	jne	.LBB2_203
# %bb.201:                              #   in Loop: Header=BB2_2 Depth=1
	leaq	-256(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	-96(%rbp), %eax         # 4-byte Reload
	cmpl	$43, %eax
	jne	.LBB2_206
# %bb.202:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$43, %eax
	cmpl	$10000, %esi            # imm = 0x2710
	jb	.LBB2_205
.LBB2_203:                              #   in Loop: Header=BB2_2 Depth=1
	movl	%eax, -256(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB2_207
# %bb.204:                              #   in Loop: Header=BB2_2 Depth=1
	addq	$-1, %rcx
	leaq	-252(%rbp), %rdi
.LBB2_205:                              #   in Loop: Header=BB2_2 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
.LBB2_206:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_208
.LBB2_185:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-248(%rbp), %rdi
	addq	$-6, %rdx
	je	.LBB2_188
.LBB2_186:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$30, %esi
	movq	%rdx, %rcx
	movl	$.L.str.8, %edx
	leaq	-248(%rbp), %rdi
	xorl	%eax, %eax
	callq	swprintf
	movl	$42, __A_VARIABLE(%rip)
	leaq	-248(%rbp), %rdi
	testl	%eax, %eax
	jle	.LBB2_188
# %bb.187:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	leaq	-248(%rbp), %rcx
	leaq	(%rcx,%rax,4), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB2_188:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.9, %esi
	callq	wcscpy
	subq	%r13, %r12
	movq	%r15, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	leaq	-256(%rbp), %rdx
	movq	%r12, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB2_238
# %bb.189:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
	movq	%r15, %r10
	jmp	.LBB2_225
.LBB2_207:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%ecx, %ecx
	leaq	-252(%rbp), %rdi
	movl	-96(%rbp), %eax         # 4-byte Reload
.LBB2_208:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$37, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%esi, -116(%rbp)        # 4-byte Spill
	je	.LBB2_210
# %bb.209:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$48, 4(%rdi)
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_211
.LBB2_210:                              #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
.LBB2_211:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.10, %esi
	callq	wcscpy
	subq	%r13, %r12
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	leaq	-256(%rbp), %rdx
	movq	%r12, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	-116(%rbp), %r8d        # 4-byte Reload
	jmp	.LBB2_220
.LBB2_190:                              #   in Loop: Header=BB2_2 Depth=1
	leaq	-252(%rbp), %rdi
	movl	-96(%rbp), %eax         # 4-byte Reload
	jmp	.LBB2_216
.LBB2_214:                              #   in Loop: Header=BB2_2 Depth=1
	leaq	-256(%rbp), %rdi
.LBB2_215:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB2_216:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$37, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	%r8, -72(%rbp)          # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	movq	%r10, %r15
	je	.LBB2_218
# %bb.217:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$48, 4(%rdi)
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_219
.LBB2_218:                              #   in Loop: Header=BB2_2 Depth=1
	addq	$4, %rdi
.LBB2_219:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.10, %esi
	callq	wcscpy
	subq	%r13, %r12
	movq	%r15, %rsi
	subq	%r14, %rsi
	subq	%rbx, %rsi
	leaq	-256(%rbp), %rdx
	movq	%r12, %rdi
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movl	-80(%rbp), %r8d         # 4-byte Reload
.LBB2_220:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%eax, %eax
	callq	swprintf
.LBB2_221:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
# %bb.222:                              #   in Loop: Header=BB2_2 Depth=1
	movq	%r15, %r10
	jmp	.LBB2_223
.LBB2_191:                              #   in Loop: Header=BB2_2 Depth=1
	xorl	%r15d, %r15d
.LBB2_192:                              #   in Loop: Header=BB2_2 Depth=1
	addl	%eax, %r15d
	subq	%r13, %r12
	subq	%r14, %rsi
	subq	%rbx, %rsi
	movslq	%r15d, %rax
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
	xorl	%eax, %eax
	callq	swprintf
	movq	-80(%rbp), %r10         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB2_238
.LBB2_223:                              #   in Loop: Header=BB2_2 Depth=1
	cltq
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r14
	jae	.LBB2_238
# %bb.224:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-72(%rbp), %r8          # 8-byte Reload
.LBB2_225:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-64(%rbp), %r11         # 8-byte Reload
.LBB2_226:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB2_227:                              #   in Loop: Header=BB2_2 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB2_228:                              #   in Loop: Header=BB2_2 Depth=1
	cmpl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_234
# %bb.229:                              #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdi), %eax
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rdx
	testl	%eax, %eax
	jne	.LBB2_2
	jmp	.LBB2_233
.LBB2_212:                              #   in Loop: Header=BB2_2 Depth=1
	subl	%esi, %edx
	movl	20(%rdi), %ecx
	testl	%ecx, %ecx
	movl	$1899, %esi             # imm = 0x76B
	movl	$-101, %eax
	cmovsl	%esi, %eax
	addl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %al
	je	.LBB2_230
.LBB2_213:                              #   in Loop: Header=BB2_2 Depth=1
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%cl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_231
.LBB2_230:                              #   in Loop: Header=BB2_2 Depth=1
	imull	$-1030792151, %eax, %esi # imm = 0xC28F5C29
	addl	$85899344, %esi         # imm = 0x51EB850
	rorl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %cl
	cmpl	$42949672, %esi         # imm = 0x28F5C28
	jbe	.LBB2_213
.LBB2_231:                              #   in Loop: Header=BB2_2 Depth=1
	movzbl	%cl, %eax
	subl	%eax, %edx
	xorl	%ecx, %ecx
	cmpl	$5, %edx
	setl	%cl
	orl	$52, %ecx
	jmp	.LBB2_166
.LBB2_232:
	xorl	%r14d, %r14d
	jmp	.LBB2_233
.LBB2_6:                                # %.loopexit17
	addq	%rbx, %r14
.LBB2_233:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_234:
	movq	%r14, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r10, %r10
	je	.LBB2_236
# %bb.235:
	movl	$0, (%r8,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_236:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
	addq	$1240, %rsp             # imm = 0x4D8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_237:
	callq	__tz_unlock
.LBB2_238:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_239:
	xorl	%esi, %esi
	jmp	.LBB2_236
.Lfunc_end2:
	.size	__strftime, .Lfunc_end2-__strftime
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_39
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_41
	.quad	.LBB2_46
	.quad	.LBB2_51
	.quad	.LBB2_53
	.quad	.LBB2_236
	.quad	.LBB2_57
	.quad	.LBB2_60
	.quad	.LBB2_23
	.quad	.LBB2_104
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_62
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_26
	.quad	.LBB2_236
	.quad	.LBB2_67
	.quad	.LBB2_68
	.quad	.LBB2_69
	.quad	.LBB2_70
	.quad	.LBB2_71
	.quad	.LBB2_73
	.quad	.LBB2_75
	.quad	.LBB2_76
	.quad	.LBB2_78
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_236
	.quad	.LBB2_86
	.quad	.LBB2_33
	.quad	.LBB2_94
	.quad	.LBB2_38
	.quad	.LBB2_38
	.quad	.LBB2_236
	.quad	.LBB2_95
	.quad	.LBB2_33
	.quad	.LBB2_236
	.quad	.LBB2_101
	.quad	.LBB2_23
	.quad	.LBB2_102
	.quad	.LBB2_110
	.quad	.LBB2_111
	.quad	.LBB2_236
	.quad	.LBB2_26
	.quad	.LBB2_236
	.quad	.LBB2_113
	.quad	.LBB2_114
	.quad	.LBB2_118
	.quad	.LBB2_120
	.quad	.LBB2_236
	.quad	.LBB2_123
	.quad	.LBB2_127
	.quad	.LBB2_134
	.quad	.LBB2_140
                                        # -- End function
	.text
	.globl	wcsftime_l              # -- Begin function wcsftime_l
	.p2align	4, 0x90
	.type	wcsftime_l,@function
wcsftime_l:                             # @wcsftime_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__strftime
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %al
	je	.LBB4_1
.LBB4_2:
	imull	$-1030792151, %eax, %eax # imm = 0xC28F5C29
	addl	$85899344, %eax         # imm = 0x51EB850
	rorl	$4, %eax
	xorl	%edx, %edx
	cmpl	$10737419, %eax         # imm = 0xA3D70B
	setb	%dl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_3
.LBB4_1:
	imull	$-1030792151, %eax, %ecx # imm = 0xC28F5C29
	addl	$85899344, %ecx         # imm = 0x51EB850
	rorl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	cmpl	$42949672, %ecx         # imm = 0x28F5C28
	jbe	.LBB4_2
.LBB4_3:
	movl	24(%rdi), %eax
	movl	28(%rdi), %ecx
	shll	$4, %ecx
	leal	(%rcx,%rax,2), %ecx
	orl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %ecx
	ja	.LBB4_4
# %bb.9:
	movl	$-1, %eax
	movabsq	$13690420227, %rdx      # imm = 0x330033C03
	btq	%rcx, %rdx
	jb	.LBB4_8
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
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_7:
	xorl	%eax, %eax
	jmp	.LBB4_8
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
