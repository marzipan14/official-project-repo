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
	movl	$-1, %r15d
	cmpl	$-1, %esi
	je	.LBB0_13
# %bb.1:
	movq	%rdx, %rbx
	movl	%esi, %r14d
	andb	$-33, 16(%rdx)
	movzbl	%r14b, %r12d
	cmpq	$0, 88(%rdx)
	je	.LBB0_5
# %bb.2:
	movl	8(%rbx), %eax
	cmpl	96(%rbx), %eax
	jl	.LBB0_4
# %bb.3:
	movq	%rbx, %rsi
	callq	__submore
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
	testq	%rcx, %rcx
	je	.LBB0_6
# %bb.8:
	movq	(%rbx), %rax
	cmpq	%rcx, %rax
	jbe	.LBB0_7
# %bb.9:
	cmpb	%r14b, -1(%rax)
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
	testq	%rdi, %rdi
	je	.LBB1_5
# %bb.1:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB1_3
# %bb.2:
	callq	free
.LBB1_3:
	movq	$0, 88(%rbx)
	movl	112(%rbx), %eax
	movl	%eax, 8(%rbx)
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
	testq	%r14, %r14
	je	.LBB2_1
# %bb.2:
	movq	%r8, %rbx
	movq	%rsi, %r15
	movslq	8(%r8), %r13
	movq	(%r8), %rsi
	cmpq	%r13, %r14
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jbe	.LBB2_3
# %bb.4:
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	leaq	116(%rbx), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r13, %rdx
	callq	memcpy
	addq	%r13, (%rbx)
	movl	$0, 8(%rbx)
	subq	%r13, %r12
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_12
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	cmpq	-64(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	callq	free
.LBB2_8:                                #   in Loop: Header=BB2_5 Depth=1
	movq	$0, 88(%rbx)
	movslq	112(%rbx), %rax
	movl	%eax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB2_12
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	addq	%r13, %r15
	movq	104(%rbx), %rsi
	movq	%rsi, (%rbx)
	movq	%rax, %r13
	cmpq	%rax, %r12
	ja	.LBB2_5
	jmp	.LBB2_10
.LBB2_1:
	xorl	%eax, %eax
	jmp	.LBB2_11
.LBB2_3:
	movq	%r14, %r12
.LBB2_10:
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcpy
	subl	%r12d, 8(%rbx)
	addq	%r12, (%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB2_11
.LBB2_12:
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
	movl	$0, 8(%rbx)
	orb	$32, 16(%rbx)
	subq	%r12, %r14
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	-48(%rbp)               # 8-byte Folded Reload
.LBB2_11:
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
	subq	$408, %rsp              # imm = 0x198
	movq	%rdi, -128(%rbp)        # 8-byte Spill
	movzbl	(%rdx), %eax
	movl	%eax, -108(%rbp)
	testl	%eax, %eax
	je	.LBB3_2
# %bb.1:
	movq	%rdx, %r13
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	leaq	8(%rcx), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	116(%rsi), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	leaq	118(%rsi), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	xorl	%ebx, %ebx
	xorl	%r14d, %r14d
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_9
.LBB3_2:
	xorl	%r14d, %r14d
	jmp	.LBB3_316
.LBB3_302:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_303:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rcx), %rcx
	movb	%al, (%rcx)
.LBB3_6:                                #   in Loop: Header=BB3_9 Depth=1
	addl	$1, %r14d
.LBB3_7:                                #   in Loop: Header=BB3_9 Depth=1
	leaq	-192(%rbp), %rax
	subl	%eax, %r12d
	movq	-104(%rbp), %rax        # 8-byte Reload
	addl	%r15d, %eax
	addl	%r12d, %eax
	movl	%eax, %ebx
.LBB3_8:                                #   in Loop: Header=BB3_9 Depth=1
	movzbl	(%r13), %eax
	movl	%eax, -108(%rbp)
	testl	%eax, %eax
	je	.LBB3_316
.LBB3_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #       Child Loop BB3_55 Depth 3
                                        #     Child Loop BB3_100 Depth 2
                                        #     Child Loop BB3_117 Depth 2
                                        #     Child Loop BB3_233 Depth 2
                                        #     Child Loop BB3_274 Depth 2
                                        #     Child Loop BB3_179 Depth 2
                                        #     Child Loop BB3_204 Depth 2
                                        #     Child Loop BB3_144 Depth 2
                                        #     Child Loop BB3_167 Depth 2
                                        #     Child Loop BB3_217 Depth 2
                                        #     Child Loop BB3_157 Depth 2
	movq	%r13, %r15
	movl	%r14d, -44(%rbp)        # 4-byte Spill
.LBB3_10:                               #   Parent Loop BB3_9 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_11 Depth 3
                                        #         Child Loop BB3_15 Depth 4
                                        #       Child Loop BB3_55 Depth 3
	movslq	%ebx, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r15, %r13
.LBB3_11:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_15 Depth 4
	movq	%r13, %r15
	addq	$1, %r15
	callq	__locale_ctype_ptr
	movslq	-108(%rbp), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB3_49
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=3
	cmpl	$37, %ecx
	jne	.LBB3_57
# %bb.13:                               # %.preheader
                                        #   in Loop: Header=BB3_11 Depth=3
	xorl	%edx, %edx
	xorl	%r12d, %r12d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=4
	leaq	(%r12,%r12,4), %rax
	leaq	(%r14,%rax,2), %r12
	addq	$-48, %r12
	movq	%r13, %r15
.LBB3_15:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        #       Parent Loop BB3_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	leaq	1(%r15), %r13
	movzbl	(%r15), %r14d
	cmpq	$122, %r14
	ja	.LBB3_70
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=4
	jmpq	*.LJTI3_0(,%r14,8)
.LBB3_17:                               #   in Loop: Header=BB3_15 Depth=4
	orl	$1, %edx
	movq	%r13, %r15
	jmp	.LBB3_15
.LBB3_18:                               #   in Loop: Header=BB3_15 Depth=4
	orl	$16, %edx
	movq	%r13, %r15
	jmp	.LBB3_15
.LBB3_19:                               #   in Loop: Header=BB3_15 Depth=4
	orl	$2, %edx
	movq	%r13, %r15
	jmp	.LBB3_15
.LBB3_20:                               #   in Loop: Header=BB3_15 Depth=4
	xorl	%eax, %eax
	cmpb	$104, 1(%r15)
	sete	%al
	leal	4(,%rax,4), %eax
	je	.LBB3_24
# %bb.21:                               #   in Loop: Header=BB3_15 Depth=4
	movq	%r13, %r15
	orl	%eax, %edx
	jmp	.LBB3_15
.LBB3_22:                               #   in Loop: Header=BB3_15 Depth=4
	xorl	%eax, %eax
	cmpb	$108, 1(%r15)
	sete	%al
	je	.LBB3_25
# %bb.23:                               #   in Loop: Header=BB3_15 Depth=4
	movq	%r13, %r15
	jmp	.LBB3_26
.LBB3_24:                               #   in Loop: Header=BB3_15 Depth=4
	addq	$2, %r15
	orl	%eax, %edx
	jmp	.LBB3_15
.LBB3_25:                               #   in Loop: Header=BB3_15 Depth=4
	addq	$2, %r15
.LBB3_26:                               #   in Loop: Header=BB3_15 Depth=4
	addl	$1, %eax
	orl	%eax, %edx
	jmp	.LBB3_15
.LBB3_27:                               #   in Loop: Header=BB3_11 Depth=3
	testb	$16, %dl
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jne	.LBB3_47
# %bb.28:                               #   in Loop: Header=BB3_11 Depth=3
	testb	$8, %dl
	jne	.LBB3_33
# %bb.29:                               #   in Loop: Header=BB3_11 Depth=3
	testb	$4, %dl
	jne	.LBB3_35
# %bb.30:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-80(%rbp), %rax         # 8-byte Reload
	movslq	(%rax), %rax
	testb	$1, %dl
	jne	.LBB3_39
# %bb.31:                               #   in Loop: Header=BB3_11 Depth=3
	cmpl	$40, %eax
	ja	.LBB3_43
# %bb.32:                               #   in Loop: Header=BB3_11 Depth=3
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB3_44
.LBB3_33:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_37
# %bb.34:                               #   in Loop: Header=BB3_11 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_38
.LBB3_35:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movl	%ebx, %edi
	ja	.LBB3_41
# %bb.36:                               #   in Loop: Header=BB3_11 Depth=3
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_42
.LBB3_37:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_38:                               #   in Loop: Header=BB3_11 Depth=3
	movl	%ebx, %ecx
	movq	(%rax), %rax
	movb	%cl, (%rax)
	jmp	.LBB3_47
.LBB3_39:                               #   in Loop: Header=BB3_11 Depth=3
	cmpl	$40, %eax
	ja	.LBB3_45
# %bb.40:                               #   in Loop: Header=BB3_11 Depth=3
	movq	%rax, %rcx
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	16(%rdx), %rcx
	addl	$8, %eax
	movl	%eax, (%rdx)
	jmp	.LBB3_46
.LBB3_41:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_42:                               #   in Loop: Header=BB3_11 Depth=3
	movq	(%rax), %rax
	movw	%di, (%rax)
	jmp	.LBB3_47
.LBB3_43:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_44:                               #   in Loop: Header=BB3_11 Depth=3
	movl	%ebx, %edx
	movq	(%rcx), %rax
	movl	%ebx, (%rax)
	jmp	.LBB3_47
.LBB3_45:                               #   in Loop: Header=BB3_11 Depth=3
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	leaq	8(%rcx), %rax
	movq	%rax, (%rdx)
.LBB3_46:                               #   in Loop: Header=BB3_11 Depth=3
	movq	(%rcx), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, (%rax)
.LBB3_47:                               #   in Loop: Header=BB3_11 Depth=3
	movzbl	(%r13), %eax
	movl	%eax, -108(%rbp)
	testl	%eax, %eax
	jne	.LBB3_11
	jmp	.LBB3_316
.LBB3_48:                               # %.loopexit
                                        #   in Loop: Header=BB3_10 Depth=2
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_58
.LBB3_49:                               #   in Loop: Header=BB3_10 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	8(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB3_55
	jmp	.LBB3_50
	.p2align	4, 0x90
.LBB3_56:                               #   in Loop: Header=BB3_55 Depth=3
	addl	$1, %ebx
	movl	8(%rsi), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	testl	%eax, %eax
	jg	.LBB3_55
.LBB3_50:                               #   in Loop: Header=BB3_10 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_68
# %bb.51:                               #   in Loop: Header=BB3_10 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_53
# %bb.52:                               #   in Loop: Header=BB3_10 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_53:                               #   in Loop: Header=BB3_10 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_68
# %bb.54:                               #   in Loop: Header=BB3_10 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
.LBB3_55:                               #   Parent Loop BB3_9 Depth=1
                                        #     Parent Loop BB3_10 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB3_56
	jmp	.LBB3_67
.LBB3_57:                               #   in Loop: Header=BB3_10 Depth=2
	movq	%r15, %r13
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_58:                               #   in Loop: Header=BB3_10 Depth=2
	movl	8(%rsi), %eax
	testl	%eax, %eax
	jle	.LBB3_60
# %bb.59:                               #   in Loop: Header=BB3_10 Depth=2
	movq	(%rsi), %rcx
	jmp	.LBB3_65
.LBB3_60:                               #   in Loop: Header=BB3_10 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_312
# %bb.61:                               #   in Loop: Header=BB3_10 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_63
# %bb.62:                               #   in Loop: Header=BB3_10 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_63:                               #   in Loop: Header=BB3_10 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_312
# %bb.64:                               #   in Loop: Header=BB3_10 Depth=2
	movq	104(%rsi), %rcx
	movq	%rcx, (%rsi)
	movl	-44(%rbp), %r14d        # 4-byte Reload
.LBB3_65:                               #   in Loop: Header=BB3_10 Depth=2
	movb	(%rcx), %dl
	cmpb	-1(%r13), %dl
	jne	.LBB3_316
# %bb.66:                               #   in Loop: Header=BB3_10 Depth=2
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	addl	$1, %ebx
	movq	%r13, %r15
.LBB3_67:                               #   in Loop: Header=BB3_10 Depth=2
	movzbl	(%r15), %eax
	movl	%eax, -108(%rbp)
	testl	%eax, %eax
	jne	.LBB3_10
	jmp	.LBB3_316
.LBB3_68:                               #   in Loop: Header=BB3_10 Depth=2
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
	jmp	.LBB3_67
.LBB3_69:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$512, %edx              # imm = 0x200
	jmp	.LBB3_81
.LBB3_70:                               #   in Loop: Header=BB3_9 Depth=1
	movq	%rdx, %r15
	callq	__locale_ctype_ptr
	movq	%r15, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movb	1(%rax,%r14), %al
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sete	%cl
	orl	%ecx, %edx
	jmp	.LBB3_75
.LBB3_71:                               #   in Loop: Header=BB3_9 Depth=1
	movb	$3, %r14b
	movl	$_strtol_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$0, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_85
.LBB3_72:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$1, %edx
.LBB3_73:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$64, %edx
	xorl	%r14d, %r14d
	jmp	.LBB3_85
.LBB3_74:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$1, %edx
.LBB3_75:                               # %.loopexit1
                                        #   in Loop: Header=BB3_9 Depth=1
	movb	$3, %r14b
	movl	$_strtol_r, %eax
	jmp	.LBB3_84
.LBB3_76:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$1, %edx
.LBB3_77:                               #   in Loop: Header=BB3_9 Depth=1
	movb	$3, %r14b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$8, -60(%rbp)           # 4-byte Folded Spill
	jmp	.LBB3_85
.LBB3_78:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$1, %edx
	movb	$2, %r14b
	jmp	.LBB3_85
.LBB3_79:                               #   in Loop: Header=BB3_9 Depth=1
	leaq	-448(%rbp), %rdi
	movq	%r13, %rsi
	movq	%rdx, %r14
	callq	__sccl
	movq	%r14, %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r13
	orl	$64, %edx
	movb	$1, %r14b
	jmp	.LBB3_85
.LBB3_80:                               #   in Loop: Header=BB3_9 Depth=1
	orl	$544, %edx              # imm = 0x220
.LBB3_81:                               #   in Loop: Header=BB3_9 Depth=1
	movb	$3, %r14b
	movl	$_strtoul_r, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$16, -60(%rbp)          # 4-byte Folded Spill
	jmp	.LBB3_85
.LBB3_82:                               #   in Loop: Header=BB3_9 Depth=1
	movb	$2, %r14b
	jmp	.LBB3_85
.LBB3_83:                               #   in Loop: Header=BB3_9 Depth=1
	movb	$3, %r14b
	movl	$_strtoul_r, %eax
.LBB3_84:                               #   in Loop: Header=BB3_9 Depth=1
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$10, -60(%rbp)          # 4-byte Folded Spill
.LBB3_85:                               #   in Loop: Header=BB3_9 Depth=1
	cmpl	$0, 8(%rsi)
	movl	%ebx, %r15d
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	jle	.LBB3_87
# %bb.86:                               #   in Loop: Header=BB3_9 Depth=1
	testb	$64, %dl
	je	.LBB3_92
	jmp	.LBB3_93
	.p2align	4, 0x90
.LBB3_87:                               #   in Loop: Header=BB3_9 Depth=1
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_312
# %bb.88:                               #   in Loop: Header=BB3_9 Depth=1
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_90
# %bb.89:                               #   in Loop: Header=BB3_9 Depth=1
	callq	free
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_90:                               #   in Loop: Header=BB3_9 Depth=1
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_312
# %bb.91:                               #   in Loop: Header=BB3_9 Depth=1
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
	testb	$64, %dl
	jne	.LBB3_93
.LBB3_92:                               #   in Loop: Header=BB3_9 Depth=1
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	jne	.LBB3_100
.LBB3_93:                               #   in Loop: Header=BB3_9 Depth=1
	movzbl	%r14b, %eax
	jmpq	*.LJTI3_1(,%rax,8)
.LBB3_94:                               #   in Loop: Header=BB3_9 Depth=1
	testq	%r12, %r12
	movl	$1, %eax
	cmoveq	%rax, %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	testb	$1, %al
	jne	.LBB3_138
# %bb.95:                               #   in Loop: Header=BB3_9 Depth=1
	testb	$16, %al
	jne	.LBB3_155
# %bb.96:                               #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_197
# %bb.97:                               #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_198
	.p2align	4, 0x90
.LBB3_98:                               #   in Loop: Header=BB3_100 Depth=2
	addq	$1, %rcx
	movq	%rcx, (%rsi)
.LBB3_99:                               #   in Loop: Header=BB3_100 Depth=2
	movq	%rsi, %rbx
	addl	$1, %r15d
	callq	__locale_ctype_ptr
	movq	(%rbx), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%rbx, %rsi
	je	.LBB3_93
.LBB3_100:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rsi)
	cmpl	$2, %eax
	jge	.LBB3_98
# %bb.101:                              #   in Loop: Header=BB3_100 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_312
# %bb.102:                              #   in Loop: Header=BB3_100 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_104
# %bb.103:                              #   in Loop: Header=BB3_100 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_104:                              #   in Loop: Header=BB3_100 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_312
# %bb.105:                              #   in Loop: Header=BB3_100 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
	jmp	.LBB3_99
.LBB3_106:                              #   in Loop: Header=BB3_9 Depth=1
	cmpq	$1, %r12
	movl	$0, %r14d
	sbbq	%r14, %r14
	orq	%r12, %r14
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	jne	.LBB3_141
# %bb.107:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	movl	%r15d, -140(%rbp)       # 4-byte Spill
	ja	.LBB3_162
# %bb.108:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_163
.LBB3_109:                              #   in Loop: Header=BB3_9 Depth=1
	cmpq	$1, %r12
	movl	$0, %r14d
	sbbq	%r14, %r14
	orq	%r12, %r14
	movq	-72(%rbp), %rax         # 8-byte Reload
	testb	$1, %al
	jne	.LBB3_151
# %bb.110:                              #   in Loop: Header=BB3_9 Depth=1
	testb	$16, %al
	jne	.LBB3_174
# %bb.111:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	%r15d, %ebx
	cmpq	$40, %rcx
	ja	.LBB3_200
# %bb.112:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_201
.LBB3_113:                              #   in Loop: Header=BB3_9 Depth=1
	leaq	-1(%r12), %rax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	orl	$3456, %ecx             # imm = 0xD80
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	cmpq	$38, %rax
	movq	%r12, %r14
	movl	$39, %ecx
	cmovaq	%rcx, %r14
	testq	%r14, %r14
	je	.LBB3_154
# %bb.114:                              #   in Loop: Header=BB3_9 Depth=1
	addl	$-39, %r12d
	xorl	%ecx, %ecx
	cmpq	$38, %rax
	movl	$0, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	cmovbel	%ecx, %r12d
	movq	(%rsi), %rax
	xorl	%ebx, %ebx
	jmp	.LBB3_117
	.p2align	4, 0x90
.LBB3_115:                              #   in Loop: Header=BB3_117 Depth=2
	addq	$1, %rax
.LBB3_116:                              #   in Loop: Header=BB3_117 Depth=2
	movq	%rax, (%rsi)
	addq	$-1, %r14
	je	.LBB3_186
.LBB3_117:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax), %ecx
	leal	-43(%rcx), %edx
	cmpb	$77, %dl
	ja	.LBB3_186
# %bb.118:                              #   in Loop: Header=BB3_117 Depth=2
	movzbl	%dl, %edx
	jmpq	*.LJTI3_2(,%rdx,8)
.LBB3_119:                              #   in Loop: Header=BB3_117 Depth=2
	cmpl	$11, -60(%rbp)          # 4-byte Folded Reload
	jge	.LBB3_124
	jmp	.LBB3_186
	.p2align	4, 0x90
.LBB3_120:                              #   in Loop: Header=BB3_117 Depth=2
	movslq	-60(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfiscanf_r.basefix(%rdx,%rdx), %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB3_124
.LBB3_121:                              #   in Loop: Header=BB3_117 Depth=2
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testb	%dl, %dl
	jns	.LBB3_186
# %bb.122:                              #   in Loop: Header=BB3_117 Depth=2
	andl	$-129, %edx
	jmp	.LBB3_125
.LBB3_123:                              #   in Loop: Header=BB3_117 Depth=2
	movslq	-60(%rbp), %rdx         # 4-byte Folded Reload
	movswl	__ssvfiscanf_r.basefix(%rdx,%rdx), %edi
	movl	%edi, -60(%rbp)         # 4-byte Spill
	addq	$-1, %rdx
	cmpq	$8, %rdx
	jb	.LBB3_186
	.p2align	4, 0x90
.LBB3_124:                              #   in Loop: Header=BB3_117 Depth=2
	movq	-72(%rbp), %rdx         # 8-byte Reload
	andl	$-2945, %edx            # imm = 0xF47F
.LBB3_125:                              #   in Loop: Header=BB3_117 Depth=2
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movb	%cl, -192(%rbp,%rbx)
	addq	$1, %rbx
.LBB3_126:                              #   in Loop: Header=BB3_117 Depth=2
	movl	8(%rsi), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 8(%rsi)
	cmpl	$2, %ecx
	jge	.LBB3_115
# %bb.127:                              #   in Loop: Header=BB3_117 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_185
# %bb.128:                              #   in Loop: Header=BB3_117 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_130
# %bb.129:                              #   in Loop: Header=BB3_117 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_130:                              #   in Loop: Header=BB3_117 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_185
# %bb.131:                              #   in Loop: Header=BB3_117 Depth=2
	movq	104(%rsi), %rax
	jmp	.LBB3_116
.LBB3_132:                              #   in Loop: Header=BB3_117 Depth=2
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movl	%edi, %edx
	andl	$1536, %edx             # imm = 0x600
	cmpl	$512, %edx              # imm = 0x200
	jne	.LBB3_186
# %bb.133:                              #   in Loop: Header=BB3_117 Depth=2
	andl	$-1793, %edi            # imm = 0xF8FF
	orl	$1280, %edi             # imm = 0x500
	movl	$16, -60(%rbp)          # 4-byte Folded Spill
	movq	%rdi, %rdx
	jmp	.LBB3_125
.LBB3_134:                              #   in Loop: Header=BB3_117 Depth=2
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testl	$2048, %edx             # imm = 0x800
	je	.LBB3_125
# %bb.135:                              #   in Loop: Header=BB3_117 Depth=2
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rdx, %rdi
	movl	%edi, %r9d
	orl	$512, %r9d              # imm = 0x200
	movl	-60(%rbp), %edx         # 4-byte Reload
	testl	%edx, %edx
	cmovnel	%edi, %r9d
	movl	$8, %edi
	cmovel	%edi, %edx
	movl	%edx, -60(%rbp)         # 4-byte Spill
	testl	$1024, %r9d             # imm = 0x400
	jne	.LBB3_137
# %bb.136:                              #   in Loop: Header=BB3_117 Depth=2
	andl	$-897, %r9d             # imm = 0xFC7F
	xorl	%ecx, %ecx
	subl	$1, %r12d
	setae	%cl
	movl	$0, %edi
	cmovbl	%edi, %r12d
	addq	%rcx, %r14
	movq	%r8, %rcx
	addl	$1, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r9d, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_126
.LBB3_137:                              #   in Loop: Header=BB3_117 Depth=2
	andl	$-1409, %r9d            # imm = 0xFA7F
	movl	%r9d, %edx
	jmp	.LBB3_125
.LBB3_138:                              #   in Loop: Header=BB3_9 Depth=1
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	movq	-72(%rbp), %rax         # 8-byte Reload
	andl	$16, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jne	.LBB3_184
# %bb.139:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	movl	%r15d, %ebx
	cmpq	$40, %rcx
	ja	.LBB3_211
# %bb.140:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_212
.LBB3_141:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	cmpb	$0, -448(%rbp,%rcx)
	je	.LBB3_319
# %bb.142:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	movl	8(%rsi), %edx
	movl	$1, %edi
	jmp	.LBB3_144
	.p2align	4, 0x90
.LBB3_143:                              #   in Loop: Header=BB3_144 Depth=2
	movzbl	(%rax), %edx
	leaq	1(%r15), %rdi
	cmpb	$0, -448(%rbp,%rdx)
	movl	%ecx, %edx
	je	.LBB3_196
.LBB3_144:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdi, %r15
	leal	-1(%rdx), %ecx
	movl	%ecx, 8(%rsi)
	addq	$1, %rax
	movq	%rax, (%rsi)
	cmpq	%rdi, %r14
	je	.LBB3_196
# %bb.145:                              #   in Loop: Header=BB3_144 Depth=2
	cmpl	$1, %edx
	jg	.LBB3_143
# %bb.146:                              #   in Loop: Header=BB3_144 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_195
# %bb.147:                              #   in Loop: Header=BB3_144 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_149
# %bb.148:                              #   in Loop: Header=BB3_144 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_149:                              #   in Loop: Header=BB3_144 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %ecx
	movl	%ecx, 8(%rsi)
	testl	%ecx, %ecx
	je	.LBB3_195
# %bb.150:                              #   in Loop: Header=BB3_144 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
	jmp	.LBB3_143
.LBB3_151:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rax, %rbx
	movl	$8, %edx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	-108(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	testb	$16, %bl
	jne	.LBB3_230
# %bb.152:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdx         # 8-byte Reload
	movslq	(%rdx), %rcx
	cmpq	$40, %rcx
	ja	.LBB3_228
# %bb.153:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rax
	addq	16(%rdx), %rax
	addl	$8, %ecx
	movl	%ecx, (%rdx)
	jmp	.LBB3_229
.LBB3_154:                              #   in Loop: Header=BB3_9 Depth=1
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_186
.LBB3_155:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	movl	8(%rsi), %eax
	movq	(%rsi), %rcx
	cmpl	%r12d, %eax
	jge	.LBB3_249
# %bb.156:                              #   in Loop: Header=BB3_9 Depth=1
	movq	88(%rsi), %rdi
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB3_157:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%eax, %r15
	addq	%r15, %r14
	addq	%r15, %rcx
	movq	%rcx, (%rsi)
	testq	%rdi, %rdi
	je	.LBB3_254
# %bb.158:                              #   in Loop: Header=BB3_157 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_160
# %bb.159:                              #   in Loop: Header=BB3_157 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_160:                              #   in Loop: Header=BB3_157 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_254
# %bb.161:                              #   in Loop: Header=BB3_157 Depth=2
	subq	%r15, %r12
	movq	104(%rsi), %rcx
	movq	%rcx, (%rsi)
	movl	$0, %edi
	cmpl	%r12d, %eax
	jl	.LBB3_157
	jmp	.LBB3_250
.LBB3_162:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_163:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rax), %r15
	movq	(%rsi), %rcx
	movzbl	(%rcx), %eax
	cmpb	$0, -448(%rbp,%rax)
	movq	%r15, %r12
	je	.LBB3_257
# %bb.164:                              #   in Loop: Header=BB3_9 Depth=1
	movl	8(%rsi), %eax
	leaq	1(%r15), %rdx
	movl	$1, %ebx
	jmp	.LBB3_167
	.p2align	4, 0x90
.LBB3_165:                              #   in Loop: Header=BB3_167 Depth=2
	movq	(%rsi), %rcx
.LBB3_166:                              #   in Loop: Header=BB3_167 Depth=2
	movzbl	(%rcx), %edi
	addq	$1, %rbx
	leaq	1(%r12), %rdx
	cmpb	$0, -448(%rbp,%rdi)
	je	.LBB3_257
.LBB3_167:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r12
	addl	$-1, %eax
	movl	%eax, 8(%rsi)
	leaq	1(%rcx), %rax
	movq	%rax, (%rsi)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	cmpq	%rbx, %r14
	je	.LBB3_257
# %bb.168:                              #   in Loop: Header=BB3_167 Depth=2
	movl	8(%rsi), %eax
	testl	%eax, %eax
	jg	.LBB3_165
# %bb.169:                              #   in Loop: Header=BB3_167 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_256
# %bb.170:                              #   in Loop: Header=BB3_167 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_172
# %bb.171:                              #   in Loop: Header=BB3_167 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_172:                              #   in Loop: Header=BB3_167 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_256
# %bb.173:                              #   in Loop: Header=BB3_167 Depth=2
	movq	104(%rsi), %rcx
	movq	%rcx, (%rsi)
	jmp	.LBB3_166
.LBB3_174:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	xorl	%r15d, %r15d
	testb	$8, 1(%rax,%rdx)
	jne	.LBB3_264
# %bb.175:                              # %.preheader13
                                        #   in Loop: Header=BB3_9 Depth=1
	movl	$1, %edx
	jmp	.LBB3_179
	.p2align	4, 0x90
.LBB3_176:                              #   in Loop: Header=BB3_179 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_263
# %bb.177:                              #   in Loop: Header=BB3_179 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
.LBB3_178:                              #   in Loop: Header=BB3_179 Depth=2
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	leaq	1(%r15), %rdx
	testb	$8, 1(%rax,%rdi)
	jne	.LBB3_264
.LBB3_179:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r15
	movl	8(%rsi), %eax
	leal	-1(%rax), %edx
	movl	%edx, 8(%rsi)
	addq	$1, %rcx
	movq	%rcx, (%rsi)
	cmpq	%r15, %r14
	je	.LBB3_264
# %bb.180:                              #   in Loop: Header=BB3_179 Depth=2
	cmpl	$1, %eax
	jg	.LBB3_178
# %bb.181:                              #   in Loop: Header=BB3_179 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_263
# %bb.182:                              #   in Loop: Header=BB3_179 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_176
# %bb.183:                              #   in Loop: Header=BB3_179 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_176
.LBB3_184:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB3_213
.LBB3_185:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
.LBB3_186:                              #   in Loop: Header=BB3_9 Depth=1
	leaq	(%rbx,%rbp), %r12
	addq	$-192, %r12
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testl	$256, %edx              # imm = 0x100
	jne	.LBB3_188
# %bb.187:                              #   in Loop: Header=BB3_9 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_289
.LBB3_188:                              #   in Loop: Header=BB3_9 Depth=1
	testq	%rbx, %rbx
	jle	.LBB3_288
# %bb.189:                              #   in Loop: Header=BB3_9 Depth=1
	movb	-1(%r12), %r14b
	addq	$-1, %r12
	cmpb	$-1, %r14b
	je	.LBB3_288
# %bb.190:                              #   in Loop: Header=BB3_9 Depth=1
	andb	$-33, 16(%rsi)
	cmpq	$0, 88(%rsi)
	je	.LBB3_259
# %bb.191:                              #   in Loop: Header=BB3_9 Depth=1
	movl	8(%rsi), %eax
	cmpl	96(%rsi), %eax
	jl	.LBB3_193
# %bb.192:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	__submore
	movq	-72(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB3_288
.LBB3_193:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rsi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%r14b, -1(%rax)
.LBB3_194:                              #   in Loop: Header=BB3_9 Depth=1
	addl	$1, 8(%rsi)
	jmp	.LBB3_288
.LBB3_195:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
.LBB3_196:                              # %.loopexit10
                                        #   in Loop: Header=BB3_9 Depth=1
	addl	%ebx, %r15d
	movl	%r15d, %ebx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_8
.LBB3_197:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_198:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rax), %rsi
	movl	$1, %edx
	movq	%r12, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	_sfread_r
	movq	-56(%rbp), %rsi         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB3_313
# %bb.199:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	addl	%eax, %ebx
	jmp	.LBB3_285
.LBB3_200:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_201:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rax), %r15
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edx
	testb	$8, 1(%rax,%rdx)
	movq	%r15, %r12
	jne	.LBB3_284
# %bb.202:                              # %.preheader11
                                        #   in Loop: Header=BB3_9 Depth=1
	addq	$-1, %r14
	leaq	1(%r15), %rdx
	jmp	.LBB3_204
	.p2align	4, 0x90
.LBB3_203:                              #   in Loop: Header=BB3_204 Depth=2
	callq	__locale_ctype_ptr
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	movzbl	(%rcx), %edi
	addq	$-1, %r14
	leaq	1(%r12), %rdx
	testb	$8, 1(%rax,%rdi)
	jne	.LBB3_284
.LBB3_204:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rdx, %r12
	addl	$-1, 8(%rsi)
	leaq	1(%rcx), %rax
	movq	%rax, (%rsi)
	movzbl	(%rcx), %eax
	movb	%al, -1(%rdx)
	testq	%r14, %r14
	je	.LBB3_284
# %bb.205:                              #   in Loop: Header=BB3_204 Depth=2
	cmpl	$0, 8(%rsi)
	jg	.LBB3_203
# %bb.206:                              #   in Loop: Header=BB3_204 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_283
# %bb.207:                              #   in Loop: Header=BB3_204 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_209
# %bb.208:                              #   in Loop: Header=BB3_204 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_209:                              #   in Loop: Header=BB3_204 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_283
# %bb.210:                              #   in Loop: Header=BB3_204 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
	jmp	.LBB3_203
.LBB3_211:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_212:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rax), %r14
.LBB3_213:                              #   in Loop: Header=BB3_9 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB3_217
	.p2align	4, 0x90
.LBB3_221:                              #   in Loop: Header=BB3_217 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpl	$0, 8(%rsi)
	jle	.LBB3_225
.LBB3_216:                              #   in Loop: Header=BB3_217 Depth=2
	testq	%r12, %r12
	je	.LBB3_253
.LBB3_217:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpl	%eax, %r15d
	je	.LBB3_313
# %bb.218:                              #   in Loop: Header=BB3_217 Depth=2
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -192(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %rcx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%r14, %rsi
	leaq	-192(%rbp), %rdx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB3_221
# %bb.219:                              #   in Loop: Header=BB3_217 Depth=2
	testq	%rax, %rax
	je	.LBB3_222
# %bb.220:                              #   in Loop: Header=BB3_217 Depth=2
	cmpq	$-1, %rax
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jne	.LBB3_224
	jmp	.LBB3_313
	.p2align	4, 0x90
.LBB3_222:                              #   in Loop: Header=BB3_217 Depth=2
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jne	.LBB3_224
# %bb.223:                              #   in Loop: Header=BB3_217 Depth=2
	movl	$0, (%r14)
.LBB3_224:                              #   in Loop: Header=BB3_217 Depth=2
	addl	%r15d, %ebx
	addq	$-1, %r12
	leaq	4(%r14), %rax
	cmpl	$0, -72(%rbp)           # 4-byte Folded Reload
	cmoveq	%rax, %r14
	xorl	%r15d, %r15d
	cmpl	$0, 8(%rsi)
	jg	.LBB3_216
.LBB3_225:                              #   in Loop: Header=BB3_217 Depth=2
	movq	88(%rsi), %rdi
	testq	%rdi, %rdi
	je	.LBB3_252
# %bb.226:                              #   in Loop: Header=BB3_217 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_214
# %bb.227:                              #   in Loop: Header=BB3_217 Depth=2
	callq	free
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB3_214:                              #   in Loop: Header=BB3_217 Depth=2
	movq	$0, 88(%rsi)
	movl	112(%rsi), %eax
	movl	%eax, 8(%rsi)
	testl	%eax, %eax
	je	.LBB3_252
# %bb.215:                              #   in Loop: Header=BB3_217 Depth=2
	movq	104(%rsi), %rax
	movq	%rax, (%rsi)
	testq	%r12, %r12
	jne	.LBB3_217
	jmp	.LBB3_253
.LBB3_228:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, (%rdx)
.LBB3_229:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB3_230:                              #   in Loop: Header=BB3_9 Depth=1
	callq	__locale_ctype_ptr
	testq	%r14, %r14
	je	.LBB3_251
# %bb.231:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movb	1(%rax,%rcx), %al
	movl	%r15d, %ebx
	andb	$8, %al
	jne	.LBB3_267
# %bb.232:                              # %.preheader17
                                        #   in Loop: Header=BB3_9 Depth=1
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB3_233:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	__locale_mb_cur_max
	cmpl	%eax, %r15d
	je	.LBB3_317
# %bb.234:                              #   in Loop: Header=BB3_233 Depth=2
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rax
	movzbl	(%rax), %ecx
	movslq	%r15d, %rdx
	movb	%cl, -192(%rbp,%rdx)
	addl	$-1, 8(%rsi)
	addl	$1, %r15d
	addq	$1, %rax
	movq	%rax, (%rsi)
	movslq	%r15d, %r12
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	leaq	-192(%rbp), %rdx
	movq	%r12, %rcx
	leaq	-136(%rbp), %r8
	callq	_mbrtowc_r
	cmpq	$-2, %rax
	je	.LBB3_241
# %bb.235:                              #   in Loop: Header=BB3_233 Depth=2
	testq	%rax, %rax
	je	.LBB3_238
# %bb.236:                              #   in Loop: Header=BB3_233 Depth=2
	cmpq	$-1, %rax
	je	.LBB3_317
# %bb.237:                              #   in Loop: Header=BB3_233 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	(%rax), %edi
	jmp	.LBB3_239
	.p2align	4, 0x90
.LBB3_238:                              #   in Loop: Header=BB3_233 Depth=2
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	xorl	%edi, %edi
.LBB3_239:                              #   in Loop: Header=BB3_233 Depth=2
	callq	iswspace
	testl	%eax, %eax
	jne	.LBB3_266
# %bb.240:                              #   in Loop: Header=BB3_233 Depth=2
	addl	%r15d, %ebx
	addq	$-1, %r14
	movq	-104(%rbp), %rcx        # 8-byte Reload
	leaq	4(%rcx), %rax
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	cmoveq	%rax, %rcx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	xorl	%r15d, %r15d
.LBB3_241:                              #   in Loop: Header=BB3_233 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpl	$0, 8(%rcx)
	jg	.LBB3_247
# %bb.242:                              #   in Loop: Header=BB3_233 Depth=2
	movq	88(%rcx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_265
# %bb.243:                              #   in Loop: Header=BB3_233 Depth=2
	cmpq	-96(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB3_245
# %bb.244:                              #   in Loop: Header=BB3_233 Depth=2
	callq	free
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB3_245:                              #   in Loop: Header=BB3_233 Depth=2
	movq	$0, 88(%rcx)
	movl	112(%rcx), %eax
	movl	%eax, 8(%rcx)
	testl	%eax, %eax
	je	.LBB3_265
# %bb.246:                              #   in Loop: Header=BB3_233 Depth=2
	movq	104(%rcx), %rax
	movq	%rax, (%rcx)
.LBB3_247:                              #   in Loop: Header=BB3_233 Depth=2
	callq	__locale_ctype_ptr
	testq	%r14, %r14
	je	.LBB3_267
# %bb.248:                              #   in Loop: Header=BB3_233 Depth=2
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movzbl	(%rcx), %ecx
	movzbl	1(%rax,%rcx), %eax
	andb	$8, %al
	je	.LBB3_233
	jmp	.LBB3_267
.LBB3_249:                              #   in Loop: Header=BB3_9 Depth=1
	xorl	%r14d, %r14d
.LBB3_250:                              #   in Loop: Header=BB3_9 Depth=1
	subl	%r12d, %eax
	addq	%r12, %r14
	movl	%eax, 8(%rsi)
	addq	%r12, %rcx
	movq	%rcx, (%rsi)
	jmp	.LBB3_255
.LBB3_251:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r15d, %ebx
	jmp	.LBB3_267
.LBB3_252:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
	testl	%r15d, %r15d
	jne	.LBB3_313
.LBB3_253:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	shrl	$4, %eax
	xorl	$1, %eax
	addl	-44(%rbp), %eax         # 4-byte Folded Reload
	movl	%eax, %r14d
	jmp	.LBB3_8
.LBB3_254:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
	testq	%r14, %r14
	je	.LBB3_313
.LBB3_255:                              #   in Loop: Header=BB3_9 Depth=1
	addl	%r14d, %ebx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_8
.LBB3_256:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
	testq	%rbx, %rbx
	je	.LBB3_313
.LBB3_257:                              #   in Loop: Header=BB3_9 Depth=1
	movl	%r12d, %eax
	subl	%r15d, %eax
	je	.LBB3_319
# %bb.258:                              #   in Loop: Header=BB3_9 Depth=1
	movb	$0, (%r12)
	movl	-44(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	movl	-140(%rbp), %ebx        # 4-byte Reload
	addl	%eax, %ebx
	jmp	.LBB3_8
.LBB3_259:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB3_286
# %bb.260:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rsi), %rax
	cmpq	%rcx, %rax
	jbe	.LBB3_287
# %bb.261:                              #   in Loop: Header=BB3_9 Depth=1
	cmpb	%r14b, -1(%rax)
	jne	.LBB3_287
# %bb.262:                              #   in Loop: Header=BB3_9 Depth=1
	addq	$-1, %rax
	movq	%rax, (%rsi)
	jmp	.LBB3_194
.LBB3_263:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
.LBB3_264:                              #   in Loop: Header=BB3_9 Depth=1
	addl	%r15d, %ebx
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_8
.LBB3_265:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rcx), %rax
	movq	%rax, (%rcx)
	movl	$0, 8(%rcx)
	orb	$32, 16(%rcx)
	testl	%r15d, %r15d
	je	.LBB3_267
	jmp	.LBB3_317
.LBB3_266:                              #   in Loop: Header=BB3_9 Depth=1
	testl	%r15d, %r15d
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jne	.LBB3_274
.LBB3_267:                              #   in Loop: Header=BB3_9 Depth=1
	testb	$16, -72(%rbp)          # 1-byte Folded Reload
	jne	.LBB3_269
# %bb.268:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$0, (%rax)
	jmp	.LBB3_285
.LBB3_269:                              #   in Loop: Header=BB3_9 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_8
.LBB3_270:                              #   in Loop: Header=BB3_274 Depth=2
	movq	(%rsi), %rax
.LBB3_271:                              #   in Loop: Header=BB3_274 Depth=2
	movl	8(%rsi), %ecx
	movl	%ecx, 112(%rsi)
	movq	%rax, 104(%rsi)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 88(%rsi)
	movl	$3, 96(%rsi)
	movb	%r14b, 118(%rsi)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsi)
	movl	$1, %eax
.LBB3_272:                              #   in Loop: Header=BB3_274 Depth=2
	movl	%eax, 8(%rsi)
.LBB3_273:                              #   in Loop: Header=BB3_274 Depth=2
	testq	%r12, %r12
	je	.LBB3_267
.LBB3_274:                              #   Parent Loop BB3_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-193(%rbp,%r12), %r14d
	andw	$-33, 16(%rsi)
	addq	$-1, %r12
	cmpq	$0, 88(%rsi)
	je	.LBB3_279
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=2
	movl	8(%rsi), %eax
	cmpl	96(%rsi), %eax
	jl	.LBB3_277
# %bb.276:                              #   in Loop: Header=BB3_274 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	callq	__submore
	movq	-56(%rbp), %rsi         # 8-byte Reload
	testl	%eax, %eax
	jne	.LBB3_273
.LBB3_277:                              #   in Loop: Header=BB3_274 Depth=2
	movq	(%rsi), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, (%rsi)
	movb	%r14b, -1(%rax)
.LBB3_278:                              #   in Loop: Header=BB3_274 Depth=2
	movl	8(%rsi), %eax
	addl	$1, %eax
	jmp	.LBB3_272
.LBB3_279:                              #   in Loop: Header=BB3_274 Depth=2
	movq	24(%rsi), %rcx
	testq	%rcx, %rcx
	je	.LBB3_270
# %bb.280:                              #   in Loop: Header=BB3_274 Depth=2
	movq	(%rsi), %rax
	cmpq	%rcx, %rax
	jbe	.LBB3_271
# %bb.281:                              #   in Loop: Header=BB3_274 Depth=2
	cmpb	%r14b, -1(%rax)
	jne	.LBB3_271
# %bb.282:                              #   in Loop: Header=BB3_274 Depth=2
	addq	$-1, %rax
	movq	%rax, (%rsi)
	jmp	.LBB3_278
.LBB3_283:                              #   in Loop: Header=BB3_9 Depth=1
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
.LBB3_284:                              #   in Loop: Header=BB3_9 Depth=1
	movb	$0, (%r12)
	subl	%r15d, %r12d
	addl	%r12d, %ebx
.LBB3_285:                              #   in Loop: Header=BB3_9 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	addl	$1, %r14d
	jmp	.LBB3_8
.LBB3_286:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rsi), %rax
.LBB3_287:                              #   in Loop: Header=BB3_9 Depth=1
	movl	8(%rsi), %ecx
	movl	%ecx, 112(%rsi)
	movq	%rax, 104(%rsi)
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, 88(%rsi)
	movl	$3, 96(%rsi)
	movb	%r14b, 118(%rsi)
	movq	-152(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsi)
	movl	$1, 8(%rsi)
.LBB3_288:                              #   in Loop: Header=BB3_9 Depth=1
	movl	-44(%rbp), %r14d        # 4-byte Reload
	leaq	-192(%rbp), %rax
	cmpq	%rax, %r12
	je	.LBB3_316
.LBB3_289:                              #   in Loop: Header=BB3_9 Depth=1
	testb	$16, %dl
	jne	.LBB3_7
# %bb.290:                              #   in Loop: Header=BB3_9 Depth=1
	movb	$0, (%r12)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	leaq	-192(%rbp), %rsi
	xorl	%edx, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	callq	*-120(%rbp)             # 8-byte Folded Reload
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testb	$32, %dl
	jne	.LBB3_296
# %bb.291:                              #   in Loop: Header=BB3_9 Depth=1
	testb	$8, %dl
	jne	.LBB3_298
# %bb.292:                              #   in Loop: Header=BB3_9 Depth=1
	testb	$4, %dl
	jne	.LBB3_300
# %bb.293:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movslq	(%rcx), %rcx
	testb	$1, %dl
	jne	.LBB3_304
# %bb.294:                              #   in Loop: Header=BB3_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_308
# %bb.295:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	16(%rdi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_309
.LBB3_296:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_3
# %bb.297:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_4
.LBB3_298:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movslq	(%rsi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_302
# %bb.299:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rsi), %rcx
	addl	$8, %edx
	movl	%edx, (%rsi)
	jmp	.LBB3_303
.LBB3_3:                                #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rsi)
.LBB3_4:                                #   in Loop: Header=BB3_9 Depth=1
	movq	(%rcx), %rcx
.LBB3_5:                                #   in Loop: Header=BB3_9 Depth=1
	movq	%rax, (%rcx)
	jmp	.LBB3_6
.LBB3_300:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movslq	(%rdi), %rdx
	cmpq	$40, %rdx
	ja	.LBB3_306
# %bb.301:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rdx, %rcx
	addq	16(%rdi), %rcx
	addl	$8, %edx
	movl	%edx, (%rdi)
	jmp	.LBB3_307
.LBB3_304:                              #   in Loop: Header=BB3_9 Depth=1
	cmpl	$40, %ecx
	ja	.LBB3_310
# %bb.305:                              #   in Loop: Header=BB3_9 Depth=1
	movq	%rcx, %rdx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	16(%rdi), %rdx
	addl	$8, %ecx
	movl	%ecx, (%rdi)
	jmp	.LBB3_311
.LBB3_306:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, (%rdi)
.LBB3_307:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rcx), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB3_6
.LBB3_308:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_309:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rdx), %rcx
	movl	%eax, (%rcx)
	jmp	.LBB3_6
.LBB3_310:                              #   in Loop: Header=BB3_9 Depth=1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	(%rdi), %rdx
	leaq	8(%rdx), %rcx
	movq	%rcx, (%rdi)
.LBB3_311:                              #   in Loop: Header=BB3_9 Depth=1
	movq	(%rdx), %rcx
	jmp	.LBB3_5
.LBB3_312:
	movq	24(%rsi), %rax
	movq	%rax, (%rsi)
	movl	$0, 8(%rsi)
	orb	$32, 16(%rsi)
.LBB3_313:
	movl	-44(%rbp), %r14d        # 4-byte Reload
	testl	%r14d, %r14d
	je	.LBB3_315
# %bb.314:
	movb	16(%rsi), %al
	andb	$64, %al
	xorl	%ecx, %ecx
	cmpb	$1, %al
	sbbl	%ecx, %ecx
	notl	%ecx
	orl	%ecx, %r14d
	jmp	.LBB3_316
.LBB3_315:                              # %.loopexit3
	movl	$-1, %r14d
.LBB3_316:
	movl	%r14d, %eax
	addq	$408, %rsp              # imm = 0x198
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_317:
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB3_313
.LBB3_319:
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB3_316
.Lfunc_end3:
	.size	__ssvfiscanf_r, .Lfunc_end3-__ssvfiscanf_r
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI3_0:
	.quad	.LBB3_315
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_48
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_18
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_14
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_72
	.quad	.LBB3_74
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_19
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_76
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_78
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_69
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_79
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_73
	.quad	.LBB3_75
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_20
	.quad	.LBB3_71
	.quad	.LBB3_17
	.quad	.LBB3_70
	.quad	.LBB3_22
	.quad	.LBB3_70
	.quad	.LBB3_27
	.quad	.LBB3_77
	.quad	.LBB3_80
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_82
	.quad	.LBB3_17
	.quad	.LBB3_83
	.quad	.LBB3_70
	.quad	.LBB3_70
	.quad	.LBB3_69
	.quad	.LBB3_70
	.quad	.LBB3_17
.LJTI3_1:
	.quad	.LBB3_94
	.quad	.LBB3_106
	.quad	.LBB3_109
	.quad	.LBB3_113
.LJTI3_2:
	.quad	.LBB3_121
	.quad	.LBB3_186
	.quad	.LBB3_121
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_134
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_120
	.quad	.LBB3_123
	.quad	.LBB3_123
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_132
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_119
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_186
	.quad	.LBB3_132
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
