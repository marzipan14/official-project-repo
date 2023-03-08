	.text
	.file	"vfprintf.c"
	.globl	__sfputs_r              # -- Begin function __sfputs_r
	.p2align	4, 0x90
	.type	__sfputs_r,@function
__sfputs_r:                             # @__sfputs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testq	%rcx, %rcx
	je	.LBB0_5
# %bb.1:                                # %.preheader
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rbx
	cmpq	%r12, %rbx
	jb	.LBB0_2
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_7
.LBB0_6:
	movl	$-1, %eax
.LBB0_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__sfputs_r, .Lfunc_end0-__sfputs_r
                                        # -- End function
	.globl	__sprint_r              # -- Begin function __sprint_r
	.p2align	4, 0x90
	.type	__sprint_r,@function
__sprint_r:                             # @__sprint_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	cmpq	$0, 16(%rdx)
	je	.LBB1_1
# %bb.2:
	movq	%rbx, %rdx
	callq	__sfvwrite_r
	movq	$0, 16(%rbx)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$0, 8(%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__sprint_r, .Lfunc_end1-__sprint_r
                                        # -- End function
	.globl	vfiprintf               # -- Begin function vfiprintf
	.p2align	4, 0x90
	.type	vfiprintf,@function
vfiprintf:                              # @vfiprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_vfiprintf_r            # TAILCALL
.Lfunc_end2:
	.size	vfiprintf, .Lfunc_end2-vfiprintf
                                        # -- End function
	.globl	_vfiprintf_r            # -- Begin function _vfiprintf_r
	.p2align	4, 0x90
	.type	_vfiprintf_r,@function
_vfiprintf_r:                           # @_vfiprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$248, %rsp
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%r15)
	jne	.LBB3_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
.LBB3_3:
	leaq	-92(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%r14)
	je	.LBB3_5
# %bb.4:
	cmpq	$0, 24(%r14)
	jne	.LBB3_7
.LBB3_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__swsetup_r
	testl	%eax, %eax
	je	.LBB3_7
# %bb.6:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$-1, %eax
	jmp	.LBB3_318
.LBB3_7:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	-128(%rbp), %rsi        # 8-byte Reload
	leaq	8(%rsi), %rdi
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	movq	%r15, -72(%rbp)         # 8-byte Spill
	movq	%rdi, -144(%rbp)        # 8-byte Spill
.LBB3_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_27 Depth 5
                                        #             Child Loop BB3_31 Depth 6
                                        #           Child Loop BB3_36 Depth 5
                                        #     Child Loop BB3_183 Depth 2
                                        #     Child Loop BB3_305 Depth 2
                                        #     Child Loop BB3_187 Depth 2
                                        #     Child Loop BB3_225 Depth 2
                                        #     Child Loop BB3_300 Depth 2
                                        #     Child Loop BB3_205 Depth 2
                                        #     Child Loop BB3_245 Depth 2
                                        #     Child Loop BB3_250 Depth 2
                                        #     Child Loop BB3_270 Depth 2
                                        #     Child Loop BB3_274 Depth 2
                                        #     Child Loop BB3_280 Depth 2
                                        #     Child Loop BB3_312 Depth 2
	movl	%ecx, %r12d
.LBB3_9:                                #   Parent Loop BB3_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_27 Depth 5
                                        #             Child Loop BB3_31 Depth 6
                                        #           Child Loop BB3_36 Depth 5
	movq	%rbx, %r15
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15), %eax
	testb	%al, %al
	je	.LBB3_13
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=3
	cmpb	$37, %al
	je	.LBB3_13
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=3
	addq	$1, %r15
	jmp	.LBB3_10
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%r15, %r14
	subq	%rbx, %r14
	testl	%r14d, %r14d
	je	.LBB3_20
# %bb.14:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%r14, %rcx
	shlq	$32, %rcx
	je	.LBB3_19
# %bb.15:                               # %.preheader8
                                        #   in Loop: Header=BB3_9 Depth=2
	movq	%r10, -104(%rbp)        # 8-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	movslq	%r14d, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_16:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rbx,%r13), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=3
	addq	$1, %r13
	cmpq	%r12, %r13
	jb	.LBB3_16
# %bb.18:                               #   in Loop: Header=BB3_9 Depth=2
	movb	(%r15), %al
	movl	-44(%rbp), %r12d        # 4-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	$-1, %r8d
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
.LBB3_19:                               #   in Loop: Header=BB3_9 Depth=2
	addl	%r14d, %r12d
.LBB3_20:                               #   in Loop: Header=BB3_9 Depth=2
	testb	%al, %al
	je	.LBB3_320
# %bb.21:                               #   in Loop: Header=BB3_9 Depth=2
	movl	%r12d, -44(%rbp)        # 4-byte Spill
	addq	$1, %r15
	movl	$-1, %r13d
	xorl	%r14d, %r14d
	xorl	%r11d, %r11d
	xorl	%r12d, %r12d
	movq	%r15, %rbx
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_22:                               #   in Loop: Header=BB3_24 Depth=3
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_23:                               #   in Loop: Header=BB3_24 Depth=3
	movl	(%rax), %r13d
	cmpl	$-2, %r13d
	cmovlel	%r8d, %r13d
.LBB3_24:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_27 Depth 5
                                        #             Child Loop BB3_31 Depth 6
                                        #           Child Loop BB3_36 Depth 5
	movb	(%rbx), %cl
	addq	$1, %rbx
.LBB3_25:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_27 Depth 5
                                        #             Child Loop BB3_31 Depth 6
                                        #           Child Loop BB3_36 Depth 5
	movsbl	%cl, %eax
	jmp	.LBB3_27
	.p2align	4, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_27 Depth=5
	movl	%ecx, %r13d
.LBB3_27:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_31 Depth 6
	cmpl	$46, %eax
	jne	.LBB3_33
# %bb.28:                               #   in Loop: Header=BB3_27 Depth=5
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	cmpl	$42, %eax
	je	.LBB3_37
# %bb.29:                               #   in Loop: Header=BB3_27 Depth=5
	leal	-48(%rax), %edx
	xorl	%ecx, %ecx
	cmpl	$9, %edx
	ja	.LBB3_26
# %bb.30:                               # %.preheader
                                        #   in Loop: Header=BB3_27 Depth=5
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_31:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        #           Parent Loop BB3_27 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%rcx,%rcx,4), %eax
	leal	(%rdx,%rax,2), %ecx
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB3_31
# %bb.32:                               #   in Loop: Header=BB3_27 Depth=5
	movl	$-1, %r13d
	testl	%ecx, %ecx
	js	.LBB3_27
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_33:                               #   in Loop: Header=BB3_25 Depth=4
	cmpl	$122, %eax
	ja	.LBB3_118
# %bb.34:                               #   in Loop: Header=BB3_25 Depth=4
	movl	%eax, %ecx
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_35:                               #   in Loop: Header=BB3_25 Depth=4
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_36:                               #   Parent Loop BB3_8 Depth=1
                                        #     Parent Loop BB3_9 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	leal	(%r12,%r12,4), %ecx
	leal	(%rax,%rcx,2), %r12d
	addl	$-48, %r12d
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	movsbl	%cl, %eax
	leal	-48(%rax), %edx
	cmpl	$10, %edx
	jb	.LBB3_36
	jmp	.LBB3_25
	.p2align	4, 0x90
.LBB3_37:                               #   in Loop: Header=BB3_24 Depth=3
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_22
# %bb.38:                               #   in Loop: Header=BB3_24 Depth=3
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_23
.LBB3_39:                               #   in Loop: Header=BB3_24 Depth=3
	testb	%r14b, %r14b
	movzbl	%r14b, %eax
	movl	$32, %r14d
	cmovnel	%eax, %r14d
	jmp	.LBB3_24
.LBB3_40:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$1, %r11d
	jmp	.LBB3_24
.LBB3_41:                               #   in Loop: Header=BB3_24 Depth=3
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r10, -104(%rbp)        # 8-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	strlen
	movl	%r14d, -80(%rbp)        # 4-byte Spill
	movq	%rax, %r14
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	_localeconv_r
	movl	-64(%rbp), %r11d        # 4-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	movl	$-1, %r8d
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	16(%rax), %r9
	movq	%r14, %rax
	movq	%r14, -136(%rbp)        # 8-byte Spill
	testq	%r14, %r14
	movl	-80(%rbp), %r14d        # 4-byte Reload
	je	.LBB3_24
# %bb.42:                               #   in Loop: Header=BB3_24 Depth=3
	testq	%r9, %r9
	je	.LBB3_24
# %bb.43:                               #   in Loop: Header=BB3_24 Depth=3
	movl	%r11d, %eax
	orl	$1024, %eax             # imm = 0x400
	cmpb	$0, (%r9)
	cmovnel	%eax, %r11d
	jmp	.LBB3_24
.LBB3_44:                               #   in Loop: Header=BB3_24 Depth=3
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_51
# %bb.45:                               #   in Loop: Header=BB3_24 Depth=3
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_52
.LBB3_46:                               # %.loopexit2
                                        #   in Loop: Header=BB3_24 Depth=3
	movb	$43, %r14b
	jmp	.LBB3_24
.LBB3_47:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$128, %r11d
	jmp	.LBB3_24
.LBB3_48:                               #   in Loop: Header=BB3_24 Depth=3
	cmpb	$104, (%rbx)
	movl	$512, %eax              # imm = 0x200
	movl	$64, %ecx
	cmovel	%eax, %ecx
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
	orl	%ecx, %r11d
	jmp	.LBB3_24
.LBB3_49:                               #   in Loop: Header=BB3_24 Depth=3
	cmpb	$108, (%rbx)
	leaq	1(%rbx), %rax
	cmoveq	%rax, %rbx
.LBB3_50:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$16, %r11d
	jmp	.LBB3_24
.LBB3_51:                               #   in Loop: Header=BB3_24 Depth=3
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_52:                               #   in Loop: Header=BB3_24 Depth=3
	movl	(%rax), %r12d
	testl	%r12d, %r12d
	jns	.LBB3_24
# %bb.53:                               #   in Loop: Header=BB3_24 Depth=3
	negl	%r12d
.LBB3_54:                               # %.loopexit1
                                        #   in Loop: Header=BB3_24 Depth=3
	orl	$4, %r11d
	jmp	.LBB3_24
.LBB3_55:                               #   in Loop: Header=BB3_9 Depth=2
	testb	$16, %r11b
	jne	.LBB3_60
# %bb.56:                               #   in Loop: Header=BB3_9 Depth=2
	testb	$64, %r11b
	jne	.LBB3_62
# %bb.57:                               #   in Loop: Header=BB3_9 Depth=2
	testl	$512, %r11d             # imm = 0x200
	movl	-44(%rbp), %r12d        # 4-byte Reload
	jne	.LBB3_66
# %bb.58:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_70
# %bb.59:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_71
.LBB3_60:                               #   in Loop: Header=BB3_9 Depth=2
	movl	-44(%rbp), %r12d        # 4-byte Reload
	movslq	%r12d, %rax
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_64
# %bb.61:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_65
.LBB3_62:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	movl	-44(%rbp), %r12d        # 4-byte Reload
	ja	.LBB3_68
# %bb.63:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_69
.LBB3_64:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB3_65:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB3_9
.LBB3_66:                               #   in Loop: Header=BB3_9 Depth=2
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_72
# %bb.67:                               #   in Loop: Header=BB3_9 Depth=2
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_73
.LBB3_68:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_69:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB3_9
.LBB3_70:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_71:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movl	%r12d, (%rax)
	jmp	.LBB3_9
.LBB3_72:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_73:                               #   in Loop: Header=BB3_9 Depth=2
	movq	(%rax), %rax
	movb	%r12b, (%rax)
	jmp	.LBB3_9
.LBB3_74:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	ja	.LBB3_108
# %bb.75:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_109
.LBB3_76:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_110
# %bb.77:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_111
.LBB3_78:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %r11d
.LBB3_79:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %r11b
	jne	.LBB3_84
# %bb.80:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %r11b
	jne	.LBB3_120
# %bb.81:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB3_139
# %bb.82:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_152
# %bb.83:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	jmp	.LBB3_153
.LBB3_84:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	cmpq	$40, %rax
	ja	.LBB3_122
# %bb.85:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	movq	(%rcx), %rax
	jmp	.LBB3_155
.LBB3_86:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %r11d
.LBB3_87:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %r11b
	jne	.LBB3_114
# %bb.88:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %r11b
	jne	.LBB3_126
# %bb.89:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB3_142
# %bb.90:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_156
# %bb.91:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	jmp	.LBB3_157
.LBB3_92:                               #   in Loop: Header=BB3_8 Depth=1
	orl	$16, %r11d
.LBB3_93:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$16, %r11b
	jne	.LBB3_116
# %bb.94:                               #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %r11b
	jne	.LBB3_128
# %bb.95:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB3_144
# %bb.96:                               #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_158
# %bb.97:                               #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	jmp	.LBB3_159
.LBB3_98:                               #   in Loop: Header=BB3_8 Depth=1
	movl	$.L.str.2, %r10d
	movb	$88, %al
	testb	$16, %r11b
	je	.LBB3_104
.LBB3_99:                               #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_130
# %bb.100:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	movq	(%rdx), %r14
	jmp	.LBB3_169
.LBB3_101:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_131
# %bb.102:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_132
.LBB3_103:                              # %.loopexit6
                                        #   in Loop: Header=BB3_8 Depth=1
	movl	$.L.str, %r10d
	movb	$120, %al
	testb	$16, %r11b
	jne	.LBB3_99
.LBB3_104:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$64, %r11b
	jne	.LBB3_133
# %bb.105:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	testl	$512, %r11d             # imm = 0x200
	jne	.LBB3_146
# %bb.106:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_160
# %bb.107:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_161
.LBB3_108:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_109:                              #   in Loop: Header=BB3_8 Depth=1
	movb	(%rax), %al
	movb	%al, -288(%rbp)
	jmp	.LBB3_119
.LBB3_110:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_111:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %r15
	testq	%r15, %r15
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r10, -104(%rbp)        # 8-byte Spill
	je	.LBB3_123
# %bb.112:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%r13d, %r13d
	movq	%r15, -80(%rbp)         # 8-byte Spill
	js	.LBB3_138
# %bb.113:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%r13d, %rdx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	%r11d, %r14d
	callq	memchr
	xorl	%edi, %edi
	movl	%r14d, %r11d
	movl	%eax, %ecx
	subl	%r15d, %ecx
	testq	%rax, %rax
	cmovel	%r13d, %ecx
	jmp	.LBB3_125
.LBB3_114:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	cmpq	$40, %rax
	ja	.LBB3_135
# %bb.115:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	movq	(%rcx), %r14
	jmp	.LBB3_164
.LBB3_116:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_136
# %bb.117:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_137
.LBB3_118:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%r10, -104(%rbp)        # 8-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movb	%al, -288(%rbp)
.LBB3_119:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$1, %ecx
	xorl	%edi, %edi
	leaq	-288(%rbp), %rax
	jmp	.LBB3_124
.LBB3_120:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rax
	cmpq	$40, %rax
	ja	.LBB3_141
# %bb.121:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	movswq	(%rcx), %rax
	jmp	.LBB3_155
.LBB3_122:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movq	(%rax), %rax
	jmp	.LBB3_155
.LBB3_123:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$6, %r13d
	movl	$6, %ecx
	cmovbl	%r13d, %ecx
	xorl	%edi, %edi
	movl	$.L.str.1, %eax
.LBB3_124:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB3_125:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB3_195
.LBB3_126:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_148
# %bb.127:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	movzwl	(%rax), %r14d
	jmp	.LBB3_164
.LBB3_128:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_149
# %bb.129:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rax
	addq	16(%rsi), %rax
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_150
.LBB3_130:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
	movq	(%rcx), %r14
	jmp	.LBB3_169
.LBB3_131:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_132:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %r14
	orl	$2, %r11d
	movw	$30768, -58(%rbp)       # imm = 0x7830
	movl	$.L.str, %r10d
	jmp	.LBB3_173
.LBB3_133:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_151
# %bb.134:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	movzwl	(%rcx), %r14d
	jmp	.LBB3_169
.LBB3_135:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movq	(%rax), %r14
	jmp	.LBB3_164
.LBB3_136:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_137:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rax), %r14
	movl	$1, %eax
	jmp	.LBB3_174
.LBB3_138:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%r15, %rdi
	movl	%r11d, %r14d
	callq	strlen
	movl	%r14d, %r11d
	movq	%rax, %rcx
	xorl	%edi, %edi
	jmp	.LBB3_125
.LBB3_139:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_154
# %bb.140:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	movsbq	(%rcx), %rax
	jmp	.LBB3_155
.LBB3_141:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movswq	(%rax), %rax
	jmp	.LBB3_155
.LBB3_142:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_162
# %bb.143:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	jmp	.LBB3_163
.LBB3_144:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_165
# %bb.145:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rax, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %eax
	movl	%eax, (%rsi)
	jmp	.LBB3_166
.LBB3_146:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_167
# %bb.147:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%rcx, %rdx
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_168
.LBB3_148:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movzwl	(%rax), %r14d
	jmp	.LBB3_164
.LBB3_149:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
.LBB3_150:                              #   in Loop: Header=BB3_8 Depth=1
	movzwl	(%rax), %r14d
	movl	$1, %eax
	jmp	.LBB3_174
.LBB3_151:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
	movzwl	(%rcx), %r14d
	jmp	.LBB3_169
.LBB3_152:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdi)
.LBB3_153:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	(%rcx), %rax
	jmp	.LBB3_155
.LBB3_154:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdi)
	movsbq	(%rax), %rax
.LBB3_155:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%rax, %rax
	movzbl	%r14b, %ecx
	movl	$45, %edi
	cmovnsl	%ecx, %edi
	movq	%rax, %r14
	negq	%r14
	cmovlq	%rax, %r14
	movl	$1, %eax
	jmp	.LBB3_175
.LBB3_156:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdi)
.LBB3_157:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rcx), %r14d
	jmp	.LBB3_164
.LBB3_158:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdi)
.LBB3_159:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB3_174
.LBB3_160:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_161:                              #   in Loop: Header=BB3_8 Depth=1
	movl	(%rdx), %r14d
	jmp	.LBB3_169
.LBB3_162:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdi)
.LBB3_163:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rcx), %r14d
.LBB3_164:                              #   in Loop: Header=BB3_8 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	.LBB3_175
.LBB3_165:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdi)
.LBB3_166:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rcx), %r14d
	movl	$1, %eax
	jmp	.LBB3_174
.LBB3_167:                              #   in Loop: Header=BB3_8 Depth=1
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_168:                              #   in Loop: Header=BB3_8 Depth=1
	movzbl	(%rdx), %r14d
.LBB3_169:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$1, %r11b
	je	.LBB3_172
# %bb.170:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%r14, %r14
	je	.LBB3_172
# %bb.171:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, -58(%rbp)
	movb	%al, -57(%rbp)
	orl	$2, %r11d
.LBB3_172:                              #   in Loop: Header=BB3_8 Depth=1
	andl	$-1025, %r11d           # imm = 0xFBFF
.LBB3_173:                              #   in Loop: Header=BB3_8 Depth=1
	movl	$2, %eax
.LBB3_174:                              #   in Loop: Header=BB3_8 Depth=1
	xorl	%edi, %edi
.LBB3_175:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r11d, %ecx
	andl	$-129, %r11d
	testl	%r13d, %r13d
	cmovsl	%ecx, %r11d
	movq	%r10, -104(%rbp)        # 8-byte Spill
	jne	.LBB3_180
# %bb.176:                              #   in Loop: Header=BB3_8 Depth=1
	testq	%r14, %r14
	jne	.LBB3_180
# %bb.177:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_185
# %bb.178:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r11d, %eax
	andl	$1, %eax
	je	.LBB3_185
# %bb.179:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, -189(%rbp)
	jmp	.LBB3_193
.LBB3_180:                              #   in Loop: Header=BB3_8 Depth=1
	testb	%al, %al
	je	.LBB3_186
# %bb.181:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$1, %al
	je	.LBB3_191
# %bb.182:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-188(%rbp), %rsi
	cmpb	$2, %al
	jne	.LBB3_302
	.p2align	4, 0x90
.LBB3_183:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	andl	$15, %eax
	movzbl	(%r10,%rax), %eax
	movb	%al, -1(%rsi)
	addq	$-1, %rsi
	shrq	$4, %r14
	jne	.LBB3_183
	jmp	.LBB3_194
.LBB3_185:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-188(%rbp), %rsi
	jmp	.LBB3_194
.LBB3_186:                              # %.preheader29
                                        #   in Loop: Header=BB3_8 Depth=1
	leaq	-189(%rbp), %rax
	.p2align	4, 0x90
.LBB3_187:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r14
	addq	$-1, %rax
	testq	%r14, %r14
	jne	.LBB3_187
# %bb.188:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	1(%rax), %rsi
	testb	$1, %r11b
	je	.LBB3_194
# %bb.189:                              #   in Loop: Header=BB3_8 Depth=1
	cmpb	$48, %cl
	je	.LBB3_194
# %bb.190:                              #   in Loop: Header=BB3_8 Depth=1
	movb	$48, (%rax)
	movq	%rax, %rsi
	jmp	.LBB3_194
.LBB3_191:                              #   in Loop: Header=BB3_8 Depth=1
	cmpq	$10, %r14
	jae	.LBB3_303
# %bb.192:                              #   in Loop: Header=BB3_8 Depth=1
	addb	$48, %r14b
	movb	%r14b, -189(%rbp)
.LBB3_193:                              #   in Loop: Header=BB3_8 Depth=1
	leaq	-189(%rbp), %rsi
.LBB3_194:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	leaq	-188(%rbp), %rax
	movl	%eax, %ecx
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	subl	%esi, %ecx
.LBB3_195:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	%ecx, %r13d
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	cmovgel	%r13d, %eax
	movl	%edi, -120(%rbp)        # 4-byte Spill
	cmpb	$1, %dil
	sbbl	$-1, %eax
	leal	2(%rax), %ecx
	testb	$2, %r11b
	cmovel	%eax, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	andl	$132, %r11d
	movl	%r11d, -148(%rbp)       # 4-byte Spill
	je	.LBB3_223
.LBB3_196:                              #   in Loop: Header=BB3_8 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	testb	%al, %al
	movq	-56(%rbp), %r15         # 8-byte Reload
	je	.LBB3_198
# %bb.197:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	%al, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
.LBB3_198:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$2, -64(%rbp)           # 1-byte Folded Reload
	je	.LBB3_201
# %bb.199:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	-58(%rbp), %esi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.200:                              #   in Loop: Header=BB3_8 Depth=1
	movsbl	-57(%rbp), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
.LBB3_201:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$128, -148(%rbp)        # 4-byte Folded Reload
	jne	.LBB3_247
# %bb.202:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %ecx
	subl	-112(%rbp), %ecx        # 4-byte Folded Reload
	jle	.LBB3_247
# %bb.203:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %ecx
	jl	.LBB3_243
# %bb.204:                              # %.preheader23
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB3_205:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.206:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.207:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.208:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.209:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.210:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.211:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.212:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.213:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.214:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.215:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.216:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.217:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.218:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.219:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.220:                              #   in Loop: Header=BB3_205 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.221:                              #   in Loop: Header=BB3_205 Depth=2
	movq	-120(%rbp), %rcx        # 8-byte Reload
	leal	-16(%rcx), %eax
	cmpl	$32, %ecx
	movl	%eax, %ecx
	jg	.LBB3_205
# %bb.222:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_244
	jmp	.LBB3_247
.LBB3_223:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %ecx
	subl	-112(%rbp), %ecx        # 4-byte Folded Reload
	jle	.LBB3_196
# %bb.224:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %ecx
	jl	.LBB3_298
.LBB3_225:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	$32, %esi
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.226:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.227:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.228:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.229:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.230:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.231:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.232:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.233:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.234:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.235:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.236:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.237:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.238:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.239:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_319
# %bb.240:                              #   in Loop: Header=BB3_225 Depth=2
	movq	%r15, %rdi
	movl	$32, %esi
	movq	%r14, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.241:                              #   in Loop: Header=BB3_225 Depth=2
	movq	-176(%rbp), %rcx        # 8-byte Reload
	leal	-16(%rcx), %eax
	cmpl	$32, %ecx
	movl	%eax, %ecx
	jg	.LBB3_225
# %bb.242:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_299
	jmp	.LBB3_196
.LBB3_243:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%ecx, %eax
.LBB3_244:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_245:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.246:                              #   in Loop: Header=BB3_245 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_245
	.p2align	4, 0x90
.LBB3_247:                              #   in Loop: Header=BB3_8 Depth=1
	subl	-168(%rbp), %r13d       # 4-byte Folded Reload
	jle	.LBB3_272
# %bb.248:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %r13d
	jl	.LBB3_268
# %bb.249:                              # %.preheader19
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB3_250:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.251:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.252:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.253:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.254:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.255:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.256:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.257:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.258:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.259:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.260:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.261:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.262:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.263:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.264:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.265:                              #   in Loop: Header=BB3_250 Depth=2
	movq	%r14, %rdi
	movl	$48, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.266:                              #   in Loop: Header=BB3_250 Depth=2
	leal	-16(%r13), %eax
	cmpl	$32, %r13d
	movl	%eax, %r13d
	jg	.LBB3_250
# %bb.267:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_269
	jmp	.LBB3_272
.LBB3_268:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r13d, %eax
.LBB3_269:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_270:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.271:                              #   in Loop: Header=BB3_270 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_270
.LBB3_272:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-168(%rbp), %rax        # 8-byte Reload
	testl	%eax, %eax
	movq	-72(%rbp), %r13         # 8-byte Reload
	je	.LBB3_276
# %bb.273:                              # %.preheader14
                                        #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_274:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax,%r15), %esi
	movq	%r13, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_274
.LBB3_276:                              #   in Loop: Header=BB3_8 Depth=1
	testb	$4, -64(%rbp)           # 1-byte Folded Reload
	je	.LBB3_314
# %bb.277:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r12d, %r14d
	subl	-112(%rbp), %r14d       # 4-byte Folded Reload
	jle	.LBB3_314
# %bb.278:                              #   in Loop: Header=BB3_8 Depth=1
	cmpl	$17, %r14d
	jl	.LBB3_310
# %bb.279:                              # %.preheader12
                                        #   in Loop: Header=BB3_8 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB3_280:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.281:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.282:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.283:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.284:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.285:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.286:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.287:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.288:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.289:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.290:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.291:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.292:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.293:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.294:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.295:                              #   in Loop: Header=BB3_280 Depth=2
	movq	%r13, %rdi
	movl	$32, %esi
	movq	%r15, %rdx
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_316
# %bb.296:                              #   in Loop: Header=BB3_280 Depth=2
	leal	-16(%r14), %eax
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB3_280
# %bb.297:                              #   in Loop: Header=BB3_8 Depth=1
	testl	%eax, %eax
	jne	.LBB3_311
	jmp	.LBB3_314
.LBB3_298:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%ecx, %eax
.LBB3_299:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r15
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_300:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r14), %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.301:                              #   in Loop: Header=BB3_300 Depth=2
	addq	$1, %r14
	cmpq	%r15, %r14
	jb	.LBB3_300
	jmp	.LBB3_196
.LBB3_302:                              #   in Loop: Header=BB3_8 Depth=1
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movl	$.L.str.3, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	%edi, %r15d
	movl	$.L.str.3, %edi
	movl	%r11d, %r14d
	callq	strlen
	movl	%r15d, %edi
	movl	%r14d, %r11d
	movq	%rax, %rcx
	jmp	.LBB3_195
.LBB3_303:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-136(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	-188(%rbp), %rsi
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	movl	%edi, -120(%rbp)        # 4-byte Spill
	jmp	.LBB3_305
	.p2align	4, 0x90
.LBB3_304:                              #   in Loop: Header=BB3_305 Depth=2
	cmpq	$9, %r15
	jbe	.LBB3_194
.LBB3_305:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %r15
	movabsq	$-3689348814741910323, %rdx # imm = 0xCCCCCCCCCCCCCCCD
	movq	%r14, %rax
	mulq	%rdx
	movq	%rdx, %r14
	shrq	$3, %r14
	leal	(%r14,%r14), %eax
	leal	(%rax,%rax,4), %eax
	movl	%r15d, %edx
	subl	%eax, %edx
	orb	$48, %dl
	addl	$1, %ecx
	movb	%dl, -1(%rsi)
	addq	$-1, %rsi
	testl	$1024, %r11d            # imm = 0x400
	je	.LBB3_304
# %bb.306:                              #   in Loop: Header=BB3_305 Depth=2
	movsbl	(%r9), %eax
	cmpl	%eax, %ecx
	jne	.LBB3_304
# %bb.307:                              #   in Loop: Header=BB3_305 Depth=2
	cmpq	$10, %r15
	jb	.LBB3_304
# %bb.308:                              #   in Loop: Header=BB3_305 Depth=2
	cmpb	$127, %al
	je	.LBB3_304
# %bb.309:                              #   in Loop: Header=BB3_305 Depth=2
	addq	-112(%rbp), %rsi        # 8-byte Folded Reload
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-136(%rbp), %rdx        # 8-byte Reload
	movq	%r9, -88(%rbp)          # 8-byte Spill
	callq	strncpy
	movl	-120(%rbp), %edi        # 4-byte Reload
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movl	-64(%rbp), %r11d        # 4-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	cmpb	$0, 1(%r9)
	leaq	1(%r9), %rax
	cmovneq	%rax, %r9
	xorl	%ecx, %ecx
	jmp	.LBB3_304
.LBB3_310:                              #   in Loop: Header=BB3_8 Depth=1
	movl	%r14d, %eax
.LBB3_311:                              #   in Loop: Header=BB3_8 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_312:                              #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r15), %esi
	movq	%r13, %rdi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	cmpl	$-1, %eax
	je	.LBB3_315
# %bb.313:                              #   in Loop: Header=BB3_312 Depth=2
	addq	$1, %r15
	cmpq	%r14, %r15
	jb	.LBB3_312
.LBB3_314:                              #   in Loop: Header=BB3_8 Depth=1
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpl	%ecx, %r12d
	cmovgel	%r12d, %ecx
	addl	-44(%rbp), %ecx         # 4-byte Folded Reload
	movq	-128(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movl	$-1, %r8d
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r10        # 8-byte Reload
	jmp	.LBB3_8
.LBB3_315:
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB3_316:                              # %.loopexit7
	movl	-44(%rbp), %r12d        # 4-byte Reload
.LBB3_317:
	movl	-92(%rbp), %edi
	leaq	-92(%rbp), %rsi
	callq	pthread_setcancelstate
	movb	16(%r15), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	%r12d, %eax
.LBB3_318:
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_319:
	movq	%r14, %r15
	jmp	.LBB3_316
.LBB3_320:
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_317
.Lfunc_end3:
	.size	_vfiprintf_r, .Lfunc_end3-_vfiprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_316
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_39
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_40
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_41
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_44
	.quad	.LBB3_46
	.quad	.LBB3_118
	.quad	.LBB3_54
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_47
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_35
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_74
	.quad	.LBB3_78
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_86
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_76
	.quad	.LBB3_118
	.quad	.LBB3_92
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_98
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_74
	.quad	.LBB3_79
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_48
	.quad	.LBB3_79
	.quad	.LBB3_50
	.quad	.LBB3_118
	.quad	.LBB3_49
	.quad	.LBB3_118
	.quad	.LBB3_55
	.quad	.LBB3_87
	.quad	.LBB3_101
	.quad	.LBB3_50
	.quad	.LBB3_118
	.quad	.LBB3_76
	.quad	.LBB3_50
	.quad	.LBB3_93
	.quad	.LBB3_118
	.quad	.LBB3_118
	.quad	.LBB3_103
	.quad	.LBB3_118
	.quad	.LBB3_50
                                        # -- End function
	.type	_vfiprintf_r.blanks,@object # @_vfiprintf_r.blanks
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
_vfiprintf_r.blanks:
	.zero	16,32
	.size	_vfiprintf_r.blanks, 16

	.type	_vfiprintf_r.zeroes,@object # @_vfiprintf_r.zeroes
	.p2align	4
_vfiprintf_r.zeroes:
	.zero	16,48
	.size	_vfiprintf_r.zeroes, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"0123456789abcdef"
	.size	.L.str, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(null)"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.3, 26

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
