	.text
	.file	"util.c"
	.globl	stringmatchlen          # -- Begin function stringmatchlen
	.p2align	4, 0x90
	.type	stringmatchlen,@function
stringmatchlen:                         # @stringmatchlen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_1:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpb	(%rax), %r14b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_71
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r14d
	movq	%r13, %rbx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %r13
	movq	%r13, -64(%rbp)         # 8-byte Spill
	leaq	1(%rbx), %r13
	leal	-1(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ecx
	je	.LBB0_60
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_23 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_64
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	testl	%r15d, %r15d
	je	.LBB0_64
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movsbl	(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$90, %eax
	jle	.LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$91, %eax
	je	.LBB0_13
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	cmpl	$92, %eax
	jne	.LBB0_16
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB0_16
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %r13
	addl	$-1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=1
	cmpl	$63, %eax
	jne	.LBB0_15
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	movb	1(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$94, %al
	movb	%al, -41(%rbp)          # 1-byte Spill
	jne	.LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=1
	addq	$2, %r13
	addl	$-2, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_19
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	cmpl	$42, %eax
	je	.LBB0_57
.LBB0_16:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbl	(%r13), %r14d
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_1
# %bb.17:                               #   in Loop: Header=BB0_4 Depth=1
	callq	__locale_ctype_ptr
	movslq	%r14d, %rbx
	movb	1(%rax,%rbx), %al
	andb	$3, %al
	addl	$32, %ebx
	cmpb	$1, %al
	cmovnel	%r14d, %ebx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movsbq	(%rax), %r14
	callq	__locale_ctype_ptr
	movb	1(%rax,%r14), %al
	andb	$3, %al
	leal	32(%r14), %ecx
	cmpb	$1, %al
	cmovnel	%r14d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	je	.LBB0_2
	jmp	.LBB0_71
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=1
	addq	$1, %r13
	addl	$-1, %r15d
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=1
	movl	%r15d, %r14d
	movq	%r13, %rbx
	movq	-64(%rbp), %r13         # 8-byte Reload
	xorl	%edx, %edx
	jmp	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_23 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB0_21:                               #   in Loop: Header=BB0_23 Depth=2
	addq	$2, %rbx
	addl	$-2, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:                               #   in Loop: Header=BB0_23 Depth=2
	addq	$1, %rbx
	addl	$-1, %r14d
.LBB0_23:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	jl	.LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_23 Depth=2
	cmpb	$92, %al
	jne	.LBB0_28
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=2
	addl	$-1, %r14d
	movzbl	1(%rbx), %eax
	addq	$1, %rbx
.LBB0_26:                               #   in Loop: Header=BB0_23 Depth=2
	cmpb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_22
.LBB0_27:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$93, %al
	je	.LBB0_53
# %bb.29:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_52
# %bb.30:                               #   in Loop: Header=BB0_23 Depth=2
	movsbl	%al, %r15d
	movzbl	1(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r14d
	jl	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_23 Depth=2
	cmpb	$45, %cl
	jne	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_23 Depth=2
	movsbl	2(%rbx), %r12d
	movsbl	(%r13), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r12b, %al
	jle	.LBB0_40
# %bb.33:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	jmp	.LBB0_41
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_26
# %bb.35:                               #   in Loop: Header=BB0_23 Depth=2
	movl	%edx, -52(%rbp)         # 4-byte Spill
	callq	__locale_ctype_ptr
	movslq	%r15d, %rcx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_23 Depth=2
	addl	$32, %r15d
.LBB0_37:                               #   in Loop: Header=BB0_23 Depth=2
	movsbq	(%r13), %r12
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r12), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_23 Depth=2
	addl	$32, %r12d
.LBB0_39:                               #   in Loop: Header=BB0_23 Depth=2
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r15d
	jne	.LBB0_22
	jmp	.LBB0_27
.LBB0_40:                               #   in Loop: Header=BB0_23 Depth=2
	movl	%r12d, %eax
	movl	%r15d, %r12d
.LBB0_41:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -68(%rbp)           # 4-byte Folded Reload
	je	.LBB0_49
# %bb.42:                               #   in Loop: Header=BB0_23 Depth=2
	movl	%eax, %r15d
	movl	%edx, -52(%rbp)         # 4-byte Spill
	callq	__locale_ctype_ptr
	movslq	%r12d, %rcx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_23 Depth=2
	addl	$32, %r12d
.LBB0_44:                               #   in Loop: Header=BB0_23 Depth=2
	callq	__locale_ctype_ptr
	movslq	%r15d, %rcx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_23 Depth=2
	movl	%r15d, %edx
	addl	$32, %edx
	movl	%edx, %r15d
.LBB0_46:                               #   in Loop: Header=BB0_23 Depth=2
	callq	__locale_ctype_ptr
	movslq	%r13d, %rcx
	movzbl	1(%rax,%rcx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_23 Depth=2
	addl	$32, %r13d
.LBB0_48:                               #   in Loop: Header=BB0_23 Depth=2
	movl	-52(%rbp), %edx         # 4-byte Reload
	movl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_49:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r13d
	jl	.LBB0_20
# %bb.50:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r13d
	movq	-64(%rbp), %r13         # 8-byte Reload
	jg	.LBB0_21
# %bb.51:                               #   in Loop: Header=BB0_23 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	jmp	.LBB0_21
.LBB0_52:                               #   in Loop: Header=BB0_4 Depth=1
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB0_53:                               #   in Loop: Header=BB0_4 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$94, %al
	jne	.LBB0_55
# %bb.54:                               #   in Loop: Header=BB0_4 Depth=1
	xorl	%eax, %eax
	testl	%edx, %edx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
.LBB0_55:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_3
	jmp	.LBB0_72
.LBB0_57:
	leaq	1(%r13), %r14
	cmpb	$42, 1(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_66
# %bb.58:                               # %.preheader1
	movl	-48(%rbp), %ecx         # 4-byte Reload
	.p2align	4, 0x90
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$42, 1(%r14)
	leaq	1(%r14), %r14
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_59
	jmp	.LBB0_67
.LBB0_60:
	xorl	%ecx, %ecx
	cmpb	$42, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.61:                               # %.preheader
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$42, 2(%rbx,%r15)
	leaq	1(%r15), %r15
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_62
# %bb.63:                               # %.loopexit
	notl	%r15d
	addl	%r14d, %r15d
	xorl	%ecx, %ecx
.LBB0_64:
	xorl	%r13d, %r13d
	orl	%r15d, %ecx
	sete	%r13b
	movl	$42, __A_VARIABLE(%rip)
.LBB0_65:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_73
.LBB0_66:
	movl	-48(%rbp), %ecx         # 4-byte Reload
.LBB0_67:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	cmpl	$1, %r15d
	je	.LBB0_73
# %bb.68:
	addl	$-1, %r15d
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_69:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%r12, %rdx
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movl	%ecx, %ebx
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_65
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	movl	%ebx, %ecx
	jne	.LBB0_69
.LBB0_71:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_72:
	xorl	%r13d, %r13d
.LBB0_73:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	stringmatchlen, .Lfunc_end0-stringmatchlen
                                        # -- End function
	.globl	stringmatch             # -- Begin function stringmatch
	.p2align	4, 0x90
	.type	stringmatch,@function
stringmatch:                            # @stringmatch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	strlen
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movq	%r15, %rdx
	movl	%eax, %ecx
	movl	%r14d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	stringmatch, .Lfunc_end1-stringmatch
                                        # -- End function
	.globl	stringmatchlen_fuzz_test # -- Begin function stringmatchlen_fuzz_test
	.p2align	4, 0x90
	.type	stringmatchlen_fuzz_test,@function
stringmatchlen_fuzz_test:               # @stringmatchlen_fuzz_test
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	movl	$9999999, %r14d         # imm = 0x98967F
	jmp	.LBB2_1
	.p2align	4, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	leaq	-80(%rbp), %rdi
	movl	%r12d, %esi
	leaq	-112(%rbp), %rdx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	xorl	%r8d, %r8d
	callq	stringmatchlen
	addl	%eax, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subl	$1, %r14d
	jb	.LBB2_8
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #     Child Loop BB2_6 Depth 2
	callq	rand
	movl	%eax, %ebx
	callq	rand
	movl	%eax, %r12d
	andl	$31, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %ebx
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	je	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-44(%rbp), %r15d        # 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	leal	127(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$128, %ecx
	subl	%ecx, %eax
	movb	%al, -112(%rbp,%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB2_3
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB2_7
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movl	%r12d, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_6:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
                                        # kill: def $eax killed $eax def $rax
	leal	127(%rax), %ecx
	testl	%eax, %eax
	cmovnsl	%eax, %ecx
	andl	$128, %ecx
	subl	%ecx, %eax
	movb	%al, -80(%rbp,%rbx)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	jne	.LBB2_6
	jmp	.LBB2_7
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	stringmatchlen_fuzz_test, .Lfunc_end2-stringmatchlen_fuzz_test
                                        # -- End function
	.globl	memtoll                 # -- Begin function memtoll
	.p2align	4, 0x90
	.type	memtoll,@function
memtoll:                                # @memtoll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_2
# %bb.1:
	movl	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	movb	(%r15), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
	cmpb	$45, %al
	jne	.LBB3_4
# %bb.3:
	leaq	1(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%r15), %al
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB3_7
	.p2align	4, 0x90
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	callq	__locale_ctype_ptr
	movsbq	(%rbx), %rcx
	testb	$4, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_17
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 1(%rbx)
	leaq	1(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_5
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:
	subl	%r15d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %ebx
	jb	.LBB3_12
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_27
.LBB3_11:
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB3_31
.LBB3_12:
	leaq	-176(%rbp), %r12
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, -176(%rbp,%rbx)
	callq	__errno
	movl	$0, (%rax)
	leaq	-48(%rbp), %rsi
	movq	%r12, %rdi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB3_14
# %bb.13:
	callq	__errno
	cmpl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_15
.LBB3_14:
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_28
.LBB3_15:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_29
# %bb.16:
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_29:
	xorl	%ebx, %ebx
	jmp	.LBB3_30
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	testb	%cl, %cl
	je	.LBB3_8
# %bb.18:
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_8
# %bb.19:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_32
# %bb.20:
	movl	$.L.str.2, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_33
# %bb.21:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_34
# %bb.22:
	movl	$.L.str.4, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_35
# %bb.23:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_36
# %bb.24:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_37
# %bb.25:
	testq	%r14, %r14
	jne	.LBB3_11
.LBB3_27:
	xorl	%ebx, %ebx
	jmp	.LBB3_31
.LBB3_28:
	imulq	%r13, %rbx
.LBB3_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_32:
	movl	$1000, %r13d            # imm = 0x3E8
	jmp	.LBB3_8
.LBB3_33:
	movl	$1024, %r13d            # imm = 0x400
	jmp	.LBB3_8
.LBB3_34:
	movl	$1000000, %r13d         # imm = 0xF4240
	jmp	.LBB3_8
.LBB3_35:
	movl	$1048576, %r13d         # imm = 0x100000
	jmp	.LBB3_8
.LBB3_36:
	movl	$1000000000, %r13d      # imm = 0x3B9ACA00
	jmp	.LBB3_8
.LBB3_37:
	movl	$1073741824, %r13d      # imm = 0x40000000
	jmp	.LBB3_9
.Lfunc_end3:
	.size	memtoll, .Lfunc_end3-memtoll
                                        # -- End function
	.globl	digits10                # -- Begin function digits10
	.p2align	4, 0x90
	.type	digits10,@function
digits10:                               # @digits10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpq	$10, %rdi
	jb	.LBB4_13
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %eax
	cmpq	$100, %rdi
	jb	.LBB4_13
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$3, %eax
	cmpq	$1000, %rdi             # imm = 0x3E8
	jb	.LBB4_13
# %bb.3:
	movq	%rdi, %rax
	shrq	$12, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$244140624, %rax        # imm = 0xE8D4A50
	ja	.LBB4_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$99999999, %rdi         # imm = 0x5F5E0FF
	ja	.LBB4_9
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$999999, %rdi           # imm = 0xF423F
	ja	.LBB4_8
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %eax
	cmpq	$10000, %rdi            # imm = 0x2710
	jb	.LBB4_13
# %bb.7:
	xorl	%eax, %eax
	cmpq	$99999, %rdi            # imm = 0x1869F
	seta	%al
	addl	$5, %eax
	jmp	.LBB4_13
.LBB4_12:
	movabsq	$2535301200456458803, %rcx # imm = 0x232F33025BD42233
	movq	%rdi, %rax
	mulq	%rcx
	movq	%rdx, %rdi
	shrq	$37, %rdi
	callq	digits10
	addl	$12, %eax
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB4_9:
	movq	%rdi, %rax
	shrq	$10, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9765624, %rax          # imm = 0x9502F8
	ja	.LBB4_11
# %bb.10:
	xorl	%eax, %eax
	cmpq	$999999999, %rdi        # imm = 0x3B9AC9FF
	seta	%al
	addl	$9, %eax
	jmp	.LBB4_13
.LBB4_8:
	xorl	%eax, %eax
	cmpq	$9999999, %rdi          # imm = 0x98967F
	seta	%al
	addl	$7, %eax
	jmp	.LBB4_13
.LBB4_11:
	shrq	$11, %rdi
	xorl	%eax, %eax
	cmpq	$48828124, %rdi         # imm = 0x2E90EDC
	seta	%al
	addl	$11, %eax
	jmp	.LBB4_13
.Lfunc_end4:
	.size	digits10, .Lfunc_end4-digits10
                                        # -- End function
	.globl	sdigits10               # -- Begin function sdigits10
	.p2align	4, 0x90
	.type	sdigits10,@function
sdigits10:                              # @sdigits10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	js	.LBB5_1
# %bb.2:
	callq	digits10
	jmp	.LBB5_3
.LBB5_1:
	movq	%rdi, %rax
	negq	%rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	cmpq	%rcx, %rdi
	cmoveq	%rdi, %rax
	movq	%rax, %rdi
	callq	digits10
	addl	$1, %eax
.LBB5_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sdigits10, .Lfunc_end5-sdigits10
                                        # -- End function
	.globl	ll2string               # -- Begin function ll2string
	.p2align	4, 0x90
	.type	ll2string,@function
ll2string:                              # @ll2string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	js	.LBB6_2
# %bb.1:
	xorl	%ebx, %ebx
	jmp	.LBB6_3
.LBB6_2:
	movq	%r13, %rax
	negq	%rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	cmpq	%rcx, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	digits10
	movl	%eax, %r8d
	addl	%ebx, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r8
	jae	.LBB6_14
# %bb.4:
	movb	$0, (%r14,%r8)
	leal	-1(%r8), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r9d
	cmpq	$100, %r13
	jb	.LBB6_5
# %bb.6:                                # %.preheader
	movabsq	$2951479051793528259, %rdi # imm = 0x28F5C28F5C28F5C3
	.p2align	4, 0x90
.LBB6_7:                                # =>This Inner Loop Header: Depth=1
	movq	%r13, %rax
	shrq	$2, %rax
	mulq	%rdi
	shrq	$2, %rdx
	imull	$100, %edx, %eax
	movl	%r13d, %ebx
	subl	%eax, %ebx
	movzbl	ll2string.digits+1(%rbx,%rbx), %eax
	movl	%esi, %ecx
	movb	%al, (%r14,%rcx)
	movzbl	ll2string.digits(%rbx,%rbx), %eax
	leal	-1(%rsi), %ecx
	movb	%al, (%r14,%rcx)
	addl	$-2, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9999, %r13             # imm = 0x270F
	movq	%rdx, %r13
	ja	.LBB6_7
	jmp	.LBB6_8
.LBB6_5:
	movq	%r13, %rdx
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %rdx
	ja	.LBB6_10
# %bb.9:
	addb	$48, %dl
	jmp	.LBB6_11
.LBB6_10:
	addl	%edx, %edx
	movslq	%edx, %rax
	movb	ll2string.digits+1(%rax), %cl
	movl	%esi, %edx
	movb	%cl, (%r14,%rdx)
	movb	ll2string.digits(%rax), %dl
	addl	$-1, %esi
.LBB6_11:
	movl	%esi, %eax
	movb	%dl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	je	.LBB6_13
# %bb.12:
	movb	$45, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_13:
	movl	%r8d, %r15d
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ll2string, .Lfunc_end6-ll2string
                                        # -- End function
	.globl	string2ll               # -- Begin function string2ll
	.p2align	4, 0x90
	.type	string2ll,@function
string2ll:                              # @string2ll
# %bb.0:
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB7_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rdi), %cl
	cmpq	$1, %rsi
	jne	.LBB7_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	jne	.LBB7_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB7_27
# %bb.5:
	movq	$0, (%rdx)
.LBB7_26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_27
.LBB7_6:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r11d
	cmpb	$45, %cl
	jne	.LBB7_7
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rsi
	je	.LBB7_27
# %bb.9:
	addq	$1, %rdi
	movb	(%rdi), %cl
	movl	$1, %r8d
	movl	$2, %r11d
	jmp	.LBB7_10
.LBB7_1:
	xorl	%eax, %eax
	jmp	.LBB7_27
.LBB7_7:
	xorl	%r8d, %r8d
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$49, %cl
	jl	.LBB7_27
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %cl
	jg	.LBB7_27
# %bb.12:
	movsbq	%cl, %r9
	addq	$-48, %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r11
	jae	.LBB7_19
# %bb.13:                               # %.preheader
	addq	$1, %rdi
	movabsq	$1844674407370955161, %r10 # imm = 0x1999999999999999
	.p2align	4, 0x90
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	movsbq	(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rbx
	jl	.LBB7_26
# %bb.15:                               #   in Loop: Header=BB7_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$57, %bl
	jg	.LBB7_26
# %bb.16:                               #   in Loop: Header=BB7_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r9
	ja	.LBB7_27
# %bb.17:                               #   in Loop: Header=BB7_14 Depth=1
	addq	%r9, %r9
	leaq	(%r9,%r9,4), %rcx
	movl	$47, %r9d
	subq	%rbx, %r9
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %rcx
	ja	.LBB7_27
# %bb.18:                               #   in Loop: Header=BB7_14 Depth=1
	leaq	(%rcx,%rbx), %r9
	addq	$-48, %r9
	addq	$1, %r11
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	cmpq	%rsi, %r11
	jb	.LBB7_14
.LBB7_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB7_23
# %bb.20:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r9
	ja	.LBB7_27
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB7_27
# %bb.22:
	negq	%r9
	jmp	.LBB7_25
.LBB7_23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	js	.LBB7_27
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rdx, %rdx
	je	.LBB7_27
.LBB7_25:
	movq	%r9, (%rdx)
	jmp	.LBB7_26
.LBB7_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.Lfunc_end7:
	.size	string2ll, .Lfunc_end7-string2ll
                                        # -- End function
	.globl	string2l                # -- Begin function string2l
	.p2align	4, 0x90
	.type	string2l,@function
string2l:                               # @string2l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	leaq	-16(%rbp), %rdx
	callq	string2ll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_1
# %bb.2:
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rbx)
	movl	$1, %eax
	jmp	.LBB8_3
.LBB8_1:
	xorl	%eax, %eax
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	string2l, .Lfunc_end8-string2l
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function string2ld
.LCPI9_0:
	.long	2139095040              # float +Inf
.LCPI9_1:
	.long	4286578688              # float -Inf
	.text
	.globl	string2ld
	.p2align	4, 0x90
	.type	string2ld,@function
string2ld:                              # @string2ld
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$5152, %rsp             # imm = 0x1420
	movq	%rsi, %rbx
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5119, %rsi             # imm = 0x13FF
	ja	.LBB9_3
# %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %rsi
	leaq	-5184(%rbp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	memcpy
	movb	$0, -5184(%rbp,%rbx)
	callq	__errno
	movl	$0, (%rax)
	leaq	-64(%rbp), %rsi
	movq	%r12, %rdi
	callq	strtold
	fstpt	-44(%rbp)               # 10-byte Folded Spill
	callq	__locale_ctype_ptr
	movsbq	-5184(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_3
# %bb.2:
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_4
.LBB9_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$5152, %rsp             # imm = 0x1420
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_4:
	callq	__errno
	cmpl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_8
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	fldz
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fucomi	%st(1), %st
	fstp	%st(1)
	jne	.LBB9_6
	jnp	.LBB9_13
.LBB9_6:
	flds	.LCPI9_0(%rip)
	fxch	%st(1)
	fucomi	%st(1), %st
	fstp	%st(1)
	jae	.LBB9_13
# %bb.7:
	flds	.LCPI9_1(%rip)
	fucompi	%st(1), %st
	fstp	%st(0)
	jae	.LBB9_3
.LBB9_8:
	callq	__errno
	cmpl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_3
# %bb.9:
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fstpl	-56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_3
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	testq	%r14, %r14
	je	.LBB9_3
# %bb.11:
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fstpt	(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_3
.LBB9_13:
	fstp	%st(0)
	jmp	.LBB9_3
.Lfunc_end9:
	.size	string2ld, .Lfunc_end9-string2ld
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function d2string
.LCPI10_0:
	.quad	-4382002437431492610    # double -4503599627370495
.LCPI10_1:
	.quad	4841369599423283200     # double 4503599627370496
.LCPI10_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	d2string
	.p2align	4, 0x90
	.type	d2string,@function
d2string:                               # @d2string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_1
# %bb.3:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB10_7
# %bb.4:
	xorpd	%xmm0, %xmm0
	ucomisd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB10_6
# %bb.5:
	movl	$.L.str.8, %edx
	jmp	.LBB10_2
.LBB10_1:
	movl	$.L.str.7, %edx
	jmp	.LBB10_2
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jne	.LBB10_11
	jp	.LBB10_11
# %bb.8:
	movsd	.LCPI10_2(%rip), %xmm1  # xmm1 = mem[0],zero
	divsd	-24(%rbp), %xmm1        # 8-byte Folded Reload
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB10_10
# %bb.9:
	movl	$.L.str.10, %edx
	jmp	.LBB10_2
.LBB10_6:
	movl	$.L.str.9, %edx
	jmp	.LBB10_2
.LBB10_11:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI10_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB10_15
# %bb.12:
	movsd	.LCPI10_1(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-24(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB10_15
# %bb.13:
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cvttsd2si	%xmm1, %rdx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rdx, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_15
	jp	.LBB10_15
# %bb.14:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	ll2string
	jmp	.LBB10_16
.LBB10_15:
	movl	$.L.str.12, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_17
.LBB10_10:
	movl	$.L.str.11, %edx
.LBB10_2:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	snprintf
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	d2string, .Lfunc_end10-d2string
                                        # -- End function
	.globl	ld2string               # -- Begin function ld2string
	.p2align	4, 0x90
	.type	ld2string,@function
ld2string:                              # @ld2string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	fldt	16(%rbp)
	fld	%st(0)
	fstpt	-44(%rbp)               # 10-byte Folded Spill
	fstpl	-56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_4
# %bb.1:
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$5, %r15
	jb	.LBB11_17
# %bb.2:
	fldz
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fucompi	%st(1), %st
	fstp	%st(0)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB11_11
# %bb.3:
	movl	$3, %ebx
	movl	$.L.str.9, %esi
	movl	$3, %edx
	jmp	.LBB11_12
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB11_10
# %bb.5:
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	xorl	%r12d, %r12d
	movl	$.L.str.13, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	snprintf
	movslq	%eax, %rbx
	leaq	1(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	ja	.LBB11_17
# %bb.6:
	movq	%r14, %rdi
	movl	$46, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_16
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movb	-1(%r14,%rbx), %al
	.p2align	4, 0x90
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %al
	jne	.LBB11_13
# %bb.9:                                #   in Loop: Header=BB11_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-2(%r14,%rbx), %eax
	addq	$-1, %rbx
	jmp	.LBB11_8
.LBB11_10:
	fldt	-44(%rbp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	xorl	%r12d, %r12d
	movl	$.L.str.14, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	snprintf
	movslq	%eax, %rbx
	leaq	1(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jbe	.LBB11_16
	jmp	.LBB11_17
.LBB11_11:
	movl	$4, %ebx
	movl	$.L.str.8, %esi
	movl	$4, %edx
.LBB11_12:
	movq	%r14, %rdi
	callq	memcpy
.LBB11_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_16:
	movb	$0, (%r14,%rbx)
	movl	%ebx, %r12d
.LBB11_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$46, %al
	jne	.LBB11_15
# %bb.14:
	addq	$-1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_15
.Lfunc_end11:
	.size	ld2string, .Lfunc_end11-ld2string
                                        # -- End function
	.globl	getRandomBytes          # -- Begin function getRandomBytes
	.p2align	4, 0x90
	.type	getRandomBytes,@function
getRandomBytes:                         # @getRandomBytes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, getRandomBytes.seed_initialized(%rip)
	jne	.LBB12_8
# %bb.1:
	movl	$.L.str.15, %edi
	movl	$.L.str.16, %esi
	callq	fopen
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_3
# %bb.2:
	movl	$getRandomBytes.seed, %edi
	movl	$20, %esi
	movl	$1, %edx
	movq	%r15, %rcx
	callq	fread
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	jne	.LBB12_3
# %bb.12:
	movb	$1, getRandomBytes.seed_initialized(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_6
.LBB12_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-20, %rbx
	.p2align	4, 0x90
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	leaq	65376(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	65376(%rbp), %r12d
	xorl	%r15d, %r12d
	xorl	65384(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	callq	getpid
	xorl	%r12d, %eax
	movb	%al, getRandomBytes.seed+20(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	jne	.LBB12_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB12_7
.LBB12_6:
	movq	%r15, %rdi
	callq	fclose
	movl	$42, __A_VARIABLE(%rip)
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB12_11
# %bb.9:
	leaq	-160(%rbp), %r15
	leaq	-64(%rbp), %r12
	.p2align	4, 0x90
.LBB12_10:                              # =>This Inner Loop Header: Depth=1
	cmpq	$20, %r13
	movl	$20, %ebx
	cmovbq	%r13, %rbx
	movq	%r15, %rdi
	callq	SHA1Init
	movl	$getRandomBytes.seed, %esi
	movq	%r15, %rdi
	movl	$20, %edx
	callq	SHA1Update
	movl	$getRandomBytes.counter, %esi
	movq	%r15, %rdi
	movl	$8, %edx
	callq	SHA1Update
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	SHA1Final
	addq	$1, getRandomBytes.counter(%rip)
	movq	%r14, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	jne	.LBB12_10
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	getRandomBytes, .Lfunc_end12-getRandomBytes
                                        # -- End function
	.globl	getRandomHexChars       # -- Begin function getRandomHexChars
	.p2align	4, 0x90
	.type	getRandomHexChars,@function
getRandomHexChars:                      # @getRandomHexChars
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	getRandomBytes
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB13_7
# %bb.1:
	movl	%r14d, %ecx
	andl	$1, %ecx
	cmpq	$1, %r14
	jne	.LBB13_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB13_5
.LBB13_3:
	subq	%rcx, %r14
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rax), %edx
	andl	$15, %edx
	movzbl	.L.str.17(%rdx), %edx
	movb	%dl, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rax), %edx
	andl	$15, %edx
	movzbl	.L.str.17(%rdx), %edx
	movb	%dl, 1(%rbx,%rax)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jne	.LBB13_4
.LBB13_5:
	testq	%rcx, %rcx
	je	.LBB13_7
# %bb.6:
	movzbl	(%rbx,%rax), %ecx
	andl	$15, %ecx
	movb	.L.str.17(%rcx), %cl
	movb	%cl, (%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	getRandomHexChars, .Lfunc_end13-getRandomHexChars
                                        # -- End function
	.globl	getAbsolutePath         # -- Begin function getAbsolutePath
	.p2align	4, 0x90
	.type	getAbsolutePath,@function
getAbsolutePath:                        # @getAbsolutePath
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$1024, %rsp             # imm = 0x400
	callq	sdsnew
	movl	$.L.str.18, %esi
	movq	%rax, %rdi
	callq	sdstrim
	movq	%rax, %rbx
	cmpb	$47, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_60
# %bb.1:
	leaq	-1056(%rbp), %rdi
	movl	$1024, %esi             # imm = 0x400
	callq	getcwd
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_2
# %bb.3:
	leaq	-1056(%rbp), %rdi
	callq	sdsnew
	movq	%rax, %r14
	movzbl	-1(%rax), %eax
	movq	%r14, %r15
	addq	$-1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB14_9
# %bb.4:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_0(,%rcx,8)
.LBB14_10:
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB14_11
.LBB14_2:
	movq	%rbx, %rdi
	callq	sdsfree
	xorl	%ebx, %ebx
	jmp	.LBB14_60
.LBB14_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_22
.LBB14_5:
	movzbl	-3(%r14), %ecx
	jmp	.LBB14_11
.LBB14_6:
	movzwl	-5(%r14), %ecx
	jmp	.LBB14_11
.LBB14_7:
	movl	-9(%r14), %ecx
	jmp	.LBB14_11
.LBB14_8:
	movq	-17(%r14), %rcx
.LBB14_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB14_22
# %bb.12:
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB14_13
# %bb.14:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_1(,%rcx,8)
.LBB14_15:
	shrq	$3, %rax
	jmp	.LBB14_20
.LBB14_13:
	xorl	%eax, %eax
	jmp	.LBB14_20
.LBB14_16:
	movzbl	-3(%r14), %eax
	jmp	.LBB14_20
.LBB14_17:
	movzwl	-5(%r14), %eax
	jmp	.LBB14_20
.LBB14_18:
	movl	-9(%r14), %eax
	jmp	.LBB14_20
.LBB14_19:
	movq	-17(%r14), %rax
.LBB14_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, -1(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_22
# %bb.21:
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	sdscat
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
	addq	$-1, %r15
.LBB14_22:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-3(%r14), %r12
	jmp	.LBB14_23
	.p2align	4, 0x90
.LBB14_55:                              #   in Loop: Header=BB14_23 Depth=1
	notl	%edx
	movslq	%edx, %rdx
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	sdsrange
.LBB14_56:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB14_57:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB14_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_53 Depth 2
	movzbl	-1(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB14_58
# %bb.24:                               #   in Loop: Header=BB14_23 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_2(,%rcx,8)
.LBB14_29:                              #   in Loop: Header=BB14_23 Depth=1
	shrq	$3, %rax
	jmp	.LBB14_30
.LBB14_25:                              #   in Loop: Header=BB14_23 Depth=1
	movzbl	-3(%rbx), %eax
	jmp	.LBB14_30
.LBB14_26:                              #   in Loop: Header=BB14_23 Depth=1
	movzwl	-5(%rbx), %eax
	jmp	.LBB14_30
.LBB14_27:                              #   in Loop: Header=BB14_23 Depth=1
	movl	-9(%rbx), %eax
	jmp	.LBB14_30
.LBB14_28:                              #   in Loop: Header=BB14_23 Depth=1
	movq	-17(%rbx), %rax
	.p2align	4, 0x90
.LBB14_30:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rax
	jb	.LBB14_59
# %bb.31:                               #   in Loop: Header=BB14_23 Depth=1
	cmpb	$46, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_59
# %bb.32:                               #   in Loop: Header=BB14_23 Depth=1
	cmpb	$46, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_59
# %bb.33:                               #   in Loop: Header=BB14_23 Depth=1
	cmpb	$47, 2(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_59
# %bb.34:                               #   in Loop: Header=BB14_23 Depth=1
	movl	$3, %esi
	movq	%rbx, %rdi
	movq	$-1, %rdx
	callq	sdsrange
	movzbl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB14_40
# %bb.35:                               #   in Loop: Header=BB14_23 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_3(,%rcx,8)
.LBB14_41:                              #   in Loop: Header=BB14_23 Depth=1
	movq	%rax, %rcx
	shrq	$3, %rcx
	jmp	.LBB14_42
.LBB14_40:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_56
.LBB14_36:                              #   in Loop: Header=BB14_23 Depth=1
	movzbl	-3(%r14), %ecx
	jmp	.LBB14_42
.LBB14_37:                              #   in Loop: Header=BB14_23 Depth=1
	movzwl	-5(%r14), %ecx
	jmp	.LBB14_42
.LBB14_38:                              #   in Loop: Header=BB14_23 Depth=1
	movl	-9(%r14), %ecx
	jmp	.LBB14_42
.LBB14_39:                              #   in Loop: Header=BB14_23 Depth=1
	movq	-17(%r14), %rcx
	.p2align	4, 0x90
.LBB14_42:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rcx
	jb	.LBB14_57
# %bb.43:                               #   in Loop: Header=BB14_23 Depth=1
	movl	%eax, %ecx
	andb	$7, %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB14_44
# %bb.45:                               #   in Loop: Header=BB14_23 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI14_4(,%rcx,8)
.LBB14_46:                              #   in Loop: Header=BB14_23 Depth=1
	shrq	$3, %rax
	jmp	.LBB14_51
.LBB14_44:                              #   in Loop: Header=BB14_23 Depth=1
	xorl	%eax, %eax
	jmp	.LBB14_51
.LBB14_47:                              #   in Loop: Header=BB14_23 Depth=1
	movzbl	-3(%r14), %eax
	jmp	.LBB14_51
.LBB14_48:                              #   in Loop: Header=BB14_23 Depth=1
	movzwl	-5(%r14), %eax
	jmp	.LBB14_51
.LBB14_49:                              #   in Loop: Header=BB14_23 Depth=1
	movl	-9(%r14), %eax
	jmp	.LBB14_51
.LBB14_50:                              #   in Loop: Header=BB14_23 Depth=1
	movq	-17(%r14), %rax
	.p2align	4, 0x90
.LBB14_51:                              #   in Loop: Header=BB14_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, -2(%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	je	.LBB14_55
# %bb.52:                               # %.preheader
                                        #   in Loop: Header=BB14_23 Depth=1
	addq	%r12, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB14_53:                              #   Parent Loop BB14_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, (%rax,%rcx)
	leaq	-1(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_53
# %bb.54:                               # %.loopexit
                                        #   in Loop: Header=BB14_23 Depth=1
	movl	$1, %edx
	subl	%ecx, %edx
	jmp	.LBB14_55
.LBB14_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_59:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	sdscatsds
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	sdsfree
	movq	%r14, %rbx
.LBB14_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$1024, %rsp             # imm = 0x400
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	getAbsolutePath, .Lfunc_end14-getAbsolutePath
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_10
	.quad	.LBB14_5
	.quad	.LBB14_6
	.quad	.LBB14_7
	.quad	.LBB14_8
.LJTI14_1:
	.quad	.LBB14_15
	.quad	.LBB14_16
	.quad	.LBB14_17
	.quad	.LBB14_18
	.quad	.LBB14_19
.LJTI14_2:
	.quad	.LBB14_29
	.quad	.LBB14_25
	.quad	.LBB14_26
	.quad	.LBB14_27
	.quad	.LBB14_28
.LJTI14_3:
	.quad	.LBB14_41
	.quad	.LBB14_36
	.quad	.LBB14_37
	.quad	.LBB14_38
	.quad	.LBB14_39
.LJTI14_4:
	.quad	.LBB14_46
	.quad	.LBB14_47
	.quad	.LBB14_48
	.quad	.LBB14_49
	.quad	.LBB14_50
                                        # -- End function
	.text
	.globl	getTimeZone             # -- Begin function getTimeZone
	.p2align	4, 0x90
	.type	getTimeZone,@function
getTimeZone:                            # @getTimeZone
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	65520(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	getTimeZone, .Lfunc_end15-getTimeZone
                                        # -- End function
	.globl	pathIsBaseName          # -- Begin function pathIsBaseName
	.p2align	4, 0x90
	.type	pathIsBaseName,@function
pathIsBaseName:                         # @pathIsBaseName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$47, %esi
	callq	strchr
	movq	%rax, %rcx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB16_2
# %bb.1:
	movq	%rbx, %rdi
	movl	$92, %esi
	callq	strchr
	movq	%rax, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB16_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	pathIsBaseName, .Lfunc_end16-pathIsBaseName
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"b"
	.size	.L.str, 2

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"k"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"kb"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"m"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"mb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"g"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gb"
	.size	.L.str.6, 3

	.type	ll2string.digits,@object # @ll2string.digits
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4
ll2string.digits:
	.asciz	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.size	ll2string.digits, 201

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"nan"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-inf"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"inf"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-0"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"0"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%.17g"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%.17Lf"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%.17Lg"
	.size	.L.str.14, 7

	.type	getRandomBytes.seed_initialized,@object # @getRandomBytes.seed_initialized
	.local	getRandomBytes.seed_initialized
	.comm	getRandomBytes.seed_initialized,1,4
	.type	getRandomBytes.seed,@object # @getRandomBytes.seed
	.local	getRandomBytes.seed
	.comm	getRandomBytes.seed,20,16
	.type	getRandomBytes.counter,@object # @getRandomBytes.counter
	.local	getRandomBytes.counter
	.comm	getRandomBytes.counter,8,8
	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"/dev/urandom"
	.size	.L.str.15, 13

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"r"
	.size	.L.str.16, 2

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"0123456789abcdef"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	" \r\n\t"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"/"
	.size	.L.str.19, 2

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
