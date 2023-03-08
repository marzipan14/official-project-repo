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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_5
# %bb.1:                                # %.preheader
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%r14,%rbx), %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB0_2
.LBB0_5:
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_3:
	movl	$-1, %eax
.LBB0_6:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_1
# %bb.2:
	movq	%rbx, %rdx
	callq	__sfvwrite_r
	movq	$0, 16(%rbx)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
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
	callq	_vfiprintf_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	leaq	-100(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movzwl	16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB3_5
# %bb.4:
	cmpq	$0, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_6
.LBB3_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__swsetup_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_6
# %bb.295:
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB3_296
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r13), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	xorl	%edi, %edi
	movq	%r14, -64(%rbp)         # 8-byte Spill
	movq	%r13, -176(%rbp)        # 8-byte Spill
	movq	%r15, -80(%rbp)         # 8-byte Spill
.LBB3_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_8 Depth 2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_27 Depth 6
                                        #               Child Loop BB3_50 Depth 7
                                        #             Child Loop BB3_56 Depth 6
                                        #     Child Loop BB3_195 Depth 2
                                        #     Child Loop BB3_204 Depth 2
                                        #     Child Loop BB3_197 Depth 2
                                        #     Child Loop BB3_235 Depth 2
                                        #       Child Loop BB3_236 Depth 3
                                        #     Child Loop BB3_241 Depth 2
                                        #     Child Loop BB3_255 Depth 2
                                        #       Child Loop BB3_256 Depth 3
                                        #     Child Loop BB3_261 Depth 2
                                        #     Child Loop BB3_267 Depth 2
                                        #       Child Loop BB3_268 Depth 3
                                        #     Child Loop BB3_274 Depth 2
                                        #     Child Loop BB3_279 Depth 2
                                        #     Child Loop BB3_285 Depth 2
                                        #       Child Loop BB3_286 Depth 3
                                        #     Child Loop BB3_291 Depth 2
	movl	%edx, %eax
	movl	%edx, -84(%rbp)         # 4-byte Spill
.LBB3_8:                                #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_10 Depth 3
                                        #       Child Loop BB3_16 Depth 3
                                        #       Child Loop BB3_24 Depth 3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_27 Depth 6
                                        #               Child Loop BB3_50 Depth 7
                                        #             Child Loop BB3_56 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	testb	%al, %al
	je	.LBB3_12
# %bb.9:                                # %.preheader9
                                        #   in Loop: Header=BB3_8 Depth=2
	movq	%rbx, %r14
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$37, %al
	je	.LBB3_13
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r14), %eax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB3_10
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB3_13:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%r14, %r15
	subq	%rbx, %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_22
# %bb.14:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r15, %rax
	shlq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_21
# %bb.15:                               # %.preheader7
                                        #   in Loop: Header=BB3_8 Depth=2
	movslq	%r15d, %r12
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB3_16:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	(%rbx,%r13), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.20:                               #   in Loop: Header=BB3_16 Depth=3
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r13
	jb	.LBB3_16
.LBB3_21:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%r15d, -84(%rbp)        # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %r13        # 8-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
.LBB3_22:                               #   in Loop: Header=BB3_8 Depth=2
	cmpb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r9          # 8-byte Reload
	je	.LBB3_18
# %bb.23:                               #   in Loop: Header=BB3_8 Depth=2
	addq	$1, %r14
	movl	$-1, %r12d
	xorl	%r8d, %r8d
	xorl	%esi, %esi
	xorl	%r15d, %r15d
	movq	%r14, %rbx
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_46:                               #   in Loop: Header=BB3_24 Depth=3
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_47:                               #   in Loop: Header=BB3_24 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r12d
	cmpl	$-2, %r12d
	movl	$-1, %eax
	cmovlel	%eax, %r12d
.LBB3_24:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_25 Depth 4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_27 Depth 6
                                        #               Child Loop BB3_50 Depth 7
                                        #             Child Loop BB3_56 Depth 6
	movl	$42, __A_VARIABLE(%rip)
.LBB3_25:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_26 Depth 5
                                        #             Child Loop BB3_27 Depth 6
                                        #               Child Loop BB3_50 Depth 7
                                        #             Child Loop BB3_56 Depth 6
	movb	(%rbx), %cl
	addq	$1, %rbx
.LBB3_26:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_27 Depth 6
                                        #               Child Loop BB3_50 Depth 7
                                        #             Child Loop BB3_56 Depth 6
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%cl, %eax
	jmp	.LBB3_27
	.p2align	4, 0x90
.LBB3_53:                               #   in Loop: Header=BB3_27 Depth=6
	movl	$42, __A_VARIABLE(%rip)
.LBB3_27:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        #           Parent Loop BB3_26 Depth=5
                                        # =>          This Loop Header: Depth=6
                                        #               Child Loop BB3_50 Depth 7
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$46, %eax
	jne	.LBB3_28
# %bb.43:                               #   in Loop: Header=BB3_27 Depth=6
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$42, %eax
	je	.LBB3_44
# %bb.48:                               #   in Loop: Header=BB3_27 Depth=6
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %ecx
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$9, %ecx
	ja	.LBB3_53
# %bb.49:                               # %.preheader
                                        #   in Loop: Header=BB3_27 Depth=6
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB3_50:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        #           Parent Loop BB3_26 Depth=5
                                        #             Parent Loop BB3_27 Depth=6
                                        # =>            This Inner Loop Header: Depth=7
	leal	(%r12,%r12,4), %eax
	leal	(%rcx,%rax,2), %r12d
	movsbl	(%rbx), %eax
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB3_50
# %bb.51:                               #   in Loop: Header=BB3_27 Depth=6
	testl	%r12d, %r12d
	jns	.LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_27 Depth=6
	movl	$-1, %r12d
	jmp	.LBB3_53
	.p2align	4, 0x90
.LBB3_28:                               #   in Loop: Header=BB3_26 Depth=5
	leal	-32(%rax), %ecx
	cmpl	$90, %ecx
	ja	.LBB3_219
# %bb.29:                               #   in Loop: Header=BB3_26 Depth=5
	jmpq	*.LJTI3_0(,%rcx,8)
.LBB3_55:                               #   in Loop: Header=BB3_26 Depth=5
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_56:                               #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_8 Depth=2
                                        #       Parent Loop BB3_24 Depth=3
                                        #         Parent Loop BB3_25 Depth=4
                                        #           Parent Loop BB3_26 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	leal	(%r15,%r15,4), %ecx
	leal	(%rax,%rcx,2), %r15d
	addl	$-48, %r15d
	movzbl	(%rbx), %ecx
	addq	$1, %rbx
	movsbl	%cl, %eax
	leal	-48(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edx
	jb	.LBB3_56
	jmp	.LBB3_26
.LBB3_37:                               #   in Loop: Header=BB3_25 Depth=4
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_25 Depth=4
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_40
.LBB3_39:                               #   in Loop: Header=BB3_25 Depth=4
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_40:                               #   in Loop: Header=BB3_25 Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jns	.LBB3_25
# %bb.41:                               #   in Loop: Header=BB3_24 Depth=3
	negl	%r15d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_42:                               # %.loopexit1
                                        #   in Loop: Header=BB3_24 Depth=3
	orl	$4, %esi
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_44:                               #   in Loop: Header=BB3_24 Depth=3
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_46
# %bb.45:                               #   in Loop: Header=BB3_24 Depth=3
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_47
.LBB3_34:                               #   in Loop: Header=BB3_24 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	jne	.LBB3_24
# %bb.35:                               #   in Loop: Header=BB3_24 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movb	$32, %r8b
	jmp	.LBB3_24
.LBB3_36:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$1, %esi
	jmp	.LBB3_24
.LBB3_30:                               #   in Loop: Header=BB3_24 Depth=3
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%r9, %r15
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	callq	_localeconv_r
	movq	8(%rax), %rdi
	movq	%rdi, -160(%rbp)        # 8-byte Spill
	callq	strlen
	movq	%rax, %r14
	movq	%r15, %rdi
	callq	_localeconv_r
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movq	%r15, %r9
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-112(%rbp), %r15        # 8-byte Reload
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	movq	%r14, -144(%rbp)        # 8-byte Spill
	testq	%r14, %r14
	je	.LBB3_24
# %bb.31:                               #   in Loop: Header=BB3_24 Depth=3
	cmpq	$0, -136(%rbp)          # 8-byte Folded Reload
	je	.LBB3_24
# %bb.32:                               #   in Loop: Header=BB3_24 Depth=3
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_24
# %bb.33:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$1024, %esi             # imm = 0x400
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_24
.LBB3_297:                              # %.loopexit2
                                        #   in Loop: Header=BB3_24 Depth=3
	movb	$43, %r8b
	jmp	.LBB3_24
.LBB3_54:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$128, %esi
	jmp	.LBB3_24
.LBB3_57:                               #   in Loop: Header=BB3_24 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$104, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$512, %ecx              # imm = 0x200
	movl	$64, %edx
	cmovel	%ecx, %edx
	cmoveq	%rax, %rbx
	orl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_24
.LBB3_58:                               #   in Loop: Header=BB3_24 Depth=3
	leaq	1(%rbx), %rax
	cmpb	$108, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB3_59:                               #   in Loop: Header=BB3_24 Depth=3
	orl	$16, %esi
	jmp	.LBB3_24
.LBB3_86:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB3_87
# %bb.91:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB3_92
# %bb.96:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_97
# %bb.101:                              #   in Loop: Header=BB3_8 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_103
# %bb.102:                              #   in Loop: Header=BB3_8 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_104
.LBB3_87:                               #   in Loop: Header=BB3_8 Depth=2
	movslq	-84(%rbp), %rax         # 4-byte Folded Reload
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_89
# %bb.88:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB3_90
.LBB3_92:                               #   in Loop: Header=BB3_8 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_94
# %bb.93:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_95
.LBB3_89:                               #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_90:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB3_105
.LBB3_97:                               #   in Loop: Header=BB3_8 Depth=2
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_99
# %bb.98:                               #   in Loop: Header=BB3_8 Depth=2
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_100
.LBB3_94:                               #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_95:                               #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movw	%cx, (%rax)
	jmp	.LBB3_105
.LBB3_103:                              #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_104:                              #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movl	%ecx, (%rax)
	jmp	.LBB3_105
.LBB3_99:                               #   in Loop: Header=BB3_8 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_100:                              #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	-84(%rbp), %ecx         # 4-byte Reload
	movb	%cl, (%rax)
.LBB3_105:                              #   in Loop: Header=BB3_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_8
.LBB3_60:                               #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_62
# %bb.61:                               #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_63
.LBB3_131:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_133
# %bb.132:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_134
.LBB3_64:                               #   in Loop: Header=BB3_7 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB3_65:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB3_66
# %bb.70:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB3_71
# %bb.75:                               #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_76
# %bb.80:                               #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_82
# %bb.81:                               #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_83
.LBB3_66:                               #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_68
# %bb.67:                               #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_69
.LBB3_106:                              #   in Loop: Header=BB3_7 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB3_107:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB3_108
# %bb.112:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB3_113
# %bb.117:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_118
# %bb.122:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_124
# %bb.123:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_125
.LBB3_138:                              #   in Loop: Header=BB3_7 Depth=1
	orl	$16, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB3_139:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB3_140
# %bb.144:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB3_145
# %bb.149:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_150
# %bb.154:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_156
# %bb.155:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_157
.LBB3_159:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$.L.str.2, %edi
	movb	$88, %r8b
	jmp	.LBB3_161
.LBB3_127:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_130
.LBB3_160:                              # %.loopexit6
                                        #   in Loop: Header=BB3_7 Depth=1
	movl	$.L.str, %edi
	movb	$120, %r8b
.LBB3_161:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %sil
	jne	.LBB3_162
# %bb.166:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %sil
	jne	.LBB3_167
# %bb.171:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %esi              # imm = 0x200
	jne	.LBB3_172
# %bb.176:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_178
# %bb.177:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_179
.LBB3_62:                               #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_63:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %al
	movb	%al, -288(%rbp)
	jmp	.LBB3_221
.LBB3_133:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_134:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB3_135
# %bb.136:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB3_222
# %bb.137:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	%r12d, %rdx
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	memchr
	movl	%eax, %ecx
	subl	%r13d, %ecx
	testq	%rax, %rax
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_223
.LBB3_108:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_110
# %bb.109:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_111
.LBB3_140:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_142
# %bb.141:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_143
.LBB3_162:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_164
# %bb.163:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB3_165
.LBB3_219:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_18
# %bb.220:                              #   in Loop: Header=BB3_7 Depth=1
	movb	%al, -288(%rbp)
.LBB3_221:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movl	$1, %eax
	movb	$1, %dl
	leaq	-288(%rbp), %r13
	xorl	%r8d, %r8d
	movl	$1, %ecx
	jmp	.LBB3_228
.LBB3_71:                               #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_73
# %bb.72:                               #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_74
.LBB3_68:                               #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_69:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB3_84
.LBB3_135:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$6, %r12d
	movl	$6, %eax
	cmovbl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %r13d
	xorl	%r12d, %r12d
	movb	$1, %dl
	xorl	%r8d, %r8d
	movl	%eax, %ecx
	jmp	.LBB3_228
.LBB3_113:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_115
# %bb.114:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_116
.LBB3_145:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_147
# %bb.146:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rax
	addq	16(%r13), %rax
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_148
.LBB3_129:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_130:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	orl	$2, %esi
	movw	$30768, -66(%rbp)       # imm = 0x7830
	movl	$.L.str, %edi
	jmp	.LBB3_184
.LBB3_167:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	(%r13), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_169
# %bb.168:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rdx, %rcx
	addq	16(%r13), %rcx
	addl	$8, %edx
	movl	%edx, (%r13)
	jmp	.LBB3_170
.LBB3_110:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_111:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB3_126
.LBB3_142:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_143:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	jmp	.LBB3_158
.LBB3_164:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rax)
.LBB3_165:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r14
	jmp	.LBB3_180
.LBB3_222:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%r13, %rdi
	callq	strlen
.LBB3_223:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testl	%eax, %eax
	movl	$0, %ecx
	cmovnsl	%eax, %ecx
	movb	$1, %dl
	xorl	%r8d, %r8d
	movq	%r14, %rdi
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	jmp	.LBB3_228
.LBB3_76:                               #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_78
# %bb.77:                               #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_79
.LBB3_73:                               #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_74:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movswq	(%rax), %r14
	jmp	.LBB3_84
.LBB3_118:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_120
# %bb.119:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_121
.LBB3_150:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %eax
	ja	.LBB3_152
# %bb.151:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rax, %rcx
	addq	16(%r13), %rcx
	addl	$8, %eax
	movl	%eax, (%r13)
	jmp	.LBB3_153
.LBB3_172:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_174
# %bb.173:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%rcx, %rdx
	addq	16(%r13), %rdx
	addl	$8, %ecx
	movl	%ecx, (%r13)
	jmp	.LBB3_175
.LBB3_115:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_116:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r14d
	jmp	.LBB3_126
.LBB3_147:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_148:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %r14d
	jmp	.LBB3_158
.LBB3_169:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rax)
.LBB3_170:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rcx), %r14d
	jmp	.LBB3_180
.LBB3_82:                               #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_83:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%rcx), %r14
	jmp	.LBB3_84
.LBB3_78:                               #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_79:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movsbq	(%rcx), %r14
.LBB3_84:                               #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%r14, %r14
	jns	.LBB3_187
# %bb.85:                               #   in Loop: Header=BB3_7 Depth=1
	negq	%r14
	movl	$1, %eax
	movb	$45, %r8b
	jmp	.LBB3_186
.LBB3_124:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_125:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r14d
	jmp	.LBB3_126
.LBB3_156:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_157:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r14d
	jmp	.LBB3_158
.LBB3_178:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rax)
.LBB3_179:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdx), %r14d
	jmp	.LBB3_180
.LBB3_120:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_121:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r14d
.LBB3_126:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andl	$-1025, %esi            # imm = 0xFBFF
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	jmp	.LBB3_186
.LBB3_152:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_153:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %r14d
.LBB3_158:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB3_185
.LBB3_174:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rax)
.LBB3_175:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %r14d
.LBB3_180:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB3_183
# %bb.181:                              #   in Loop: Header=BB3_7 Depth=1
	testq	%r14, %r14
	je	.LBB3_183
# %bb.182:                              #   in Loop: Header=BB3_7 Depth=1
	movb	$48, -66(%rbp)
	movb	%r8b, -65(%rbp)
	orl	$2, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB3_183:                              #   in Loop: Header=BB3_7 Depth=1
	andl	$-1025, %esi            # imm = 0xFBFF
.LBB3_184:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$2, %eax
.LBB3_185:                              #   in Loop: Header=BB3_7 Depth=1
	xorl	%r8d, %r8d
.LBB3_186:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB3_187:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB3_188
# %bb.189:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%esi, %ecx
	andl	$-129, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB3_191
# %bb.190:                              #   in Loop: Header=BB3_7 Depth=1
	testq	%r14, %r14
	jne	.LBB3_191
# %bb.213:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_214
# %bb.215:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	jne	.LBB3_216
.LBB3_214:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%ecx, %esi
	leaq	-188(%rbp), %r13
	jmp	.LBB3_218
.LBB3_188:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_192
.LBB3_191:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%ecx, %esi
.LBB3_192:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_196
# %bb.193:                              #   in Loop: Header=BB3_7 Depth=1
	cmpl	$1, %eax
	je	.LBB3_201
# %bb.194:                              #   in Loop: Header=BB3_7 Depth=1
	leaq	-188(%rbp), %r13
	cmpl	$2, %eax
	jne	.LBB3_224
	.p2align	4, 0x90
.LBB3_195:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %eax
	andl	$15, %eax
	movzbl	(%rdi,%rax), %eax
	movb	%al, -1(%r13)
	addq	$-1, %r13
	shrq	$4, %r14
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_195
	jmp	.LBB3_218
.LBB3_196:                              # %.preheader22
                                        #   in Loop: Header=BB3_7 Depth=1
	leaq	-189(%rbp), %rax
	.p2align	4, 0x90
.LBB3_197:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r14d, %ecx
	andb	$7, %cl
	orb	$48, %cl
	movb	%cl, (%rax)
	shrq	$3, %r14
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB3_197
# %bb.198:                              #   in Loop: Header=BB3_7 Depth=1
	leaq	1(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %sil
	je	.LBB3_218
# %bb.199:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %cl
	je	.LBB3_218
# %bb.200:                              #   in Loop: Header=BB3_7 Depth=1
	movb	$48, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	jmp	.LBB3_218
.LBB3_201:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r14
	ja	.LBB3_203
# %bb.202:                              #   in Loop: Header=BB3_7 Depth=1
	addb	$48, %r14b
	movb	%r14b, -189(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_217
.LBB3_224:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$.L.str.3, %r13d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	$.L.str.3, %edi
	movl	%esi, %r14d
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	callq	strlen
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movq	-80(%rbp), %r9          # 8-byte Reload
	movl	%r14d, %esi
	movq	-96(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB3_225
.LBB3_203:                              #   in Loop: Header=BB3_7 Depth=1
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %rax        # 8-byte Reload
	negq	%rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	xorl	%ecx, %ecx
	leaq	-188(%rbp), %r13
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	jmp	.LBB3_204
.LBB3_210:                              #   in Loop: Header=BB3_204 Depth=2
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
	.p2align	4, 0x90
.LBB3_211:                              #   in Loop: Header=BB3_204 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$9, %r15
	jbe	.LBB3_212
.LBB3_204:                              #   Parent Loop BB3_7 Depth=1
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
	movb	%dl, -1(%r13)
	addq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %esi             # imm = 0x400
	je	.LBB3_211
# %bb.205:                              #   in Loop: Header=BB3_204 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movsbl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jne	.LBB3_211
# %bb.206:                              #   in Loop: Header=BB3_204 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10, %r15
	jb	.LBB3_211
# %bb.207:                              #   in Loop: Header=BB3_204 Depth=2
	cmpb	$127, %al
	je	.LBB3_211
# %bb.208:                              #   in Loop: Header=BB3_204 Depth=2
	addq	-120(%rbp), %r13        # 8-byte Folded Reload
	movq	%r13, %rdi
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movq	-144(%rbp), %rdx        # 8-byte Reload
	callq	strncpy
	xorl	%ecx, %ecx
	movq	-136(%rbp), %rax        # 8-byte Reload
	cmpb	$0, 1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_210
# %bb.209:                              #   in Loop: Header=BB3_204 Depth=2
	addq	$1, %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_210
.LBB3_212:                              #   in Loop: Header=BB3_7 Depth=1
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-112(%rbp), %r15        # 8-byte Reload
	jmp	.LBB3_218
.LBB3_216:                              #   in Loop: Header=BB3_7 Depth=1
	movb	$48, -189(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB3_217:                              #   in Loop: Header=BB3_7 Depth=1
	leaq	-189(%rbp), %r13
	.p2align	4, 0x90
.LBB3_218:                              #   in Loop: Header=BB3_7 Depth=1
	leaq	-188(%rbp), %rax
	subq	%r13, %rax
.LBB3_225:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r12d
	movl	%eax, %ecx
	cmovgel	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	%r8b, %r8b
	je	.LBB3_226
# %bb.227:                              #   in Loop: Header=BB3_7 Depth=1
	addl	$1, %ecx
	xorl	%edx, %edx
.LBB3_228:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_229
.LBB3_226:                              #   in Loop: Header=BB3_7 Depth=1
	xorl	%r8d, %r8d
	movb	$1, %dl
.LBB3_229:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	movq	%rax, -168(%rbp)        # 8-byte Spill
	je	.LBB3_231
# %bb.230:                              #   in Loop: Header=BB3_7 Depth=1
	addl	$2, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB3_231:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%esi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	andl	$132, %r14d
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r15, -112(%rbp)        # 8-byte Spill
	movl	%r14d, -124(%rbp)       # 4-byte Spill
	je	.LBB3_232
.LBB3_244:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB3_247
# %bb.245:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r8b, %esi
	movq	%r9, %r14
	movq	%r9, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_18
# %bb.246:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-52(%rbp), %esi         # 4-byte Reload
	movq	%r14, %r9
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	-124(%rbp), %r14d       # 4-byte Reload
.LBB3_247:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %sil
	je	.LBB3_251
# %bb.248:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	-66(%rbp), %esi
	movq	%r9, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	%r9, %r14
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.249:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsbl	-65(%rbp), %esi
	movq	%r14, %rdi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.250:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	-124(%rbp), %r14d       # 4-byte Reload
.LBB3_251:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$128, %r14d
	jne	.LBB3_264
# %bb.252:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %eax
	jle	.LBB3_264
# %bb.253:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %eax
	jl	.LBB3_299
# %bb.254:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%eax, %r14d
.LBB3_255:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_256 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_256:                              #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_255 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.257:                              #   in Loop: Header=BB3_256 Depth=3
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r15
	jb	.LBB3_256
# %bb.258:                              #   in Loop: Header=BB3_255 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB3_255
# %bb.259:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_260
	jmp	.LBB3_263
.LBB3_232:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%ecx, %eax
	jle	.LBB3_244
# %bb.233:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%edx, -148(%rbp)        # 4-byte Spill
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %eax
	jl	.LBB3_298
# %bb.234:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%eax, %ecx
.LBB3_235:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_236 Depth 3
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_236:                              #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_235 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	_vfiprintf_r.blanks(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.237:                              #   in Loop: Header=BB3_236 Depth=3
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r15
	jb	.LBB3_236
# %bb.238:                              #   in Loop: Header=BB3_235 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-184(%rbp), %rcx        # 8-byte Reload
	leal	-16(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	movl	%eax, %ecx
	jg	.LBB3_235
# %bb.239:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_240
	jmp	.LBB3_243
.LBB3_299:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_260:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_261:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.262:                              #   in Loop: Header=BB3_261 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB3_261
.LBB3_263:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB3_264:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rax        # 8-byte Reload
	subl	%eax, %r12d
	jle	.LBB3_277
# %bb.265:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %r12d
	jl	.LBB3_300
# %bb.266:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%r12d, %r14d
.LBB3_267:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_268 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB3_268:                              #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_267 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_269
# %bb.270:                              #   in Loop: Header=BB3_268 Depth=3
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r15
	jb	.LBB3_268
# %bb.271:                              #   in Loop: Header=BB3_267 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%r14), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%r12d, %r14d
	jg	.LBB3_267
# %bb.272:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB3_273
	jmp	.LBB3_276
.LBB3_300:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_273:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	%r12d, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_274:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.zeroes(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_269
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB3_274
.LBB3_276:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %rax        # 8-byte Reload
.LBB3_277:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-64(%rbp), %r12         # 8-byte Reload
	je	.LBB3_281
# %bb.278:                              # %.preheader14
                                        #   in Loop: Header=BB3_7 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_279:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	(%r13,%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_269
# %bb.280:                              #   in Loop: Header=BB3_279 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB3_279
.LBB3_281:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, -52(%rbp)           # 1-byte Folded Reload
	movq	-176(%rbp), %r13        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	je	.LBB3_294
# %bb.282:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %eax
	jle	.LBB3_294
# %bb.283:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$17, %eax
	jl	.LBB3_301
# %bb.284:                              #   in Loop: Header=BB3_7 Depth=1
	movl	%eax, %r14d
.LBB3_285:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_286 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_286:                              #   Parent Loop BB3_7 Depth=1
                                        #     Parent Loop BB3_285 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	_vfiprintf_r.blanks(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_269
# %bb.287:                              #   in Loop: Header=BB3_286 Depth=3
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %r15
	jb	.LBB3_286
# %bb.288:                              #   in Loop: Header=BB3_285 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	-16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %r14d
	movl	%eax, %r14d
	jg	.LBB3_285
# %bb.289:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_290
	jmp	.LBB3_293
.LBB3_298:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_240:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	%eax, %r15
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_241:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r14), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_17
# %bb.242:                              #   in Loop: Header=BB3_241 Depth=2
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	jb	.LBB3_241
.LBB3_243:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %r9          # 8-byte Reload
	movq	-112(%rbp), %r15        # 8-byte Reload
	movl	-52(%rbp), %esi         # 4-byte Reload
	movl	-72(%rbp), %r8d         # 4-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movl	-148(%rbp), %edx        # 4-byte Reload
	movl	-124(%rbp), %r14d       # 4-byte Reload
	jmp	.LBB3_244
.LBB3_301:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_290:                              #   in Loop: Header=BB3_7 Depth=1
	movslq	%eax, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_291:                              #   Parent Loop BB3_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsbl	_vfiprintf_r.blanks(%r15), %esi
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	callq	_fputc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB3_269
# %bb.292:                              #   in Loop: Header=BB3_291 Depth=2
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r15
	jb	.LBB3_291
.LBB3_293:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB3_294:                              #   in Loop: Header=BB3_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	cmovgel	%ecx, %edx
	addl	-84(%rbp), %edx         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB3_7
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_18:
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB3_19
.LBB3_269:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	-100(%rbp), %edi
	leaq	-100(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	16(%r12), %cl
	andb	$64, %cl
	xorl	%eax, %eax
	cmpb	$1, %cl
	sbbl	%eax, %eax
	notl	%eax
	orl	-84(%rbp), %eax         # 4-byte Folded Reload
.LBB3_296:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$248, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	_vfiprintf_r, .Lfunc_end3-_vfiprintf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_34
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_36
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_30
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_37
	.quad	.LBB3_297
	.quad	.LBB3_219
	.quad	.LBB3_42
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_54
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_55
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_60
	.quad	.LBB3_64
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_106
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_131
	.quad	.LBB3_219
	.quad	.LBB3_138
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_159
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_60
	.quad	.LBB3_65
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_57
	.quad	.LBB3_65
	.quad	.LBB3_59
	.quad	.LBB3_219
	.quad	.LBB3_58
	.quad	.LBB3_219
	.quad	.LBB3_86
	.quad	.LBB3_107
	.quad	.LBB3_127
	.quad	.LBB3_59
	.quad	.LBB3_219
	.quad	.LBB3_131
	.quad	.LBB3_59
	.quad	.LBB3_139
	.quad	.LBB3_219
	.quad	.LBB3_219
	.quad	.LBB3_160
	.quad	.LBB3_219
	.quad	.LBB3_59
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
