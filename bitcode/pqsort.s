	.text
	.file	"pqsort.c"
	.globl	pqsort                  # -- Begin function pqsort
	.p2align	4, 0x90
	.type	pqsort,@function
pqsort:                                 # @pqsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	imulq	%rdx, %r8
	addq	%rdi, %r8
	addq	$1, %r9
	imulq	%rdx, %r9
	addq	%rdi, %r9
	addq	$-1, %r9
	callq	_pqsort
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pqsort, .Lfunc_end0-pqsort
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _pqsort
	.type	_pqsort,@function
_pqsort:                                # @_pqsort
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$232, %rsp
	movq	%r9, -160(%rbp)         # 8-byte Spill
	movq	%r8, %r14
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	%rdx, %r9
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rdx, %r11
	negq	%r11
	xorl	%eax, %eax
	cmpq	$8, %rdx
	setne	%al
	movl	%eax, -256(%rbp)        # 4-byte Spill
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	%rdx, %r13
	andq	$-8, %r13
	movq	%rax, %rdx
	andq	$-4, %rdx
	movq	%r9, %rcx
	andq	$-32, %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	leaq	-32(%r9), %r8
	shrq	$5, %r8
	leaq	-4(%rdx), %rcx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	shrq	$2, %rcx
	addq	$1, %rcx
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	subq	%rdx, %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movl	%ecx, %eax
	andl	$1, %eax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movl	%r9d, %eax
	andl	$31, %eax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	movq	%r8, -224(%rbp)         # 8-byte Spill
	leaq	1(%r8), %rax
	movl	%eax, %edx
	andl	$1, %edx
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	andq	$-2, %rcx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%r9, -88(%rbp)          # 8-byte Spill
	movq	%r11, -104(%rbp)        # 8-byte Spill
	movq	%r13, -112(%rbp)        # 8-byte Spill
	movq	%r14, -248(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_54 Depth 2
                                        #     Child Loop BB1_35 Depth 2
                                        #     Child Loop BB1_39 Depth 2
                                        #     Child Loop BB1_61 Depth 2
                                        #     Child Loop BB1_47 Depth 2
                                        #     Child Loop BB1_51 Depth 2
                                        #     Child Loop BB1_67 Depth 2
                                        #       Child Loop BB1_72 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_88 Depth 4
                                        #         Child Loop BB1_92 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_104 Depth 4
                                        #       Child Loop BB1_121 Depth 3
                                        #         Child Loop BB1_130 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_156 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_153 Depth 4
                                        #       Child Loop BB1_172 Depth 3
                                        #       Child Loop BB1_179 Depth 3
                                        #       Child Loop BB1_183 Depth 3
                                        #       Child Loop BB1_192 Depth 3
                                        #       Child Loop BB1_199 Depth 3
                                        #       Child Loop BB1_203 Depth 3
                                        #     Child Loop BB1_229 Depth 2
                                        #     Child Loop BB1_217 Depth 2
                                        #     Child Loop BB1_221 Depth 2
                                        #     Child Loop BB1_236 Depth 2
                                        #     Child Loop BB1_243 Depth 2
                                        #     Child Loop BB1_247 Depth 2
                                        #     Child Loop BB1_281 Depth 2
                                        #     Child Loop BB1_257 Depth 2
                                        #     Child Loop BB1_261 Depth 2
                                        #     Child Loop BB1_267 Depth 2
                                        #     Child Loop BB1_274 Depth 2
                                        #     Child Loop BB1_278 Depth 2
	movq	%r15, %rax
	orq	%r9, %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	testb	$7, %al
	movl	$2, %eax
	cmovel	-256(%rbp), %eax        # 4-byte Folded Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
	cmpq	$6, %rbx
	movq	%r15, -144(%rbp)        # 8-byte Spill
	jbe	.LBB1_305
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %r12
	shrq	%r12
	imulq	%r9, %r12
	addq	%r15, %r12
	cmpq	$7, %rbx
	movq	%rbx, -232(%rbp)        # 8-byte Spill
	je	.LBB1_27
# %bb.3:                                #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%rbx), %r14
	imulq	%r9, %r14
	addq	%r15, %r14
	cmpq	$41, %rbx
	jb	.LBB1_21
# %bb.4:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %r15
	shrq	$3, %r15
	imulq	%r9, %r15
	leaq	(%rdi,%r15), %r13
	leaq	(%rdi,%r15,2), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%r13, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rsi
	callq	*%rbx
	cmpl	$0, -64(%rbp)           # 4-byte Folded Reload
	js	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	jg	.LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r13
	jmp	.LBB1_9
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	js	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-144(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r13
.LBB1_9:                                #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, -56(%rbp)         # 8-byte Spill
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	negq	%rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r12, %rbx
	subq	%r15, %rbx
	leaq	(%r12,%r15), %r13
	leaq	(%r15,%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	-80(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movq	%r12, %rdi
	movq	%r13, -264(%rbp)        # 8-byte Spill
	movq	%r13, %rsi
	callq	*%r15
	cmpl	$0, -96(%rbp)           # 4-byte Folded Reload
	js	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	jg	.LBB1_15
# %bb.12:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r12
	jmp	.LBB1_15
.LBB1_13:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	js	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %rdi
	movq	-264(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r15, %rbx
	movq	%rbx, %r12
.LBB1_15:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r13
	subq	-48(%rbp), %r13         # 8-byte Folded Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	addq	%r14, %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	-80(%rbp), %r15         # 8-byte Reload
	callq	*%r15
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*%r15
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	js	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jg	.LBB1_20
# %bb.17:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r13, %r14
	movq	%r14, %rbx
	jmp	.LBB1_20
.LBB1_18:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	js	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r13
	movq	%r13, %rbx
.LBB1_20:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r14
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB1_21:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	-80(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, %r15d
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*%rbx
	testl	%r15d, %r15d
	js	.LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-144(%rbp), %r15        # 8-byte Reload
	jg	.LBB1_26
# %bb.23:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r14
	movq	%r14, %r12
	jmp	.LBB1_26
.LBB1_24:                               #   in Loop: Header=BB1_1 Depth=1
	testl	%eax, %eax
	movq	-144(%rbp), %r15        # 8-byte Reload
	js	.LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
.LBB1_26:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r9          # 8-byte Reload
.LBB1_27:                               #   in Loop: Header=BB1_1 Depth=1
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB1_40
# %bb.28:                               #   in Loop: Header=BB1_1 Depth=1
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_41
# %bb.29:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$31, %r9
	jbe	.LBB1_32
# %bb.30:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r12,%r9), %rax
	cmpq	%rax, %r15
	jae	.LBB1_52
# %bb.31:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r9), %rax
	cmpq	%rax, %r12
	jae	.LBB1_52
.LBB1_32:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r11
	movq	%r15, %rax
.LBB1_33:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r9), %r8
	movq	%r9, %rdi
	andq	$3, %rdi
	je	.LBB1_37
# %bb.34:                               # %.preheader81
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_35:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rsi), %edx
	movzbl	(%r12,%rsi), %ecx
	movb	%cl, (%rax,%rsi)
	movb	%dl, (%r12,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %rdi
	jne	.LBB1_35
# %bb.36:                               # %.loopexit82
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rsi, %r9
	addq	%rsi, %rax
	addq	%rsi, %r12
.LBB1_37:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_65
# %bb.38:                               # %.preheader79
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_39:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rax,%rdx), %ecx
	movzbl	(%r12,%rdx), %ebx
	movb	%bl, (%rax,%rdx)
	movb	%cl, (%r12,%rdx)
	movzbl	1(%rax,%rdx), %ecx
	movzbl	1(%r12,%rdx), %ebx
	movb	%bl, 1(%rax,%rdx)
	movb	%cl, 1(%r12,%rdx)
	movzbl	2(%rax,%rdx), %ecx
	movzbl	2(%r12,%rdx), %ebx
	movb	%bl, 2(%rax,%rdx)
	movb	%cl, 2(%r12,%rdx)
	movzbl	3(%rax,%rdx), %ecx
	movzbl	3(%r12,%rdx), %ebx
	movb	%bl, 3(%rax,%rdx)
	movb	%cl, 3(%r12,%rdx)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_39
	jmp	.LBB1_65
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_1 Depth=1
	movq	(%r15), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r15)
	movq	%rax, (%r12)
	movq	-232(%rbp), %rax        # 8-byte Reload
	jmp	.LBB1_66
	.p2align	4, 0x90
.LBB1_41:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$32, %r9
	jb	.LBB1_44
# %bb.42:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r12,%r13), %rax
	cmpq	%rax, %r15
	jae	.LBB1_59
# %bb.43:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r13), %rax
	cmpq	%rax, %r12
	jae	.LBB1_59
.LBB1_44:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r11
	movq	%r15, %rax
	movq	-72(%rbp), %r9          # 8-byte Reload
.LBB1_45:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_49
# %bb.46:                               # %.preheader75
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_47:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rsi,8), %rcx
	movq	(%r12,%rsi,8), %rdi
	movq	%rdi, (%rax,%rsi,8)
	movq	%rcx, (%r12,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %r10
	jne	.LBB1_47
# %bb.48:                               # %.loopexit76
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdx, %r12
	subq	%rdx, %rax
	subq	%rsi, %r9
.LBB1_49:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_65
# %bb.50:                               # %.preheader73
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_51:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax,%rdx,8), %rcx
	movq	(%r12,%rdx,8), %rsi
	movq	%rsi, (%rax,%rdx,8)
	movq	%rcx, (%r12,%rdx,8)
	movq	8(%rax,%rdx,8), %rcx
	movq	8(%r12,%rdx,8), %rsi
	movq	%rsi, 8(%rax,%rdx,8)
	movq	%rcx, 8(%r12,%rdx,8)
	movq	16(%rax,%rdx,8), %rcx
	movq	16(%r12,%rdx,8), %rsi
	movq	%rsi, 16(%rax,%rdx,8)
	movq	%rcx, 16(%r12,%rdx,8)
	movq	24(%rax,%rdx,8), %rcx
	movq	24(%r12,%rdx,8), %rsi
	movq	%rsi, 24(%rax,%rdx,8)
	movq	%rcx, 24(%r12,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_51
	jmp	.LBB1_65
.LBB1_52:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_298
# %bb.53:                               # %.preheader83
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_54:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rax), %xmm0
	movups	16(%r15,%rax), %xmm1
	movups	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movups	%xmm2, (%r15,%rax)
	movups	%xmm3, 16(%r15,%rax)
	movups	%xmm0, (%r12,%rax)
	movups	%xmm1, 16(%r12,%rax)
	movups	32(%r15,%rax), %xmm0
	movups	48(%r15,%rax), %xmm1
	movups	32(%r12,%rax), %xmm2
	movups	48(%r12,%rax), %xmm3
	movups	%xmm2, 32(%r15,%rax)
	movups	%xmm3, 48(%r15,%rax)
	movups	%xmm0, 32(%r12,%rax)
	movups	%xmm1, 48(%r12,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_54
# %bb.55:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_57
.LBB1_56:                               #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rax), %xmm0
	movups	16(%r15,%rax), %xmm1
	movups	(%r12,%rax), %xmm2
	movups	16(%r12,%rax), %xmm3
	movups	%xmm2, (%r15,%rax)
	movups	%xmm3, 16(%r15,%rax)
	movups	%xmm0, (%r12,%rax)
	movups	%xmm1, 16(%r12,%rax)
.LBB1_57:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r11
	cmpq	%r9, -136(%rbp)         # 8-byte Folded Reload
	je	.LBB1_65
# %bb.58:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-136(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx), %rax
	addq	%rcx, %r12
	movq	-192(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_33
.LBB1_59:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_302
# %bb.60:                               # %.preheader77
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r11
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_61:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rax,8), %xmm0
	movups	16(%r15,%rax,8), %xmm1
	movups	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r15,%rax,8)
	movups	%xmm3, 16(%r15,%rax,8)
	movups	%xmm0, (%r12,%rax,8)
	movups	%xmm1, 16(%r12,%rax,8)
	movups	32(%r15,%rax,8), %xmm0
	movups	48(%r15,%rax,8), %xmm1
	movups	32(%r12,%rax,8), %xmm2
	movups	48(%r12,%rax,8), %xmm3
	movups	%xmm2, 32(%r15,%rax,8)
	movups	%xmm3, 48(%r15,%rax,8)
	movups	%xmm0, 32(%r12,%rax,8)
	movups	%xmm1, 48(%r12,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_61
# %bb.62:                               #   in Loop: Header=BB1_1 Depth=1
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_64
.LBB1_63:                               #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rax,8), %xmm0
	movups	16(%r15,%rax,8), %xmm1
	movups	(%r12,%rax,8), %xmm2
	movups	16(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r15,%rax,8)
	movups	%xmm3, 16(%r15,%rax,8)
	movups	%xmm0, (%r12,%rax,8)
	movups	%xmm1, 16(%r12,%rax,8)
.LBB1_64:                               #   in Loop: Header=BB1_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_301
	.p2align	4, 0x90
.LBB1_65:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-232(%rbp), %rax        # 8-byte Reload
	movq	%r11, %r9
.LBB1_66:                               #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r9), %rdx
	leaq	-1(%rax), %r10
	imulq	%r9, %r10
	addq	%r15, %r10
	movq	%r10, %rax
	movq	%rdx, -96(%rbp)         # 8-byte Spill
.LBB1_67:                               #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_72 Depth 3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_88 Depth 4
                                        #         Child Loop BB1_92 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_104 Depth 4
                                        #       Child Loop BB1_121 Depth 3
                                        #         Child Loop BB1_130 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_156 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_153 Depth 4
                                        #       Child Loop BB1_172 Depth 3
                                        #       Child Loop BB1_179 Depth 3
                                        #       Child Loop BB1_183 Depth 3
                                        #       Child Loop BB1_192 Depth 3
                                        #       Child Loop BB1_199 Depth 3
                                        #       Child Loop BB1_203 Depth 3
	movq	%r10, -64(%rbp)         # 8-byte Spill
	cmpq	%rax, %rdx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jbe	.LBB1_69
# %bb.68:                               #   in Loop: Header=BB1_67 Depth=2
	movq	%rdx, %rdi
	jmp	.LBB1_117
	.p2align	4, 0x90
.LBB1_69:                               # %.preheader49
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%r15d, %r15d
	movq	%rdx, %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB1_72
	.p2align	4, 0x90
.LBB1_70:                               #   in Loop: Header=BB1_72 Depth=3
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r13, %rdi
.LBB1_71:                               #   in Loop: Header=BB1_72 Depth=3
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	addq	%r9, %rdi
	addq	$1, %r15
	cmpq	%rax, %rdi
	ja	.LBB1_117
.LBB1_72:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_81 Depth 4
                                        #         Child Loop BB1_88 Depth 4
                                        #         Child Loop BB1_92 Depth 4
                                        #         Child Loop BB1_107 Depth 4
                                        #         Child Loop BB1_100 Depth 4
                                        #         Child Loop BB1_104 Depth 4
	movq	%r15, %rbx
	imulq	%r9, %rbx
	leaq	(%rdx,%rbx), %r14
	leaq	(%rbx,%r9), %r12
	addq	%rdx, %r12
	addq	%r13, %rbx
	addq	%rdx, %rbx
	movq	%rdi, %r13
	movq	-144(%rbp), %rsi        # 8-byte Reload
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	jg	.LBB1_116
# %bb.73:                               #   in Loop: Header=BB1_72 Depth=3
	jne	.LBB1_70
# %bb.74:                               #   in Loop: Header=BB1_72 Depth=3
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB1_93
# %bb.75:                               #   in Loop: Header=BB1_72 Depth=3
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	je	.LBB1_94
# %bb.76:                               #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	cmpq	$31, %r9
	jbe	.LBB1_86
# %bb.77:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	%r12, %rsi
	jae	.LBB1_79
# %bb.78:                               #   in Loop: Header=BB1_72 Depth=3
	leaq	(%rsi,%r9), %rax
	movq	%r9, %r8
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	cmpq	%rax, %r14
	jb	.LBB1_86
.LBB1_79:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_113
# %bb.80:                               # %.preheader33
                                        #   in Loop: Header=BB1_72 Depth=3
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_81:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rsi,%rax), %xmm0
	movups	16(%rsi,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%rsi,%rax)
	movups	%xmm3, 16(%rsi,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
	movups	32(%rsi,%rax), %xmm0
	movups	48(%rsi,%rax), %xmm1
	movups	32(%rdi,%rax), %xmm2
	movups	48(%rdi,%rax), %xmm3
	movups	%xmm2, 32(%rsi,%rax)
	movups	%xmm3, 48(%rsi,%rax)
	movups	%xmm0, 32(%rdi,%rax)
	movups	%xmm1, 48(%rdi,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_81
# %bb.82:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_84
.LBB1_83:                               #   in Loop: Header=BB1_72 Depth=3
	movups	(%rsi,%rax), %xmm0
	movups	16(%rsi,%rax), %xmm1
	movups	(%rdi,%rax), %xmm2
	movups	16(%rdi,%rax), %xmm3
	movups	%xmm2, (%rsi,%rax)
	movups	%xmm3, 16(%rsi,%rax)
	movups	%xmm0, (%rdi,%rax)
	movups	%xmm1, 16(%rdi,%rax)
.LBB1_84:                               #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r11
	cmpq	%r9, -136(%rbp)         # 8-byte Folded Reload
	je	.LBB1_111
# %bb.85:                               #   in Loop: Header=BB1_72 Depth=3
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%rdi,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%r11, %r9
.LBB1_86:                               #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r11
	leaq	-1(%r8), %r9
	movq	%r8, %r10
	andq	$3, %r10
	je	.LBB1_90
# %bb.87:                               # %.preheader31
                                        #   in Loop: Header=BB1_72 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_88:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %ebx
	movzbl	(%rdx,%rsi), %eax
	movb	%al, (%rcx,%rsi)
	movb	%bl, (%rdx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r10
	jne	.LBB1_88
# %bb.89:                               # %.loopexit32
                                        #   in Loop: Header=BB1_72 Depth=3
	subq	%rsi, %r8
	addq	%rsi, %rcx
	addq	%rsi, %rdx
.LBB1_90:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	$3, %r9
	jb	.LBB1_111
# %bb.91:                               # %.preheader29
                                        #   in Loop: Header=BB1_72 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_92:                               #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_92
	jmp	.LBB1_111
.LBB1_93:                               #   in Loop: Header=BB1_72 Depth=3
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	%r13, %rdi
	movq	(%r13), %rcx
	movq	%rcx, (%rdx)
	movq	%rax, (%r13)
	movq	-88(%rbp), %r9          # 8-byte Reload
	jmp	.LBB1_112
.LBB1_94:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	$32, %r9
	jb	.LBB1_97
# %bb.95:                               #   in Loop: Header=BB1_72 Depth=3
	cmpq	%rbx, %rsi
	jae	.LBB1_105
# %bb.96:                               #   in Loop: Header=BB1_72 Depth=3
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	%rsi, %rax
	cmpq	%rax, %r14
	jae	.LBB1_105
.LBB1_97:                               #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r11
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	-72(%rbp), %r9          # 8-byte Reload
.LBB1_98:                               #   in Loop: Header=BB1_72 Depth=3
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_102
# %bb.99:                               # %.preheader25
                                        #   in Loop: Header=BB1_72 Depth=3
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_100:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_100
# %bb.101:                              # %.loopexit26
                                        #   in Loop: Header=BB1_72 Depth=3
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_102:                              #   in Loop: Header=BB1_72 Depth=3
	movq	%r13, %rdi
	cmpq	$3, %r8
	jb	.LBB1_111
# %bb.103:                              # %.preheader23
                                        #   in Loop: Header=BB1_72 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_104:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rbx
	movq	%rbx, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rbx
	movq	%rbx, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rbx
	movq	%rbx, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rbx
	movq	%rbx, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_104
	jmp	.LBB1_111
.LBB1_105:                              #   in Loop: Header=BB1_72 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_115
# %bb.106:                              # %.preheader27
                                        #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r11
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_107:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_72 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%rsi,%rax,8), %xmm0
	movups	16(%rsi,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%rsi,%rax,8)
	movups	%xmm3, 16(%rsi,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
	movups	32(%rsi,%rax,8), %xmm0
	movups	48(%rsi,%rax,8), %xmm1
	movups	32(%rdi,%rax,8), %xmm2
	movups	48(%rdi,%rax,8), %xmm3
	movups	%xmm2, 32(%rsi,%rax,8)
	movups	%xmm3, 48(%rsi,%rax,8)
	movups	%xmm0, 32(%rdi,%rax,8)
	movups	%xmm1, 48(%rdi,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_107
# %bb.108:                              #   in Loop: Header=BB1_72 Depth=3
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_110
.LBB1_109:                              #   in Loop: Header=BB1_72 Depth=3
	movups	(%rsi,%rax,8), %xmm0
	movups	16(%rsi,%rax,8), %xmm1
	movups	(%rdi,%rax,8), %xmm2
	movups	16(%rdi,%rax,8), %xmm3
	movups	%xmm2, (%rsi,%rax,8)
	movups	%xmm3, 16(%rsi,%rax,8)
	movups	%xmm0, (%rdi,%rax,8)
	movups	%xmm1, 16(%rdi,%rax,8)
.LBB1_110:                              #   in Loop: Header=BB1_72 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_114
	.p2align	4, 0x90
.LBB1_111:                              #   in Loop: Header=BB1_72 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	%r11, %r9
	movq	-96(%rbp), %rdx         # 8-byte Reload
.LBB1_112:                              #   in Loop: Header=BB1_72 Depth=3
	addq	%r9, %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jmp	.LBB1_71
.LBB1_113:                              #   in Loop: Header=BB1_72 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_83
	jmp	.LBB1_84
.LBB1_114:                              #   in Loop: Header=BB1_72 Depth=3
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%rdi,%rcx,8), %rax
	movq	-96(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_98
.LBB1_115:                              #   in Loop: Header=BB1_72 Depth=3
	movq	%r9, %r11
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_109
	jmp	.LBB1_110
	.p2align	4, 0x90
.LBB1_116:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	%r13, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB1_117:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	%rax, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	ja	.LBB1_208
# %bb.118:                              # %.preheader47
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%r12d, %r12d
	movq	%rax, %r14
	movq	-104(%rbp), %r11        # 8-byte Reload
	jmp	.LBB1_121
	.p2align	4, 0x90
.LBB1_119:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
.LBB1_120:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	%r11, %r14
	addq	$1, %r12
	cmpq	%r14, %rdi
	ja	.LBB1_209
.LBB1_121:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB1_130 Depth 4
                                        #         Child Loop BB1_137 Depth 4
                                        #         Child Loop BB1_141 Depth 4
                                        #         Child Loop BB1_156 Depth 4
                                        #         Child Loop BB1_149 Depth 4
                                        #         Child Loop BB1_153 Depth 4
	movq	%r12, %rbx
	imulq	%r11, %rbx
	leaq	(%rax,%rbx), %r13
	leaq	(%rbx,%r9), %r15
	addq	%rax, %r15
	addq	-112(%rbp), %rbx        # 8-byte Folded Reload
	addq	%rax, %rbx
	movq	%r14, %rdi
	movq	-144(%rbp), %rsi        # 8-byte Reload
	callq	*-80(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	js	.LBB1_165
# %bb.122:                              #   in Loop: Header=BB1_121 Depth=3
	jne	.LBB1_119
# %bb.123:                              #   in Loop: Header=BB1_121 Depth=3
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB1_142
# %bb.124:                              #   in Loop: Header=BB1_121 Depth=3
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	je	.LBB1_143
# %bb.125:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r8
	movq	%r14, %rcx
	movq	%r10, %rdx
	cmpq	$31, %rsi
	jbe	.LBB1_135
# %bb.126:                              #   in Loop: Header=BB1_121 Depth=3
	leaq	(%r10,%rsi), %rax
	cmpq	%rax, %r13
	jae	.LBB1_128
# %bb.127:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r8
	movq	%r14, %rcx
	movq	%r10, %rdx
	cmpq	%r15, %r10
	jb	.LBB1_135
.LBB1_128:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_162
# %bb.129:                              # %.preheader21
                                        #   in Loop: Header=BB1_121 Depth=3
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_130:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r10,%rax), %xmm2
	movups	16(%r10,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r10,%rax)
	movups	%xmm1, 16(%r10,%rax)
	movups	32(%r14,%rax), %xmm0
	movups	48(%r14,%rax), %xmm1
	movups	32(%r10,%rax), %xmm2
	movups	48(%r10,%rax), %xmm3
	movups	%xmm2, 32(%r14,%rax)
	movups	%xmm3, 48(%r14,%rax)
	movups	%xmm0, 32(%r10,%rax)
	movups	%xmm1, 48(%r10,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_130
# %bb.131:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_133
.LBB1_132:                              #   in Loop: Header=BB1_121 Depth=3
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r10,%rax), %xmm2
	movups	16(%r10,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r10,%rax)
	movups	%xmm1, 16(%r10,%rax)
.LBB1_133:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r15
	cmpq	%rsi, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB1_160
# %bb.134:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-136(%rbp), %rax        # 8-byte Reload
	leaq	(%r14,%rax), %rcx
	leaq	(%r10,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%r15, %rsi
.LBB1_135:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r15
	leaq	-1(%r8), %r9
	movq	%r8, %rsi
	andq	$3, %rsi
	je	.LBB1_139
# %bb.136:                              # %.preheader19
                                        #   in Loop: Header=BB1_121 Depth=3
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_137:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%rdx,%rdi), %eax
	movb	%al, (%rcx,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_137
# %bb.138:                              # %.loopexit20
                                        #   in Loop: Header=BB1_121 Depth=3
	subq	%rdi, %r8
	addq	%rdi, %rcx
	addq	%rdi, %rdx
.LBB1_139:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$3, %r9
	jb	.LBB1_160
# %bb.140:                              # %.preheader17
                                        #   in Loop: Header=BB1_121 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_141:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_141
	jmp	.LBB1_160
.LBB1_142:                              #   in Loop: Header=BB1_121 Depth=3
	movq	(%r14), %rax
	movq	-64(%rbp), %r10         # 8-byte Reload
	movq	(%r10), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r10)
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	jmp	.LBB1_161
.LBB1_143:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$32, %rsi
	jb	.LBB1_146
# %bb.144:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-112(%rbp), %rax        # 8-byte Reload
	addq	%r10, %rax
	cmpq	%rax, %r13
	jae	.LBB1_154
# %bb.145:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	%rbx, %r10
	jae	.LBB1_154
.LBB1_146:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r15
	movq	%r10, %rax
	movq	%r14, %rcx
	movq	-72(%rbp), %r9          # 8-byte Reload
.LBB1_147:                              #   in Loop: Header=BB1_121 Depth=3
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_151
# %bb.148:                              # %.preheader13
                                        #   in Loop: Header=BB1_121 Depth=3
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_149:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_149
# %bb.150:                              # %.loopexit14
                                        #   in Loop: Header=BB1_121 Depth=3
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_151:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-64(%rbp), %r10         # 8-byte Reload
	cmpq	$3, %r8
	jb	.LBB1_160
# %bb.152:                              # %.preheader11
                                        #   in Loop: Header=BB1_121 Depth=3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_153:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rdi
	movq	%rdi, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rdi
	movq	%rdi, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rdi
	movq	%rdi, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_153
	jmp	.LBB1_160
.LBB1_154:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_164
# %bb.155:                              # %.preheader15
                                        #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r15
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_156:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        #       Parent Loop BB1_121 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r10,%rax,8), %xmm2
	movups	16(%r10,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r10,%rax,8)
	movups	%xmm1, 16(%r10,%rax,8)
	movups	32(%r14,%rax,8), %xmm0
	movups	48(%r14,%rax,8), %xmm1
	movups	32(%r10,%rax,8), %xmm2
	movups	48(%r10,%rax,8), %xmm3
	movups	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movups	%xmm0, 32(%r10,%rax,8)
	movups	%xmm1, 48(%r10,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_156
# %bb.157:                              #   in Loop: Header=BB1_121 Depth=3
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_159
.LBB1_158:                              #   in Loop: Header=BB1_121 Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r10,%rax,8), %xmm2
	movups	16(%r10,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r10,%rax,8)
	movups	%xmm1, 16(%r10,%rax,8)
.LBB1_159:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_163
	.p2align	4, 0x90
.LBB1_160:                              #   in Loop: Header=BB1_121 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r15, %r9
.LBB1_161:                              #   in Loop: Header=BB1_121 Depth=3
	addq	%r11, %r10
	movq	%r10, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_120
.LBB1_162:                              #   in Loop: Header=BB1_121 Depth=3
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_132
	jmp	.LBB1_133
.LBB1_163:                              #   in Loop: Header=BB1_121 Depth=3
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%r10,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_147
.LBB1_164:                              #   in Loop: Header=BB1_121 Depth=3
	movq	%rsi, %r15
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_158
	jmp	.LBB1_159
	.p2align	4, 0x90
.LBB1_165:                              #   in Loop: Header=BB1_67 Depth=2
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB1_184
# %bb.166:                              #   in Loop: Header=BB1_67 Depth=2
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	je	.LBB1_185
# %bb.167:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r8
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rcx
	movq	%r14, %rdx
	cmpq	$31, %rdi
	movq	-112(%rbp), %r13        # 8-byte Reload
	jbe	.LBB1_177
# %bb.168:                              #   in Loop: Header=BB1_67 Depth=2
	leaq	(%r14,%rdi), %rax
	cmpq	%rax, %rsi
	jae	.LBB1_170
# %bb.169:                              #   in Loop: Header=BB1_67 Depth=2
	leaq	(%rsi,%rdi), %rax
	movq	%rdi, %r8
	movq	%rsi, %rcx
	movq	%r14, %rdx
	cmpq	%rax, %r14
	jb	.LBB1_177
.LBB1_170:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_206
# %bb.171:                              # %.preheader45
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%eax, %eax
	movq	-208(%rbp), %rcx        # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_172:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rdx,%rax), %xmm0
	movups	16(%rdx,%rax), %xmm1
	movups	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movups	%xmm2, (%rdx,%rax)
	movups	%xmm3, 16(%rdx,%rax)
	movups	%xmm0, (%r14,%rax)
	movups	%xmm1, 16(%r14,%rax)
	movups	32(%rdx,%rax), %xmm0
	movups	48(%rdx,%rax), %xmm1
	movups	32(%r14,%rax), %xmm2
	movups	48(%r14,%rax), %xmm3
	movups	%xmm2, 32(%rdx,%rax)
	movups	%xmm3, 48(%rdx,%rax)
	movups	%xmm0, 32(%r14,%rax)
	movups	%xmm1, 48(%r14,%rax)
	addq	$64, %rax
	addq	$-2, %rcx
	jne	.LBB1_172
# %bb.173:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	je	.LBB1_175
.LBB1_174:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movups	(%rcx,%rax), %xmm0
	movups	16(%rcx,%rax), %xmm1
	movups	(%r14,%rax), %xmm2
	movups	16(%r14,%rax), %xmm3
	movups	%xmm2, (%rcx,%rax)
	movups	%xmm3, 16(%rcx,%rax)
	movups	%xmm0, (%r14,%rax)
	movups	%xmm1, 16(%r14,%rax)
.LBB1_175:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	cmpq	%rdi, -136(%rbp)        # 8-byte Folded Reload
	je	.LBB1_204
# %bb.176:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	leaq	(%r14,%rax), %rdx
	movq	-192(%rbp), %r8         # 8-byte Reload
	movq	%r11, %rdi
.LBB1_177:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	leaq	-1(%r8), %r9
	movq	%r8, %rsi
	andq	$3, %rsi
	je	.LBB1_181
# %bb.178:                              # %.preheader43
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_179:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rcx,%rdi), %ebx
	movzbl	(%rdx,%rdi), %eax
	movb	%al, (%rcx,%rdi)
	movb	%bl, (%rdx,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_179
# %bb.180:                              # %.loopexit44
                                        #   in Loop: Header=BB1_67 Depth=2
	subq	%rdi, %r8
	addq	%rdi, %rcx
	addq	%rdi, %rdx
.LBB1_181:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$3, %r9
	jb	.LBB1_204
# %bb.182:                              # %.preheader41
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_183:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%rcx,%rsi), %eax
	movzbl	(%rdx,%rsi), %ebx
	movb	%bl, (%rcx,%rsi)
	movb	%al, (%rdx,%rsi)
	movzbl	1(%rcx,%rsi), %eax
	movzbl	1(%rdx,%rsi), %ebx
	movb	%bl, 1(%rcx,%rsi)
	movb	%al, 1(%rdx,%rsi)
	movzbl	2(%rcx,%rsi), %eax
	movzbl	2(%rdx,%rsi), %ebx
	movb	%bl, 2(%rcx,%rsi)
	movb	%al, 2(%rdx,%rsi)
	movzbl	3(%rcx,%rsi), %eax
	movzbl	3(%rdx,%rsi), %ebx
	movb	%bl, 3(%rcx,%rsi)
	movb	%al, 3(%rdx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r8
	jne	.LBB1_183
	jmp	.LBB1_204
.LBB1_184:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%rdx)
	movq	%rax, (%r14)
	movq	-88(%rbp), %r9          # 8-byte Reload
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-64(%rbp), %r10         # 8-byte Reload
	jmp	.LBB1_205
.LBB1_185:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$32, %rdi
	jae	.LBB1_187
# %bb.186:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	movq	%r14, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	movq	-112(%rbp), %r13        # 8-byte Reload
	jmp	.LBB1_197
.LBB1_187:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-112(%rbp), %r13        # 8-byte Reload
	leaq	(%r14,%r13), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jae	.LBB1_190
# %bb.188:                              #   in Loop: Header=BB1_67 Depth=2
	leaq	(%rcx,%r13), %rax
	cmpq	%rax, %r14
	jae	.LBB1_190
# %bb.189:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	movq	%r14, %rax
	movq	-72(%rbp), %r9          # 8-byte Reload
	jmp	.LBB1_197
.LBB1_190:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$0, -200(%rbp)          # 8-byte Folded Reload
	je	.LBB1_207
# %bb.191:                              # %.preheader39
                                        #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_192:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%rdx,%rax,8), %xmm0
	movups	16(%rdx,%rax,8), %xmm1
	movups	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movups	%xmm2, (%rdx,%rax,8)
	movups	%xmm3, 16(%rdx,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	movups	%xmm1, 16(%r14,%rax,8)
	movups	32(%rdx,%rax,8), %xmm0
	movups	48(%rdx,%rax,8), %xmm1
	movups	32(%r14,%rax,8), %xmm2
	movups	48(%r14,%rax,8), %xmm3
	movups	%xmm2, 32(%rdx,%rax,8)
	movups	%xmm3, 48(%rdx,%rax,8)
	movups	%xmm0, 32(%r14,%rax,8)
	movups	%xmm1, 48(%r14,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_192
# %bb.193:                              #   in Loop: Header=BB1_67 Depth=2
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	je	.LBB1_195
.LBB1_194:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movups	(%rcx,%rax,8), %xmm0
	movups	16(%rcx,%rax,8), %xmm1
	movups	(%r14,%rax,8), %xmm2
	movups	16(%r14,%rax,8), %xmm3
	movups	%xmm2, (%rcx,%rax,8)
	movups	%xmm3, 16(%rcx,%rax,8)
	movups	%xmm0, (%r14,%rax,8)
	movups	%xmm1, 16(%r14,%rax,8)
.LBB1_195:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-128(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	je	.LBB1_204
# %bb.196:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-128(%rbp), %rcx        # 8-byte Reload
	leaq	(%r14,%rcx,8), %rax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx,8), %rcx
	movq	-176(%rbp), %r9         # 8-byte Reload
.LBB1_197:                              #   in Loop: Header=BB1_67 Depth=2
	leaq	-1(%r9), %r8
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_201
# %bb.198:                              # %.preheader37
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%esi, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_199:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rdi,8), %rbx
	movq	(%rax,%rdi,8), %rdx
	movq	%rdx, (%rcx,%rdi,8)
	movq	%rbx, (%rax,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rsi
	cmpq	%rdi, %r10
	jne	.LBB1_199
# %bb.200:                              # %.loopexit38
                                        #   in Loop: Header=BB1_67 Depth=2
	subq	%rsi, %rax
	subq	%rsi, %rcx
	subq	%rdi, %r9
.LBB1_201:                              #   in Loop: Header=BB1_67 Depth=2
	movq	-64(%rbp), %r10         # 8-byte Reload
	cmpq	$3, %r8
	jb	.LBB1_204
# %bb.202:                              # %.preheader35
                                        #   in Loop: Header=BB1_67 Depth=2
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_203:                              #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_67 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rsi,8), %rdx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%rcx,%rsi,8)
	movq	%rdx, (%rax,%rsi,8)
	movq	8(%rcx,%rsi,8), %rdx
	movq	8(%rax,%rsi,8), %rdi
	movq	%rdi, 8(%rcx,%rsi,8)
	movq	%rdx, 8(%rax,%rsi,8)
	movq	16(%rcx,%rsi,8), %rdx
	movq	16(%rax,%rsi,8), %rdi
	movq	%rdi, 16(%rcx,%rsi,8)
	movq	%rdx, 16(%rax,%rsi,8)
	movq	24(%rcx,%rsi,8), %rdx
	movq	24(%rax,%rsi,8), %rdi
	movq	%rdi, 24(%rcx,%rsi,8)
	movq	%rdx, 24(%rax,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_203
	.p2align	4, 0x90
.LBB1_204:                              #   in Loop: Header=BB1_67 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%r11, %r9
.LBB1_205:                              #   in Loop: Header=BB1_67 Depth=2
	addq	%r9, %rdx
	addq	%rax, %r14
	movq	%r14, %rax
	jmp	.LBB1_67
.LBB1_206:                              #   in Loop: Header=BB1_67 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_174
	jmp	.LBB1_175
.LBB1_207:                              #   in Loop: Header=BB1_67 Depth=2
	movq	%rdi, %r11
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_194
	jmp	.LBB1_195
.LBB1_208:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rax, %r14
	movq	-104(%rbp), %r11        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_209:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-232(%rbp), %r12        # 8-byte Reload
	imulq	%r9, %r12
	movq	-144(%rbp), %r15        # 8-byte Reload
	leaq	(%r15,%r12), %rsi
	movq	%rdi, %rax
	movq	-96(%rbp), %r9          # 8-byte Reload
	subq	%r9, %rax
	subq	%r15, %r9
	cmpq	%rax, %r9
	cmovgq	%rax, %r9
	testq	%r9, %r9
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	je	.LBB1_249
# %bb.210:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %rbx
	negq	%rbx
	movq	%rdi, %r11
	subq	%r9, %r11
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_222
# %bb.211:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$31, %r9
	jbe	.LBB1_214
# %bb.212:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rdi, %r15
	jae	.LBB1_227
# %bb.213:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%r9), %rcx
	cmpq	%rcx, %r11
	jae	.LBB1_227
.LBB1_214:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rdx
.LBB1_215:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r9), %r8
	movq	%r9, %rsi
	andq	$3, %rsi
	je	.LBB1_219
# %bb.216:                              # %.preheader69
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_217:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rdi), %ebx
	movzbl	(%r11,%rdi), %ecx
	movb	%cl, (%rdx,%rdi)
	movb	%bl, (%r11,%rdi)
	addq	$1, %rdi
	cmpq	%rdi, %rsi
	jne	.LBB1_217
# %bb.218:                              # %.loopexit70
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdi, %r9
	addq	%rdi, %rdx
	addq	%rdi, %r11
.LBB1_219:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_248
# %bb.220:                              # %.preheader67
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_221:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdx,%rsi), %ecx
	movzbl	(%r11,%rsi), %ebx
	movb	%bl, (%rdx,%rsi)
	movb	%cl, (%r11,%rsi)
	movzbl	1(%rdx,%rsi), %ecx
	movzbl	1(%r11,%rsi), %ebx
	movb	%bl, 1(%rdx,%rsi)
	movb	%cl, 1(%r11,%rsi)
	movzbl	2(%rdx,%rsi), %ecx
	movzbl	2(%r11,%rsi), %ebx
	movb	%bl, 2(%rdx,%rsi)
	movb	%cl, 2(%r11,%rsi)
	movzbl	3(%rdx,%rsi), %ecx
	movzbl	3(%r11,%rsi), %ebx
	movb	%bl, 3(%rdx,%rsi)
	movb	%cl, 3(%r11,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_221
	jmp	.LBB1_248
	.p2align	4, 0x90
.LBB1_222:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r10
	shrq	$3, %r10
	cmpq	$32, %r9
	jb	.LBB1_223
# %bb.224:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %rdx
	andq	$-8, %rdx
	notq	%r9
	addq	%rdx, %r9
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%r9, %rcx
	addq	$1, %rcx
	cmpq	%rcx, %r15
	jae	.LBB1_234
# %bb.225:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%r15, %rdx
	cmpq	%rdx, %r11
	jae	.LBB1_234
.LBB1_223:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r15, %rsi
.LBB1_241:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r10), %r8
	movq	%r10, %r9
	andq	$3, %r9
	je	.LBB1_245
# %bb.242:                              # %.preheader64
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_243:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rbx,8), %rcx
	movq	(%r11,%rbx,8), %rdx
	movq	%rdx, (%rsi,%rbx,8)
	movq	%rcx, (%r11,%rbx,8)
	addq	$1, %rbx
	addq	$-8, %rdi
	cmpq	%rbx, %r9
	jne	.LBB1_243
# %bb.244:                              # %.loopexit65
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rdi, %r11
	subq	%rdi, %rsi
	subq	%rbx, %r10
.LBB1_245:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_248
# %bb.246:                              # %.preheader62
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_247:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rsi,%rdi,8), %rcx
	movq	(%r11,%rdi,8), %rdx
	movq	%rdx, (%rsi,%rdi,8)
	movq	%rcx, (%r11,%rdi,8)
	movq	8(%rsi,%rdi,8), %rcx
	movq	8(%r11,%rdi,8), %rdx
	movq	%rdx, 8(%rsi,%rdi,8)
	movq	%rcx, 8(%r11,%rdi,8)
	movq	16(%rsi,%rdi,8), %rcx
	movq	16(%r11,%rdi,8), %rdx
	movq	%rdx, 16(%rsi,%rdi,8)
	movq	%rcx, 16(%r11,%rdi,8)
	movq	24(%rsi,%rdi,8), %rcx
	movq	24(%r11,%rdi,8), %rdx
	movq	%rdx, 24(%rsi,%rdi,8)
	movq	%rcx, 24(%r11,%rdi,8)
	addq	$4, %rdi
	cmpq	%rdi, %r10
	jne	.LBB1_247
	jmp	.LBB1_248
.LBB1_227:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r10
	movq	%r9, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rcx
	movq	%rcx, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %r9d
	andl	$1, %r9d
	testq	%rcx, %rcx
	je	.LBB1_299
# %bb.228:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r9, %rdx
	leaq	(%rdi,%rbx), %rsi
	addq	$48, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_229:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	-48(%rsi,%rdi), %xmm2
	movups	-32(%rsi,%rdi), %xmm3
	movups	%xmm2, (%r15,%rdi)
	movups	%xmm3, 16(%r15,%rdi)
	movups	%xmm0, -48(%rsi,%rdi)
	movups	%xmm1, -32(%rsi,%rdi)
	movups	32(%r15,%rdi), %xmm0
	movups	48(%r15,%rdi), %xmm1
	movups	-16(%rsi,%rdi), %xmm2
	movups	(%rsi,%rdi), %xmm3
	movups	%xmm2, 32(%r15,%rdi)
	movups	%xmm3, 48(%r15,%rdi)
	movups	%xmm0, -16(%rsi,%rdi)
	movups	%xmm1, (%rsi,%rdi)
	addq	$64, %rdi
	addq	$-2, %rdx
	jne	.LBB1_229
# %bb.230:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r9, %r9
	je	.LBB1_232
.LBB1_231:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rdi), %xmm0
	movups	16(%r15,%rdi), %xmm1
	movups	(%r11,%rdi), %xmm2
	movups	16(%r11,%rdi), %xmm3
	movups	%xmm2, (%r15,%rdi)
	movups	%xmm3, 16(%r15,%rdi)
	movups	%xmm0, (%r11,%rdi)
	movups	%xmm1, 16(%r11,%rdi)
.LBB1_232:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %r10
	je	.LBB1_248
# %bb.233:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r9
	andl	$31, %r9d
	leaq	(%r15,%r8), %rdx
	addq	%r8, %r11
	jmp	.LBB1_215
.LBB1_234:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r9
	movabsq	$2305843009213693948, %rcx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rcx, %r9
	leaq	-4(%r9), %rcx
	movq	%rcx, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	movl	%esi, %r8d
	andl	$1, %r8d
	testq	%rcx, %rcx
	je	.LBB1_303
# %bb.235:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r8, %rsi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rbx
	addq	$48, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB1_236:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%r15,%rdi,8), %xmm0
	movups	16(%r15,%rdi,8), %xmm1
	movups	-48(%rbx,%rdi,8), %xmm2
	movups	-32(%rbx,%rdi,8), %xmm3
	movups	%xmm2, (%r15,%rdi,8)
	movups	%xmm3, 16(%r15,%rdi,8)
	movups	%xmm0, -48(%rbx,%rdi,8)
	movups	%xmm1, -32(%rbx,%rdi,8)
	movups	32(%r15,%rdi,8), %xmm0
	movups	48(%r15,%rdi,8), %xmm1
	movups	-16(%rbx,%rdi,8), %xmm2
	movups	(%rbx,%rdi,8), %xmm3
	movups	%xmm2, 32(%r15,%rdi,8)
	movups	%xmm3, 48(%r15,%rdi,8)
	movups	%xmm0, -16(%rbx,%rdi,8)
	movups	%xmm1, (%rbx,%rdi,8)
	addq	$8, %rdi
	addq	$-2, %rsi
	jne	.LBB1_236
# %bb.237:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r8, %r8
	je	.LBB1_239
.LBB1_238:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%r15,%rdi,8), %xmm0
	movups	16(%r15,%rdi,8), %xmm1
	movups	(%r11,%rdi,8), %xmm2
	movups	16(%r11,%rdi,8), %xmm3
	movups	%xmm2, (%r15,%rdi,8)
	movups	%xmm3, 16(%r15,%rdi,8)
	movups	%xmm0, (%r11,%rdi,8)
	movups	%xmm1, 16(%r11,%rdi,8)
.LBB1_239:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r9, %r10
	jne	.LBB1_240
	.p2align	4, 0x90
.LBB1_248:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_249:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %r10
	movq	-64(%rbp), %rbx         # 8-byte Reload
	subq	%rbx, %r10
	subq	%r14, %rbx
	subq	-88(%rbp), %r10         # 8-byte Folded Reload
	cmpq	%r10, %rbx
	cmovbq	%rbx, %r10
	testq	%r10, %r10
	je	.LBB1_286
# %bb.250:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %rcx
	subq	%r10, %rcx
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_262
# %bb.251:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$31, %r10
	jbe	.LBB1_254
# %bb.252:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%rsi, %rdi
	jae	.LBB1_279
# %bb.253:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rdi,%r10), %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_279
.LBB1_254:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %r14
.LBB1_255:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r10), %r8
	movq	%r10, %r9
	andq	$3, %r9
	je	.LBB1_259
# %bb.256:                              # %.preheader59
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_257:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %ebx
	movzbl	(%rcx,%rsi), %edx
	movb	%dl, (%rdi,%rsi)
	movb	%bl, (%rcx,%rsi)
	addq	$1, %rsi
	cmpq	%rsi, %r9
	jne	.LBB1_257
# %bb.258:                              # %.loopexit60
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rsi, %r10
	addq	%rsi, %rdi
	addq	%rsi, %rcx
.LBB1_259:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	jb	.LBB1_285
# %bb.260:                              # %.preheader57
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_261:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rsi), %edx
	movzbl	(%rcx,%rsi), %ebx
	movb	%bl, (%rdi,%rsi)
	movb	%dl, (%rcx,%rsi)
	movzbl	1(%rdi,%rsi), %edx
	movzbl	1(%rcx,%rsi), %ebx
	movb	%bl, 1(%rdi,%rsi)
	movb	%dl, 1(%rcx,%rsi)
	movzbl	2(%rdi,%rsi), %edx
	movzbl	2(%rcx,%rsi), %ebx
	movb	%bl, 2(%rdi,%rsi)
	movb	%dl, 2(%rcx,%rsi)
	movzbl	3(%rdi,%rsi), %edx
	movzbl	3(%rcx,%rsi), %ebx
	movb	%bl, 3(%rdi,%rsi)
	movb	%dl, 3(%rcx,%rsi)
	addq	$4, %rsi
	cmpq	%rsi, %r10
	jne	.LBB1_261
	jmp	.LBB1_285
	.p2align	4, 0x90
.LBB1_262:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rbx, %r14
	movq	%r10, %r11
	shrq	$3, %r11
	cmpq	$32, %r10
	jb	.LBB1_272
# %bb.263:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %rdx
	andq	$-8, %rdx
	movq	%r10, %rsi
	notq	%rsi
	addq	%rdx, %rsi
	addq	%r12, %rsi
	addq	%r15, %rsi
	addq	$1, %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rsi, %rdi
	jae	.LBB1_265
# %bb.264:                              #   in Loop: Header=BB1_1 Depth=1
	addq	%rdi, %rdx
	cmpq	%rdx, %rcx
	jb	.LBB1_272
.LBB1_265:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r11, %r9
	movabsq	$2305843009213693948, %rdx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%rdx, %r9
	leaq	-4(%r9), %rdx
	movq	%rdx, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r8d
	andl	$1, %r8d
	testq	%rdx, %rdx
	je	.LBB1_304
# %bb.266:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r8, %rbx
	subq	%r10, %r12
	leaq	(%r15,%r12), %rdi
	addq	$48, %rdi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_267:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rsi,%rdx,8), %xmm0
	movups	16(%rsi,%rdx,8), %xmm1
	movups	-48(%rdi,%rdx,8), %xmm2
	movups	-32(%rdi,%rdx,8), %xmm3
	movups	%xmm2, (%rsi,%rdx,8)
	movups	%xmm3, 16(%rsi,%rdx,8)
	movups	%xmm0, -48(%rdi,%rdx,8)
	movups	%xmm1, -32(%rdi,%rdx,8)
	movups	32(%rsi,%rdx,8), %xmm0
	movups	48(%rsi,%rdx,8), %xmm1
	movups	-16(%rdi,%rdx,8), %xmm2
	movups	(%rdi,%rdx,8), %xmm3
	movups	%xmm2, 32(%rsi,%rdx,8)
	movups	%xmm3, 48(%rsi,%rdx,8)
	movups	%xmm0, -16(%rdi,%rdx,8)
	movups	%xmm1, (%rdi,%rdx,8)
	addq	$8, %rdx
	addq	$-2, %rbx
	jne	.LBB1_267
# %bb.268:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r8, %r8
	je	.LBB1_270
.LBB1_269:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movups	(%rsi,%rdx,8), %xmm0
	movups	16(%rsi,%rdx,8), %xmm1
	movups	(%rcx,%rdx,8), %xmm2
	movups	16(%rcx,%rdx,8), %xmm3
	movups	%xmm2, (%rsi,%rdx,8)
	movups	%xmm3, 16(%rsi,%rdx,8)
	movups	%xmm0, (%rcx,%rdx,8)
	movups	%xmm1, 16(%rcx,%rdx,8)
.LBB1_270:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r9, %r11
	movq	-48(%rbp), %rdx         # 8-byte Reload
	je	.LBB1_285
# %bb.271:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%rcx,%r9,8), %rcx
	leaq	(%rdx,%r9,8), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	subq	%r9, %r11
.LBB1_272:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	-1(%r11), %r8
	movq	%r11, %r9
	andq	$3, %r9
	je	.LBB1_276
# %bb.273:                              # %.preheader54
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	movq	-48(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_274:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rdi,8), %rdx
	movq	(%rcx,%rdi,8), %rsi
	movq	%rsi, (%r10,%rdi,8)
	movq	%rdx, (%rcx,%rdi,8)
	addq	$1, %rdi
	addq	$-8, %rbx
	cmpq	%rdi, %r9
	jne	.LBB1_274
# %bb.275:                              # %.loopexit55
                                        #   in Loop: Header=BB1_1 Depth=1
	subq	%rbx, %rcx
	subq	%rbx, %r10
	movq	%r10, -48(%rbp)         # 8-byte Spill
	subq	%rdi, %r11
.LBB1_276:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	$3, %r8
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jb	.LBB1_285
# %bb.277:                              # %.preheader52
                                        #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_278:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx,%rdx,8), %rsi
	movq	(%rcx,%rdx,8), %rdi
	movq	%rdi, (%rbx,%rdx,8)
	movq	%rsi, (%rcx,%rdx,8)
	movq	8(%rbx,%rdx,8), %rsi
	movq	8(%rcx,%rdx,8), %rdi
	movq	%rdi, 8(%rbx,%rdx,8)
	movq	%rsi, 8(%rcx,%rdx,8)
	movq	16(%rbx,%rdx,8), %rsi
	movq	16(%rcx,%rdx,8), %rdi
	movq	%rdi, 16(%rbx,%rdx,8)
	movq	%rsi, 16(%rcx,%rdx,8)
	movq	24(%rbx,%rdx,8), %rsi
	movq	24(%rcx,%rdx,8), %rdi
	movq	%rdi, 24(%rbx,%rdx,8)
	movq	%rsi, 24(%rcx,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r11
	jne	.LBB1_278
	jmp	.LBB1_285
.LBB1_279:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r10, %r8
	andq	$-32, %r8
	leaq	-32(%r8), %rsi
	movq	%rsi, %rdx
	shrq	$5, %rdx
	addq	$1, %rdx
	movl	%edx, %r9d
	andl	$1, %r9d
	movq	%rbx, %r14
	testq	%rsi, %rsi
	je	.LBB1_300
# %bb.280:                              #   in Loop: Header=BB1_1 Depth=1
	subq	%r9, %rdx
	subq	%r10, %r12
	leaq	(%r15,%r12), %rbx
	addq	$48, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_281:                              #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movups	(%rdi,%rsi), %xmm0
	movups	16(%rdi,%rsi), %xmm1
	movups	-48(%rbx,%rsi), %xmm2
	movups	-32(%rbx,%rsi), %xmm3
	movups	%xmm2, (%rdi,%rsi)
	movups	%xmm3, 16(%rdi,%rsi)
	movups	%xmm0, -48(%rbx,%rsi)
	movups	%xmm1, -32(%rbx,%rsi)
	movups	32(%rdi,%rsi), %xmm0
	movups	48(%rdi,%rsi), %xmm1
	movups	-16(%rbx,%rsi), %xmm2
	movups	(%rbx,%rsi), %xmm3
	movups	%xmm2, 32(%rdi,%rsi)
	movups	%xmm3, 48(%rdi,%rsi)
	movups	%xmm0, -16(%rbx,%rsi)
	movups	%xmm1, (%rbx,%rsi)
	addq	$64, %rsi
	addq	$-2, %rdx
	jne	.LBB1_281
# %bb.282:                              #   in Loop: Header=BB1_1 Depth=1
	testq	%r9, %r9
	je	.LBB1_284
.LBB1_283:                              #   in Loop: Header=BB1_1 Depth=1
	movups	(%rdi,%rsi), %xmm0
	movups	16(%rdi,%rsi), %xmm1
	movups	(%rcx,%rsi), %xmm2
	movups	16(%rcx,%rsi), %xmm3
	movups	%xmm2, (%rdi,%rsi)
	movups	%xmm3, 16(%rdi,%rsi)
	movups	%xmm0, (%rcx,%rsi)
	movups	%xmm1, 16(%rcx,%rsi)
.LBB1_284:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r8, %r10
	jne	.LBB1_297
	.p2align	4, 0x90
.LBB1_285:                              #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	%r14, %rbx
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB1_286:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-88(%rbp), %r9          # 8-byte Reload
	cmpq	%r9, %rax
	movq	-248(%rbp), %r14        # 8-byte Reload
	jbe	.LBB1_292
# %bb.287:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r14, %r15
	jbe	.LBB1_289
# %bb.288:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %r15        # 8-byte Folded Reload
	ja	.LBB1_292
.LBB1_289:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r15,%rax), %rcx
	addq	$-1, %rcx
	cmpq	%r14, %rcx
	jae	.LBB1_291
# %bb.290:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %rcx        # 8-byte Folded Reload
	jb	.LBB1_292
.LBB1_291:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	divq	%r9
	movq	%r15, %rdi
	movq	%rax, %rsi
	movq	%r9, %rdx
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %r8
	movq	-160(%rbp), %r9         # 8-byte Reload
	callq	_pqsort
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	.p2align	4, 0x90
.LBB1_292:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	%r9, %rbx
	jbe	.LBB1_347
# %bb.293:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%rsi, %r15
	subq	%rbx, %r15
	cmpq	%r14, %r15
	jbe	.LBB1_295
# %bb.294:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %r15        # 8-byte Folded Reload
	ja	.LBB1_347
.LBB1_295:                              #   in Loop: Header=BB1_1 Depth=1
	addq	$-1, %rsi
	movq	%rbx, %rax
	xorl	%edx, %edx
	divq	%r9
	movq	%rax, %rbx
	cmpq	%r14, %rsi
	jae	.LBB1_1
# %bb.296:                              #   in Loop: Header=BB1_1 Depth=1
	cmpq	-160(%rbp), %rsi        # 8-byte Folded Reload
	jae	.LBB1_1
	jmp	.LBB1_347
.LBB1_297:                              #   in Loop: Header=BB1_1 Depth=1
	andl	$31, %r10d
	addq	%r8, %rdi
	addq	%r8, %rcx
	jmp	.LBB1_255
.LBB1_298:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -216(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_56
	jmp	.LBB1_57
.LBB1_299:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	testq	%r9, %r9
	jne	.LBB1_231
	jmp	.LBB1_232
.LBB1_300:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%esi, %esi
	testq	%r9, %r9
	jne	.LBB1_283
	jmp	.LBB1_284
.LBB1_301:                              #   in Loop: Header=BB1_1 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	leaq	(%r12,%rax,8), %r12
	leaq	(%r15,%rax,8), %rax
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_45
.LBB1_240:                              #   in Loop: Header=BB1_1 Depth=1
	leaq	(%r11,%r9,8), %r11
	leaq	(%r15,%r9,8), %rsi
	subq	%r9, %r10
	jmp	.LBB1_241
.LBB1_302:                              #   in Loop: Header=BB1_1 Depth=1
	movq	%r9, %r11
	xorl	%eax, %eax
	cmpq	$0, -152(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_63
	jmp	.LBB1_64
.LBB1_303:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edi, %edi
	testq	%r8, %r8
	jne	.LBB1_238
	jmp	.LBB1_239
.LBB1_304:                              #   in Loop: Header=BB1_1 Depth=1
	xorl	%edx, %edx
	testq	%r8, %r8
	jne	.LBB1_269
	jmp	.LBB1_270
.LBB1_305:
	imulq	%r9, %rbx
	cmpq	%r9, %rbx
	jle	.LBB1_347
# %bb.306:
	addq	%r15, %rbx
	leaq	(%r15,%r9), %rsi
	leaq	(%r9,%r13), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	movq	-72(%rbp), %r8          # 8-byte Reload
	movabsq	$2305843009213693948, %rdx # imm = 0x1FFFFFFFFFFFFFFC
	andq	%r8, %rdx
	movq	%r9, %rax
	shrq	$5, %rax
	leaq	-4(,%rax,4), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	shrq	$2, %rdi
	addq	$1, %rdi
	movl	%r9d, %eax
	andl	$31, %eax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	subq	%rdx, %r8
	movq	%r8, -176(%rbp)         # 8-byte Spill
	movl	%edi, %ecx
	andl	$1, %ecx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	andq	$-2, %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	andq	$-2, %rdi
	movq	%rdi, -184(%rbp)        # 8-byte Spill
	leaq	48(%r15), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rbx, -232(%rbp)        # 8-byte Spill
	jmp	.LBB1_308
	.p2align	4, 0x90
.LBB1_307:                              #   in Loop: Header=BB1_308 Depth=1
	movq	-56(%rbp), %rsi         # 8-byte Reload
	addq	%r9, %rsi
	addq	$1, -96(%rbp)           # 8-byte Folded Spill
	addq	%r9, -64(%rbp)          # 8-byte Folded Spill
	movq	-232(%rbp), %rbx        # 8-byte Reload
	cmpq	%rbx, %rsi
	movq	-144(%rbp), %r15        # 8-byte Reload
	jae	.LBB1_347
.LBB1_308:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_312 Depth 2
                                        #       Child Loop BB1_330 Depth 3
                                        #       Child Loop BB1_336 Depth 3
                                        #       Child Loop BB1_341 Depth 3
                                        #       Child Loop BB1_323 Depth 3
                                        #       Child Loop BB1_327 Depth 3
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	cmpq	%r15, %rsi
	jbe	.LBB1_307
# %bb.309:                              # %.preheader8
                                        #   in Loop: Header=BB1_308 Depth=1
	movq	-96(%rbp), %rcx         # 8-byte Reload
	imulq	%r9, %rcx
	leaq	(%rcx,%r9), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	movq	-256(%rbp), %rax        # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	addq	%rcx, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %r12         # 8-byte Reload
	xorl	%r13d, %r13d
	movq	-56(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_312
	.p2align	4, 0x90
.LBB1_310:                              #   in Loop: Header=BB1_312 Depth=2
	movq	(%r14), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r15)
.LBB1_311:                              #   in Loop: Header=BB1_312 Depth=2
	addq	$1, %r13
	addq	%r11, %r12
	movq	%r15, %r14
	cmpq	-144(%rbp), %r15        # 8-byte Folded Reload
	jbe	.LBB1_307
.LBB1_312:                              #   Parent Loop BB1_308 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_330 Depth 3
                                        #       Child Loop BB1_336 Depth 3
                                        #       Child Loop BB1_341 Depth 3
                                        #       Child Loop BB1_323 Depth 3
                                        #       Child Loop BB1_327 Depth 3
	leaq	(%r14,%r11), %r15
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	*-80(%rbp)              # 8-byte Folded Reload
	movq	-104(%rbp), %r11        # 8-byte Reload
	movq	-88(%rbp), %r9          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB1_307
# %bb.313:                              #   in Loop: Header=BB1_312 Depth=2
	cmpl	$0, -116(%rbp)          # 4-byte Folded Reload
	je	.LBB1_310
# %bb.314:                              #   in Loop: Header=BB1_312 Depth=2
	testb	$7, -168(%rbp)          # 1-byte Folded Reload
	je	.LBB1_317
# %bb.315:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$31, %r9
	ja	.LBB1_328
# %bb.316:                              #   in Loop: Header=BB1_312 Depth=2
	movq	%r9, %r8
	movq	%r15, %rcx
	jmp	.LBB1_335
	.p2align	4, 0x90
.LBB1_317:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$32, %r9
	jb	.LBB1_320
# %bb.318:                              #   in Loop: Header=BB1_312 Depth=2
	movq	%r13, %rax
	imulq	%r11, %rax
	movq	-216(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	movq	-144(%rbp), %rsi        # 8-byte Reload
	addq	%rsi, %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	addq	%rax, %rdx
	addq	%rsi, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB1_339
# %bb.319:                              #   in Loop: Header=BB1_312 Depth=2
	movq	-208(%rbp), %rcx        # 8-byte Reload
	addq	%rax, %rcx
	addq	%rsi, %rcx
	addq	-160(%rbp), %rax        # 8-byte Folded Reload
	addq	%rsi, %rax
	cmpq	%rcx, %rax
	jae	.LBB1_339
.LBB1_320:                              #   in Loop: Header=BB1_312 Depth=2
	movq	%r9, %r8
	movq	%r15, %rax
	movq	-72(%rbp), %r9          # 8-byte Reload
.LBB1_321:                              #   in Loop: Header=BB1_312 Depth=2
	leaq	-1(%r9), %rbx
	movq	%r9, %r10
	andq	$3, %r10
	je	.LBB1_325
# %bb.322:                              # %.preheader1
                                        #   in Loop: Header=BB1_312 Depth=2
	xorl	%edx, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB1_323:                              #   Parent Loop BB1_308 Depth=1
                                        #     Parent Loop BB1_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rsi,8), %rcx
	movq	(%rax,%rsi,8), %rdi
	movq	%rdi, (%r14,%rsi,8)
	movq	%rcx, (%rax,%rsi,8)
	addq	$1, %rsi
	addq	$-8, %rdx
	cmpq	%rsi, %r10
	jne	.LBB1_323
# %bb.324:                              # %.loopexit2
                                        #   in Loop: Header=BB1_312 Depth=2
	subq	%rdx, %rax
	subq	%rdx, %r14
	subq	%rsi, %r9
	movq	-104(%rbp), %r11        # 8-byte Reload
.LBB1_325:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$3, %rbx
	jb	.LBB1_337
# %bb.326:                              # %.preheader
                                        #   in Loop: Header=BB1_312 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_327:                              #   Parent Loop BB1_308 Depth=1
                                        #     Parent Loop BB1_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r14,%rdx,8), %rcx
	movq	(%rax,%rdx,8), %rsi
	movq	%rsi, (%r14,%rdx,8)
	movq	%rcx, (%rax,%rdx,8)
	movq	8(%r14,%rdx,8), %rcx
	movq	8(%rax,%rdx,8), %rsi
	movq	%rsi, 8(%r14,%rdx,8)
	movq	%rcx, 8(%rax,%rdx,8)
	movq	16(%r14,%rdx,8), %rcx
	movq	16(%rax,%rdx,8), %rsi
	movq	%rsi, 16(%r14,%rdx,8)
	movq	%rcx, 16(%rax,%rdx,8)
	movq	24(%r14,%rdx,8), %rcx
	movq	24(%rax,%rdx,8), %rsi
	movq	%rsi, 24(%r14,%rdx,8)
	movq	%rcx, 24(%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_327
	jmp	.LBB1_337
.LBB1_328:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$0, -224(%rbp)          # 8-byte Folded Reload
	je	.LBB1_338
# %bb.329:                              # %.preheader6
                                        #   in Loop: Header=BB1_312 Depth=2
	leaq	(%r12,%r9), %rcx
	xorl	%eax, %eax
	movq	-240(%rbp), %rdx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_330:                              #   Parent Loop BB1_308 Depth=1
                                        #     Parent Loop BB1_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	-48(%rcx,%rax), %xmm0
	movups	-32(%rcx,%rax), %xmm1
	movups	-48(%r12,%rax), %xmm2
	movups	-32(%r12,%rax), %xmm3
	movups	%xmm2, -48(%rcx,%rax)
	movups	%xmm3, -32(%rcx,%rax)
	movups	%xmm0, -48(%r12,%rax)
	movups	%xmm1, -32(%r12,%rax)
	movups	-16(%rcx,%rax), %xmm0
	movups	(%rcx,%rax), %xmm1
	movups	-16(%r12,%rax), %xmm2
	movups	(%r12,%rax), %xmm3
	movups	%xmm2, -16(%rcx,%rax)
	movups	%xmm3, (%rcx,%rax)
	movups	%xmm0, -16(%r12,%rax)
	movups	%xmm1, (%r12,%rax)
	addq	$64, %rax
	addq	$-2, %rdx
	jne	.LBB1_330
# %bb.331:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	je	.LBB1_333
.LBB1_332:                              #   in Loop: Header=BB1_312 Depth=2
	movups	(%r14,%rax), %xmm0
	movups	16(%r14,%rax), %xmm1
	movups	(%r15,%rax), %xmm2
	movups	16(%r15,%rax), %xmm3
	movups	%xmm2, (%r14,%rax)
	movups	%xmm3, 16(%r14,%rax)
	movups	%xmm0, (%r15,%rax)
	movups	%xmm1, 16(%r15,%rax)
.LBB1_333:                              #   in Loop: Header=BB1_312 Depth=2
	movq	%r9, %r8
	cmpq	%r9, -136(%rbp)         # 8-byte Folded Reload
	je	.LBB1_337
# %bb.334:                              #   in Loop: Header=BB1_312 Depth=2
	movq	-136(%rbp), %rax        # 8-byte Reload
	addq	%rax, %r14
	leaq	(%r15,%rax), %rcx
	movq	-200(%rbp), %r9         # 8-byte Reload
.LBB1_335:                              #   in Loop: Header=BB1_312 Depth=2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB1_336:                              #   Parent Loop BB1_308 Depth=1
                                        #     Parent Loop BB1_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rdx), %eax
	movzbl	(%rcx,%rdx), %ebx
	movb	%bl, (%r14,%rdx)
	movb	%al, (%rcx,%rdx)
	addq	$1, %rdx
	cmpq	%rdx, %r9
	jne	.LBB1_336
.LBB1_337:                              #   in Loop: Header=BB1_312 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %r9
	jmp	.LBB1_311
.LBB1_338:                              #   in Loop: Header=BB1_312 Depth=2
	xorl	%eax, %eax
	cmpq	$0, -48(%rbp)           # 8-byte Folded Reload
	jne	.LBB1_332
	jmp	.LBB1_333
.LBB1_339:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$0, -248(%rbp)          # 8-byte Folded Reload
	je	.LBB1_346
# %bb.340:                              # %.preheader3
                                        #   in Loop: Header=BB1_312 Depth=2
	movq	%r9, %r8
	xorl	%eax, %eax
	movq	-184(%rbp), %rcx        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_341:                              #   Parent Loop BB1_308 Depth=1
                                        #     Parent Loop BB1_312 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	-48(%r12,%rax,8), %xmm2
	movups	-32(%r12,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, -48(%r12,%rax,8)
	movups	%xmm1, -32(%r12,%rax,8)
	movups	32(%r14,%rax,8), %xmm0
	movups	48(%r14,%rax,8), %xmm1
	movups	-16(%r12,%rax,8), %xmm2
	movups	(%r12,%rax,8), %xmm3
	movups	%xmm2, 32(%r14,%rax,8)
	movups	%xmm3, 48(%r14,%rax,8)
	movups	%xmm0, -16(%r12,%rax,8)
	movups	%xmm1, (%r12,%rax,8)
	addq	$8, %rax
	addq	$-2, %rcx
	jne	.LBB1_341
# %bb.342:                              #   in Loop: Header=BB1_312 Depth=2
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	je	.LBB1_344
.LBB1_343:                              #   in Loop: Header=BB1_312 Depth=2
	movups	(%r14,%rax,8), %xmm0
	movups	16(%r14,%rax,8), %xmm1
	movups	(%r15,%rax,8), %xmm2
	movups	16(%r15,%rax,8), %xmm3
	movups	%xmm2, (%r14,%rax,8)
	movups	%xmm3, 16(%r14,%rax,8)
	movups	%xmm0, (%r15,%rax,8)
	movups	%xmm1, 16(%r15,%rax,8)
.LBB1_344:                              #   in Loop: Header=BB1_312 Depth=2
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, -72(%rbp)         # 8-byte Folded Reload
	je	.LBB1_337
# %bb.345:                              #   in Loop: Header=BB1_312 Depth=2
	movq	-152(%rbp), %rcx        # 8-byte Reload
	leaq	(%r15,%rcx,8), %rax
	leaq	(%r14,%rcx,8), %r14
	movq	-176(%rbp), %r9         # 8-byte Reload
	jmp	.LBB1_321
.LBB1_346:                              #   in Loop: Header=BB1_312 Depth=2
	movq	%r9, %r8
	xorl	%eax, %eax
	cmpq	$0, -192(%rbp)          # 8-byte Folded Reload
	jne	.LBB1_343
	jmp	.LBB1_344
.LBB1_347:
	movl	$42, __A_VARIABLE(%rip)
	addq	$232, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_pqsort, .Lfunc_end1-_pqsort
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
