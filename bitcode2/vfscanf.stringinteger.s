	.text
	.file	"vfscanf.c"
	.globl	_sungetc_r              # -- Begin function _sungetc_r
	.p2align	4, 0x90
	.type	_sungetc_r,@function
_sungetc_r:                             # @_sungetc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r15d
	cmpl	$-1, %esi
	je	.LBB0_13
# %bb.1:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	andb	$-33, 16(%rdx)
	movzbl	%r14b, %r12d
	cmpq	$0, 88(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
# %bb.2:
	movl	8(%rbx), %eax
	cmpl	96(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_4
# %bb.3:
	movq	%rbx, %rsi
	callq	__submore
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
.LBB0_4:
	movq	(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, (%rbx)
	movb	%r14b, -1(%rax)
.LBB0_11:
	addl	$1, 8(%rbx)
	jmp	.LBB0_12
.LBB0_5:
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_6
# %bb.8:
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB0_7
# %bb.9:
	cmpb	%r14b, -1(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
# %bb.10:
	addq	$-1, %rax
	movq	%rax, (%rbx)
	jmp	.LBB0_11
.LBB0_6:
	movq	(%rbx), %rax
.LBB0_7:
	movl	8(%rbx), %ecx
	movl	%ecx, 112(%rbx)
	movq	%rax, 104(%rbx)
	leaq	116(%rbx), %rax
	movq	%rax, 88(%rbx)
	movl	$3, 96(%rbx)
	leaq	118(%rbx), %rax
	movb	%r14b, 118(%rbx)
	movq	%rax, (%rbx)
	movl	$1, 8(%rbx)
.LBB0_12:
	movl	%r12d, %r15d
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_sungetc_r, .Lfunc_end0-_sungetc_r
                                        # -- End function
	.globl	__ssrefill_r            # -- Begin function __ssrefill_r
	.p2align	4, 0x90
	.type	__ssrefill_r,@function
__ssrefill_r:                           # @__ssrefill_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	88(%rsi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_5
# %bb.1:
	leaq	116(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB1_3
# %bb.2:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	$0, 88(%rbx)
	movl	112(%rbx), %eax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_5
# %bb.4:
	movq	104(%rbx), %rax
	movq	%rax, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB1_6
.LBB1_5:
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	orb	$32, 16(%rbx)
	movl	$-1, %eax
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__ssrefill_r, .Lfunc_end1-__ssrefill_r
                                        # -- End function
	.globl	_sfread_r               # -- Begin function _sfread_r
	.p2align	4, 0x90
	.type	_sfread_r,@function
_sfread_r:                              # @_sfread_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r14
	imulq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_1
# %bb.2:
	movq	%r8, %rbx
	movq	%rsi, %r15
	movslq	8(%r8), %r12
	movq	(%r8), %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jbe	.LBB2_3
# %bb.4:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	leaq	116(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcpy
	addq	%r12, (%rbx)
	movl	$0, 8(%rbx)
	subq	%r12, %r13
	movq	88(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_13
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=1
	movq	$0, 88(%rbx)
	movslq	112(%rbx), %rax
	movl	%eax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_13
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	addq	%r12, %r15
	movq	104(%rbx), %rsi
	movq	%rsi, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r12
	cmpq	%rax, %r13
	ja	.LBB2_5
	jmp	.LBB2_10
.LBB2_1:
	xorl	%eax, %eax
	jmp	.LBB2_12
.LBB2_3:
	movq	%r14, %r13
.LBB2_10:
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy
	subl	%r13d, 8(%rbx)
	addq	%r13, (%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB2_11
.LBB2_13:
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	orb	$32, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%r13, %r14
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	_sfread_r, .Lfunc_end2-_sfread_r
                                        # -- End function
	.globl	__ssvfiscanf_r          # -- Begin function __ssvfiscanf_r
	.p2align	4, 0x90
	.type	__ssvfiscanf_r,@function
__ssvfiscanf_r:                         # @__ssvfiscanf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$392, %rsp              # imm = 0x188
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rdx), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	116(%rsi), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	jmp	.LBB3_6
.LBB3_2:
	xorl	%r14d, %r14d
	jmp	.LBB3_319
.LBB3_3:                                #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
.LBB3_4:                                #   in Loop: Header=BB3_6 Depth=1
	leaq	-176(%rbp), %rax
	subl	%eax, %r12d
	addl	-52(%rbp), %ecx         # 4-byte Folded Reload
	addl	%r12d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %r12d
.LBB3_5:                                #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_319
.LBB3_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_7 Depth 2
                                        #       Child Loop BB3_8 Depth 3
                                        #         Child Loop BB3_12 Depth 4
                                        #       Child Loop BB3_49 Depth 3
                                        #     Child Loop BB3_103 Depth 2
                                        #     Child Loop BB3_143 Depth 2
                                        #     Child Loop BB3_254 Depth 2
                                        #     Child Loop BB3_296 Depth 2
                                        #     Child Loop BB3_207 Depth 2
                                        #     Child Loop BB3_223 Depth 2
                                        #     Child Loop BB3_129 Depth 2
                                        #     Child Loop BB3_195 Depth 2
                                        #     Child Loop BB3_236 Depth 2
                                        #     Child Loop BB3_185 Depth 2
	movq	%rbx, %r15
	movl	%r14d, -44(%rbp)        # 4-byte Spill
.LBB3_7:                                #   Parent Loop BB3_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_8 Depth 3
                                        #         Child Loop BB3_12 Depth 4
                                        #       Child Loop BB3_49 Depth 3
	movslq	%r12d, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %rbx
.LBB3_8:                                #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_12 Depth 4
	movq	%rbx, %r15
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movslq	-104(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_48
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ecx
	jne	.LBB3_57
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB3_8 Depth=3
	movl	%r12d, -52(%rbp)        # 4-byte Spill
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	jmp	.LBB3_12
	.p2align	4, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_12 Depth=4
	leaq	(%r12,%r12,4), %rax
	leaq	-48(,%rax,2), %r12
	addq	%r13, %r12
	movq	%rbx, %r15
.LBB3_12:                               #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        #       Parent Loop BB3_8 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	leaq	1(%r15), %rbx
	movzbl	(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$122, %r13
	ja	.LBB3_71
# %bb.13:                               #   in Loop: Header=BB3_12 Depth=4
	jmpq	*.LJTI3_0(,%r13,8)
.LBB3_14:                               #   in Loop: Header=BB3_12 Depth=4
	orl	$1, %r14d
	movq	%rbx, %r15
	jmp	.LBB3_12
.LBB3_15:                               #   in Loop: Header=BB3_12 Depth=4
	orl	$16, %r14d
	movq	%rbx, %r15
	jmp	.LBB3_12
.LBB3_16:                               #   in Loop: Header=BB3_12 Depth=4
	orl	$2, %r14d
	movq	%rbx, %r15
	jmp	.LBB3_12
.LBB3_17:                               #   in Loop: Header=BB3_12 Depth=4
	xorl	%eax, %eax
	cmpb	$104, 1(%r15)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	leal	4(,%rax,4), %eax
	je	.LBB3_21
# %bb.18:                               #   in Loop: Header=BB3_12 Depth=4
	movq	%rbx, %r15
	jmp	.LBB3_24
.LBB3_19:                               #   in Loop: Header=BB3_12 Depth=4
	xorl	%eax, %eax
	cmpb	$108, 1(%r15)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_12 Depth=4
	movq	%rbx, %r15
	jmp	.LBB3_23
.LBB3_21:                               #   in Loop: Header=BB3_12 Depth=4
	addq	$2, %r15
	jmp	.LBB3_24
.LBB3_22:                               #   in Loop: Header=BB3_12 Depth=4
	addq	$2, %r15
.LBB3_23:                               #   in Loop: Header=BB3_12 Depth=4
	addl	$1, %eax
.LBB3_24:                               #   in Loop: Header=BB3_12 Depth=4
	orl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_12
.LBB3_25:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	movl	-52(%rbp), %r12d        # 4-byte Reload
	jne	.LBB3_46
# %bb.26:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r14b
	jne	.LBB3_31
# %bb.27:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r14b
	jne	.LBB3_33
# %bb.28:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	jne	.LBB3_37
# %bb.29:                               #   in Loop: Header=BB3_8 Depth=3
	cmpl	$40, %eax
	ja	.LBB3_41
# %bb.30:                               #   in Loop: Header=BB3_8 Depth=3
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB3_42
.LBB3_31:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_35
# %bb.32:                               #   in Loop: Header=BB3_8 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_36
.LBB3_33:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_39
# %bb.34:                               #   in Loop: Header=BB3_8 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_40
.LBB3_35:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_36:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movb	%r12b, (%rax)
	jmp	.LBB3_45
.LBB3_37:                               #   in Loop: Header=BB3_8 Depth=3
	cmpl	$40, %eax
	ja	.LBB3_43
# %bb.38:                               #   in Loop: Header=BB3_8 Depth=3
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB3_44
.LBB3_39:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_40:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movw	%r12w, (%rax)
	jmp	.LBB3_45
.LBB3_41:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_42:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movl	%r12d, (%rax)
	jmp	.LBB3_45
.LBB3_43:                               #   in Loop: Header=BB3_8 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_44:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB3_45:                               #   in Loop: Header=BB3_8 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_46:                               #   in Loop: Header=BB3_8 Depth=3
	movzbl	(%rbx), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jne	.LBB3_8
	jmp	.LBB3_319
.LBB3_47:                               # %.loopexit
                                        #   in Loop: Header=BB3_7 Depth=2
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movl	-52(%rbp), %r12d        # 4-byte Reload
	jmp	.LBB3_58
.LBB3_48:                               #   in Loop: Header=BB3_7 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	.p2align	4, 0x90
.LBB3_49:                               #   Parent Loop BB3_6 Depth=1
                                        #     Parent Loop BB3_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB3_55
# %bb.50:                               #   in Loop: Header=BB3_49 Depth=3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	88(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_69
# %bb.51:                               #   in Loop: Header=BB3_49 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_49 Depth=3
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_53:                               #   in Loop: Header=BB3_49 Depth=3
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	$0, 88(%rcx)
	movl	112(%rcx), %eax
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_69
# %bb.54:                               #   in Loop: Header=BB3_49 Depth=3
	movq	104(%rcx), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_55:                               #   in Loop: Header=BB3_49 Depth=3
	callq	__locale_ctype_ptr
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_68
# %bb.56:                               #   in Loop: Header=BB3_49 Depth=3
	addl	$1, %r12d
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_49
.LBB3_57:                               #   in Loop: Header=BB3_7 Depth=2
	movq	%r15, %rbx
.LBB3_58:                               #   in Loop: Header=BB3_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB3_60
# %bb.59:                               #   in Loop: Header=BB3_7 Depth=2
	movq	(%r15), %rcx
	jmp	.LBB3_65
.LBB3_60:                               #   in Loop: Header=BB3_7 Depth=2
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_314
# %bb.61:                               #   in Loop: Header=BB3_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_63
# %bb.62:                               #   in Loop: Header=BB3_7 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_63:                               #   in Loop: Header=BB3_7 Depth=2
	movq	$0, 88(%r15)
	movl	112(%r15), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_314
# %bb.64:                               #   in Loop: Header=BB3_7 Depth=2
	movq	104(%r15), %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_65:                               #   in Loop: Header=BB3_7 Depth=2
	movb	(%rcx), %dl
	cmpb	-1(%rbx), %dl
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_319
# %bb.66:                               #   in Loop: Header=BB3_7 Depth=2
	addl	$-1, %eax
	movl	%eax, 8(%r15)
	addq	$1, %rcx
	movq	%rcx, (%r15)
	addl	$1, %r12d
	movq	%rbx, %r15
.LBB3_67:                               #   in Loop: Header=BB3_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB3_68:                               #   in Loop: Header=BB3_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15), %eax
	movl	%eax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_7
	jmp	.LBB3_319
.LBB3_69:                               #   in Loop: Header=BB3_7 Depth=2
	movq	24(%rcx), %rax
	movq	%rax, (%rcx)
	movl	$0, 8(%rcx)
	orb	$32, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_67
.LBB3_70:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$512, %r14d             # imm = 0x200
	jmp	.LBB3_86
.LBB3_71:                               #   in Loop: Header=BB3_6 Depth=1
	callq	__locale_ctype_ptr
	movb	1(%rax,%r13), %al
	andb	$3, %al
	movl	$42, __A_VARIABLE(%rip)
	movb	$3, %r13b
	movl	$_strtol_r, %ecx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movl	$10, -48(%rbp)          # 4-byte Folded Spill
	cmpb	$1, %al
	jne	.LBB3_87
# %bb.72:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_87
.LBB3_73:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_74:                               # %.loopexit3
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	$2, %r13b
	jmp	.LBB3_87
.LBB3_75:                               #   in Loop: Header=BB3_6 Depth=1
	leaq	-432(%rbp), %rdi
	movq	%rbx, %rsi
	callq	__sccl
	movq	%rax, %rbx
	orl	$64, %r14d
	movb	$1, %r13b
	jmp	.LBB3_87
.LBB3_76:                               # %.loopexit1
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	$3, %r13b
	movl	$_strtol_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_87
.LBB3_77:                               #   in Loop: Header=BB3_6 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	jmp	.LBB3_82
.LBB3_78:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_79:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$64, %r14d
	xorl	%r13d, %r13d
	jmp	.LBB3_87
.LBB3_80:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_81:                               #   in Loop: Header=BB3_6 Depth=1
	movb	$3, %r13b
	movl	$_strtol_r, %eax
.LBB3_82:                               #   in Loop: Header=BB3_6 Depth=1
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$10, -48(%rbp)          # 4-byte Folded Spill
	jmp	.LBB3_87
.LBB3_83:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB3_84:                               # %.loopexit2
                                        #   in Loop: Header=BB3_6 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$8, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_87
.LBB3_85:                               #   in Loop: Header=BB3_6 Depth=1
	orl	$544, %r14d             # imm = 0x220
.LBB3_86:                               #   in Loop: Header=BB3_6 Depth=1
	movb	$3, %r13b
	movl	$_strtoul_r, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$16, -48(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB3_87:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB3_93
# %bb.88:                               #   in Loop: Header=BB3_6 Depth=1
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_314
# %bb.89:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_91
# %bb.90:                               #   in Loop: Header=BB3_6 Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_91:                               #   in Loop: Header=BB3_6 Depth=1
	movq	$0, 88(%r15)
	movl	112(%r15), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_314
# %bb.92:                               #   in Loop: Header=BB3_6 Depth=1
	movq	104(%r15), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_93:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r14b
	je	.LBB3_103
.LBB3_94:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%r13b, %eax
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_95:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB3_97
# %bb.96:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB3_97:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	jne	.LBB3_123
# %bb.98:                               #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_183
# %bb.99:                               #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	ja	.LBB3_216
# %bb.100:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_217
	.p2align	4, 0x90
.LBB3_101:                              #   in Loop: Header=BB3_103 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%r15)
.LBB3_102:                              #   in Loop: Header=BB3_103 Depth=2
	addl	$1, -52(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_103:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_94
# %bb.104:                              #   in Loop: Header=BB3_103 Depth=2
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jge	.LBB3_101
# %bb.105:                              #   in Loop: Header=BB3_103 Depth=2
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_314
# %bb.106:                              #   in Loop: Header=BB3_103 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_108
# %bb.107:                              #   in Loop: Header=BB3_103 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_108:                              #   in Loop: Header=BB3_103 Depth=2
	movq	$0, 88(%r15)
	movl	112(%r15), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_314
# %bb.109:                              #   in Loop: Header=BB3_103 Depth=2
	movq	104(%r15), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_102
.LBB3_110:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB3_112
# %bb.111:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB3_112:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_126
# %bb.113:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_190
# %bb.114:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_191
.LBB3_115:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	jne	.LBB3_117
# %bb.116:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r12
.LBB3_117:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	jne	.LBB3_136
# %bb.118:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_202
# %bb.119:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_219
# %bb.120:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_220
.LBB3_121:                              #   in Loop: Header=BB3_6 Depth=1
	leaq	-1(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$39, %rax
	jb	.LBB3_139
# %bb.122:                              #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	%r12d, %eax
	addl	$-39, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$39, %r12d
	jmp	.LBB3_140
.LBB3_123:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$8, %edx
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_212
# %bb.124:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_230
# %bb.125:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_231
.LBB3_126:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -432(%rbp,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	je	.LBB3_320
# %bb.127:                              #   in Loop: Header=BB3_6 Depth=1
	movl	8(%r15), %edx
	movl	$1, %esi
	jmp	.LBB3_129
	.p2align	4, 0x90
.LBB3_128:                              #   in Loop: Header=BB3_129 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rax), %edx
	leaq	1(%r13), %rsi
	cmpb	$0, -432(%rbp,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	je	.LBB3_286
.LBB3_129:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %r13
	leal	-1(%rdx), %ecx
	movl	%ecx, 8(%r15)
	addq	$1, %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %r12
	je	.LBB3_286
# %bb.130:                              #   in Loop: Header=BB3_129 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jg	.LBB3_128
# %bb.131:                              #   in Loop: Header=BB3_129 Depth=2
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_215
# %bb.132:                              #   in Loop: Header=BB3_129 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_134
# %bb.133:                              #   in Loop: Header=BB3_129 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_134:                              #   in Loop: Header=BB3_129 Depth=2
	movq	$0, 88(%r15)
	movl	112(%r15), %ecx
	movl	%ecx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB3_215
# %bb.135:                              #   in Loop: Header=BB3_129 Depth=2
	movq	104(%r15), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_128
.LBB3_136:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$8, %edx
	leaq	-128(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	leaq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	testb	$16, %r14b
	jne	.LBB3_252
# %bb.137:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rcx
	ja	.LBB3_250
# %bb.138:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_251
.LBB3_139:                              #   in Loop: Header=BB3_6 Depth=1
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
.LBB3_140:                              #   in Loop: Header=BB3_6 Depth=1
	orl	$3456, %r14d            # imm = 0xD80
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rax
	xorl	%r13d, %r13d
	jmp	.LBB3_143
	.p2align	4, 0x90
.LBB3_141:                              #   in Loop: Header=BB3_143 Depth=2
	addq	$1, %rax
	movq	%rax, (%r15)
.LBB3_142:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	je	.LBB3_172
.LBB3_143:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB3_172
# %bb.144:                              #   in Loop: Header=BB3_143 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI3_2(,%rdx,8)
.LBB3_145:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$11, -48(%rbp)          # 4-byte Folded Reload
	jl	.LBB3_172
.LBB3_151:                              #   in Loop: Header=BB3_143 Depth=2
	andl	$-2945, %r14d           # imm = 0xF47F
	jmp	.LBB3_154
	.p2align	4, 0x90
.LBB3_147:                              #   in Loop: Header=BB3_143 Depth=2
	movslq	-48(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfiscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	andl	$-2945, %r14d           # imm = 0xF47F
	jmp	.LBB3_154
.LBB3_148:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jns	.LBB3_172
# %bb.149:                              #   in Loop: Header=BB3_143 Depth=2
	andl	$-129, %r14d
	jmp	.LBB3_154
.LBB3_150:                              #   in Loop: Header=BB3_143 Depth=2
	movslq	-48(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfiscanf_r.basefix(%rdx,%rdx), %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rdx
	jae	.LBB3_151
	jmp	.LBB3_172
.LBB3_152:                              #   in Loop: Header=BB3_143 Depth=2
	movl	%r14d, %edx
	andl	$1536, %edx             # imm = 0x600
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB3_172
# %bb.153:                              #   in Loop: Header=BB3_143 Depth=2
	andl	$-1793, %r14d           # imm = 0xF8FF
	orl	$1280, %r14d            # imm = 0x500
	movl	$16, -48(%rbp)          # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB3_154:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB3_155:                              #   in Loop: Header=BB3_143 Depth=2
	movb	%cl, -176(%rbp,%r13)
	addq	$1, %r13
.LBB3_156:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jge	.LBB3_141
# %bb.157:                              #   in Loop: Header=BB3_143 Depth=2
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_171
# %bb.158:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_160
# %bb.159:                              #   in Loop: Header=BB3_143 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_160:                              #   in Loop: Header=BB3_143 Depth=2
	movq	$0, 88(%r15)
	movl	112(%r15), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_171
# %bb.161:                              #   in Loop: Header=BB3_143 Depth=2
	movq	104(%r15), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_142
.LBB3_162:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$2048, %r14d            # imm = 0x800
	je	.LBB3_155
# %bb.163:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB3_165
# %bb.164:                              #   in Loop: Header=BB3_143 Depth=2
	orl	$512, %r14d             # imm = 0x200
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, -48(%rbp)           # 4-byte Folded Spill
.LBB3_165:                              #   in Loop: Header=BB3_143 Depth=2
	movl	-100(%rbp), %edx        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	$1024, %r14d            # imm = 0x400
	jne	.LBB3_168
# %bb.166:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	movq	-72(%rbp), %rcx         # 8-byte Reload
	je	.LBB3_169
# %bb.167:                              #   in Loop: Header=BB3_143 Depth=2
	addl	$-1, %edx
	movl	%edx, -100(%rbp)        # 4-byte Spill
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_170
.LBB3_168:                              #   in Loop: Header=BB3_143 Depth=2
	andl	$-1409, %r14d           # imm = 0xFA7F
	jmp	.LBB3_154
.LBB3_169:                              #   in Loop: Header=BB3_143 Depth=2
	movl	$0, -100(%rbp)          # 4-byte Folded Spill
.LBB3_170:                              #   in Loop: Header=BB3_143 Depth=2
	andl	$-897, %r14d            # imm = 0xFC7F
	addl	$1, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_156
.LBB3_171:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r15), %rax
	movq	%rax, (%r15)
	movl	$0, 8(%r15)
	orb	$32, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_172:                              #   in Loop: Header=BB3_6 Depth=1
	leaq	-176(,%r13), %r12
	addq	%rbp, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	$256, %r14d             # imm = 0x100
	je	.LBB3_176
# %bb.173:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jle	.LBB3_175
# %bb.174:                              #   in Loop: Header=BB3_6 Depth=1
	movsbl	-1(%r12), %esi
	addq	$-1, %r12
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%r15, %rdx
	callq	_sungetc_r
	movl	$42, __A_VARIABLE(%rip)
.LBB3_175:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	-176(%rbp), %rax
	cmpq	%rax, %r12
	je	.LBB3_321
.LBB3_176:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_3
# %bb.177:                              #   in Loop: Header=BB3_6 Depth=1
	movb	$0, (%r12)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	leaq	-176(%rbp), %rsi
	xorl	%edx, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	*-112(%rbp)             # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$32, %r14b
	jne	.LBB3_213
# %bb.178:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %r14b
	jne	.LBB3_274
# %bb.179:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r14b
	jne	.LBB3_287
# %bb.180:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r14b
	jne	.LBB3_304
# %bb.181:                              #   in Loop: Header=BB3_6 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	ja	.LBB3_308
# %bb.182:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_309
.LBB3_183:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	cmpl	%r12d, %eax
	jge	.LBB3_272
# %bb.184:                              #   in Loop: Header=BB3_6 Depth=1
	movq	88(%r15), %rdi
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_185:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rdx
	movslq	%eax, %r15
	addq	%r15, %r14
	addq	%r15, %rcx
	movq	%rcx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_281
# %bb.186:                              #   in Loop: Header=BB3_185 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_188
# %bb.187:                              #   in Loop: Header=BB3_185 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_188:                              #   in Loop: Header=BB3_185 Depth=2
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	$0, 88(%rdx)
	movl	112(%rdx), %eax
	movl	%eax, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_281
# %bb.189:                              #   in Loop: Header=BB3_185 Depth=2
	subq	%r15, %r12
	movq	104(%rdx), %rcx
	movq	%rcx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edi
	cmpl	%r12d, %eax
	movq	%rdx, %r15
	jl	.LBB3_185
	jmp	.LBB3_273
.LBB3_190:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_191:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rcx
	movzbl	(%rcx), %eax
	cmpb	$0, -432(%rbp,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r15
	je	.LBB3_284
# %bb.192:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	leaq	1(%r14), %rdx
	movl	$1, %r13d
	jmp	.LBB3_195
	.p2align	4, 0x90
.LBB3_193:                              #   in Loop: Header=BB3_195 Depth=2
	movq	(%rdx), %rcx
.LBB3_194:                              #   in Loop: Header=BB3_195 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rcx), %esi
	addq	$1, %r13
	leaq	1(%r15), %rdx
	cmpb	$0, -432(%rbp,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_284
.LBB3_195:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r15
	addl	$-1, %eax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%eax, 8(%rdx)
	leaq	1(%rcx), %rax
	movq	%rax, (%rdx)
	movzbl	(%rcx), %eax
	movb	%al, -1(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r12
	je	.LBB3_284
# %bb.196:                              #   in Loop: Header=BB3_195 Depth=2
	movl	8(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB3_193
# %bb.197:                              #   in Loop: Header=BB3_195 Depth=2
	movq	88(%rdx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_283
# %bb.198:                              #   in Loop: Header=BB3_195 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_200
# %bb.199:                              #   in Loop: Header=BB3_195 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_200:                              #   in Loop: Header=BB3_195 Depth=2
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	$0, 88(%rdx)
	movl	112(%rdx), %eax
	movl	%eax, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_283
# %bb.201:                              #   in Loop: Header=BB3_195 Depth=2
	movq	104(%rdx), %rcx
	movq	%rcx, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_194
.LBB3_202:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	xorl	%r14d, %r14d
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_292
# %bb.203:                              # %.preheader15
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	$1, %edx
	jmp	.LBB3_207
	.p2align	4, 0x90
.LBB3_204:                              #   in Loop: Header=BB3_207 Depth=2
	movq	$0, 88(%r15)
	movl	112(%r15), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_291
# %bb.205:                              #   in Loop: Header=BB3_207 Depth=2
	movq	104(%r15), %rax
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_206:                              #   in Loop: Header=BB3_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %esi
	leaq	1(%r14), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_292
.LBB3_207:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r14
	movl	8(%r15), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%r15)
	addq	$1, %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %r12
	je	.LBB3_292
# %bb.208:                              #   in Loop: Header=BB3_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jg	.LBB3_206
# %bb.209:                              #   in Loop: Header=BB3_207 Depth=2
	movq	88(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_291
# %bb.210:                              #   in Loop: Header=BB3_207 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_204
# %bb.211:                              #   in Loop: Header=BB3_207 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_204
.LBB3_212:                              #   in Loop: Header=BB3_6 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB3_232
.LBB3_213:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_276
# %bb.214:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_277
.LBB3_215:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r15), %rax
	movq	%rax, (%r15)
	movl	$0, 8(%r15)
	orb	$32, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_286
.LBB3_216:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_217:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_sfread_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_315
# %bb.218:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %r12d        # 4-byte Reload
	addl	%eax, %r12d
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_5
.LBB3_219:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_220:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r13
	movq	%r14, %r15
	jne	.LBB3_303
# %bb.221:                              # %.preheader13
                                        #   in Loop: Header=BB3_6 Depth=1
	addq	$-1, %r12
	leaq	1(%r14), %rdx
	jmp	.LBB3_223
	.p2align	4, 0x90
.LBB3_222:                              #   in Loop: Header=BB3_223 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %esi
	addq	$-1, %r12
	leaq	1(%r15), %rdx
	testb	$8, 1(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_303
.LBB3_223:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addl	$-1, 8(%r13)
	movq	%rdx, %r15
	leaq	1(%rcx), %rax
	movq	%rax, (%r13)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_303
# %bb.224:                              #   in Loop: Header=BB3_223 Depth=2
	cmpl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB3_222
# %bb.225:                              #   in Loop: Header=BB3_223 Depth=2
	movq	88(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_302
# %bb.226:                              #   in Loop: Header=BB3_223 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_228
# %bb.227:                              #   in Loop: Header=BB3_223 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_228:                              #   in Loop: Header=BB3_223 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	$0, 88(%r13)
	movl	112(%r13), %eax
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_302
# %bb.229:                              #   in Loop: Header=BB3_223 Depth=2
	movq	104(%r13), %rax
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_222
.LBB3_230:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_231:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %r13
.LBB3_232:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB3_236
	.p2align	4, 0x90
.LBB3_233:                              #   in Loop: Header=BB3_236 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	$0, 88(%rcx)
	movl	112(%rcx), %eax
	movl	%eax, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_278
# %bb.234:                              #   in Loop: Header=BB3_236 Depth=2
	movq	104(%rcx), %rax
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_235:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_279
.LBB3_236:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	je	.LBB3_315
# %bb.237:                              #   in Loop: Header=BB3_236 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %rcx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%r13, %rsi
	leaq	-176(%rbp), %rdx
	leaq	-128(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB3_315
# %bb.238:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_240
# %bb.239:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	jne	.LBB3_243
	jmp	.LBB3_246
	.p2align	4, 0x90
.LBB3_240:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_242
# %bb.241:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_242:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB3_243:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_245
# %bb.244:                              #   in Loop: Header=BB3_236 Depth=2
	addq	$4, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB3_245:                              #   in Loop: Header=BB3_236 Depth=2
	addl	%r15d, -52(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB3_246:                              #   in Loop: Header=BB3_236 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB3_235
# %bb.247:                              #   in Loop: Header=BB3_236 Depth=2
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	88(%rcx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_278
# %bb.248:                              #   in Loop: Header=BB3_236 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_233
# %bb.249:                              #   in Loop: Header=BB3_236 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_233
.LBB3_250:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_251:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB3_252:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r15), %rcx
	movzbl	(%rcx), %ecx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_297
# %bb.253:                              # %.preheader19
                                        #   in Loop: Header=BB3_6 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_254:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	je	.LBB3_315
# %bb.255:                              #   in Loop: Header=BB3_254 Depth=2
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -176(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %r13
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	leaq	-176(%rbp), %rdx
	movq	%r13, %rcx
	leaq	-128(%rbp), %r8
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB3_315
# %bb.256:                              #   in Loop: Header=BB3_254 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_259
# %bb.257:                              #   in Loop: Header=BB3_254 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-2, %rax
	je	.LBB3_264
# %bb.258:                              #   in Loop: Header=BB3_254 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %edi
	jmp	.LBB3_260
	.p2align	4, 0x90
.LBB3_259:                              #   in Loop: Header=BB3_254 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
.LBB3_260:                              #   in Loop: Header=BB3_254 Depth=2
	callq	iswspace
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_294
# %bb.261:                              #   in Loop: Header=BB3_254 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_263
# %bb.262:                              #   in Loop: Header=BB3_254 Depth=2
	addq	$4, -72(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB3_263:                              #   in Loop: Header=BB3_254 Depth=2
	addl	%r15d, -52(%rbp)        # 4-byte Folded Spill
	addq	$-1, %r12
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
.LBB3_264:                              #   in Loop: Header=BB3_254 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
	cmpl	$0, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB3_270
# %bb.265:                              #   in Loop: Header=BB3_254 Depth=2
	movq	88(%r13), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_293
# %bb.266:                              #   in Loop: Header=BB3_254 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_268
# %bb.267:                              #   in Loop: Header=BB3_254 Depth=2
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB3_268:                              #   in Loop: Header=BB3_254 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	$0, 88(%r13)
	movl	112(%r13), %eax
	movl	%eax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB3_293
# %bb.269:                              #   in Loop: Header=BB3_254 Depth=2
	movq	104(%r13), %rax
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_270:                              #   in Loop: Header=BB3_254 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	callq	__locale_ctype_ptr
	movq	(%r13), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB3_297
# %bb.271:                              #   in Loop: Header=BB3_254 Depth=2
	andb	$8, %al
	je	.LBB3_254
	jmp	.LBB3_297
.LBB3_272:                              #   in Loop: Header=BB3_6 Depth=1
	xorl	%r14d, %r14d
.LBB3_273:                              #   in Loop: Header=BB3_6 Depth=1
	subl	%r12d, %eax
	addq	%r12, %r14
	movl	%eax, 8(%r15)
	addq	%r12, %rcx
	movq	%rcx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_282
.LBB3_274:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_289
# %bb.275:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_290
.LBB3_276:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_277:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
.LBB3_312:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB3_313
.LBB3_278:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%rcx), %rax
	movq	%rax, (%rcx)
	movl	$0, 8(%rcx)
	orb	$32, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB3_315
.LBB3_279:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	je	.LBB3_299
	jmp	.LBB3_300
.LBB3_281:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%rdx), %rax
	movq	%rax, (%rdx)
	movl	$0, 8(%rdx)
	orb	$32, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_315
.LBB3_282:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %r12d        # 4-byte Reload
	addl	%r14d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_5
.LBB3_283:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%rdx), %rax
	movq	%rax, (%rdx)
	movl	$0, 8(%rdx)
	orb	$32, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB3_316
.LBB3_284:                              #   in Loop: Header=BB3_6 Depth=1
	movl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r13d
	je	.LBB3_322
# %bb.285:                              #   in Loop: Header=BB3_6 Depth=1
	movb	$0, (%r15)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
.LBB3_286:                              # %.loopexit12
                                        #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %r12d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, %r12d
	jmp	.LBB3_5
.LBB3_287:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$40, %rdx
	ja	.LBB3_306
# %bb.288:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_307
.LBB3_289:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_290:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
	jmp	.LBB3_313
.LBB3_291:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r15), %rax
	movq	%rax, (%r15)
	movl	$0, 8(%r15)
	orb	$32, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_292:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %r12d        # 4-byte Reload
	addl	%r14d, %r12d
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_5
.LBB3_293:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r13), %rax
	movq	%rax, (%r13)
	movl	$0, 8(%r13)
	orb	$32, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_297
	jmp	.LBB3_315
.LBB3_294:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB3_297
# %bb.295:                              # %.preheader17
                                        #   in Loop: Header=BB3_6 Depth=1
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	-120(%rbp), %r12        # 8-byte Reload
	.p2align	4, 0x90
.LBB3_296:                              #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-177(%rbp,%r13), %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	_sungetc_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r13
	jne	.LBB3_296
.LBB3_297:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %r14b
	jne	.LBB3_300
# %bb.298:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
.LBB3_299:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_301
.LBB3_300:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
.LBB3_301:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-52(%rbp), %r12d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_5
.LBB3_302:                              #   in Loop: Header=BB3_6 Depth=1
	movq	24(%r13), %rax
	movq	%rax, (%r13)
	movl	$0, 8(%r13)
	orb	$32, 16(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_303:                              #   in Loop: Header=BB3_6 Depth=1
	movb	$0, (%r15)
	subl	%r14d, %r15d
	movl	-52(%rbp), %r12d        # 4-byte Reload
	addl	%r15d, %r12d
	movl	-44(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	jmp	.LBB3_5
.LBB3_304:                              #   in Loop: Header=BB3_6 Depth=1
	cmpl	$40, %ecx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	ja	.LBB3_310
# %bb.305:                              #   in Loop: Header=BB3_6 Depth=1
	movq	%rcx, %rdx
	movq	-80(%rbp), %rsi         # 8-byte Reload
	addq	16(%rsi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rsi)
	jmp	.LBB3_311
.LBB3_306:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_307:                              #   in Loop: Header=BB3_6 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB3_313
.LBB3_308:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB3_309:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
.LBB3_313:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_4
.LBB3_310:                              #   in Loop: Header=BB3_6 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rsi)
.LBB3_311:                              #   in Loop: Header=BB3_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
	jmp	.LBB3_312
.LBB3_314:
	movq	24(%r15), %rax
	movq	%rax, (%r15)
	movl	$0, 8(%r15)
	orb	$32, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_315:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_316:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB3_318
# %bb.317:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movzwl	16(%rax), %eax
	andl	$64, %eax
	xorl	%ecx, %ecx
	cmpw	$1, %ax
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r14d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_319
.LBB3_318:                              # %.loopexit5
	movl	$-1, %r14d
.LBB3_319:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$392, %rsp              # imm = 0x188
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_320:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_319
.LBB3_321:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_322:
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_319
.Lfunc_end3:
	.size	__ssvfiscanf_r, .Lfunc_end3-__ssvfiscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_318
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_47
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_15
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_11
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_78
	.quad	.LBB3_80
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_16
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_83
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_73
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_70
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_75
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_79
	.quad	.LBB3_81
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_17
	.quad	.LBB3_76
	.quad	.LBB3_14
	.quad	.LBB3_71
	.quad	.LBB3_19
	.quad	.LBB3_71
	.quad	.LBB3_25
	.quad	.LBB3_84
	.quad	.LBB3_85
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_74
	.quad	.LBB3_14
	.quad	.LBB3_77
	.quad	.LBB3_71
	.quad	.LBB3_71
	.quad	.LBB3_70
	.quad	.LBB3_71
	.quad	.LBB3_14
.LJTI3_1:
	.quad	.LBB3_95
	.quad	.LBB3_110
	.quad	.LBB3_115
	.quad	.LBB3_121
.LJTI3_2:
	.quad	.LBB3_148
	.quad	.LBB3_172
	.quad	.LBB3_148
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_162
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_147
	.quad	.LBB3_150
	.quad	.LBB3_150
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_152
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_145
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_172
	.quad	.LBB3_152
                                        # -- End function
	.type	__ssvfiscanf_r.basefix,@object # @__ssvfiscanf_r.basefix
	.p2align	4
__ssvfiscanf_r.basefix:
	.short	10                      # 0xa
	.short	1                       # 0x1
	.short	2                       # 0x2
	.short	3                       # 0x3
	.short	4                       # 0x4
	.short	5                       # 0x5
	.short	6                       # 0x6
	.short	7                       # 0x7
	.short	8                       # 0x8
	.short	9                       # 0x9
	.short	10                      # 0xa
	.short	11                      # 0xb
	.short	12                      # 0xc
	.short	13                      # 0xd
	.short	14                      # 0xe
	.short	15                      # 0xf
	.short	16                      # 0x10
	.size	__ssvfiscanf_r.basefix, 34

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
