	.text
	.file	"bsd_qsort_r.c"
	.globl	__bsd_qsort_r           # -- Begin function __bsd_qsort_r
	.p2align	4, 0x90
	.type	__bsd_qsort_r,@function
__bsd_qsort_r:                          # @__bsd_qsort_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %rax
	movq	%rdi, %r10
	movq	%rdx, %rbx
	negq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpq	$8, %rdx
	setne	%cl
	movl	%ecx, -156(%rbp)        # 4-byte Spill
	movslq	%r12d, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$1, %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_52 Depth 2
                                        #     Child Loop BB0_50 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_78 Depth 4
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_96 Depth 3
                                        #     Child Loop BB0_114 Depth 2
                                        #     Child Loop BB0_112 Depth 2
                                        #     Child Loop BB0_121 Depth 2
                                        #     Child Loop BB0_119 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %ecx
	testb	$7, %r10b
	jne	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %r12b
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-156(%rbp), %ecx        # 4-byte Reload
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$6, %rax
	movq	%r10, -72(%rbp)         # 8-byte Spill
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	jbe	.LBB0_5
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, %r15
	shrq	%r15
	imulq	%r12, %r15
	addq	%r10, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	je	.LBB0_46
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-1(%rax), %r14
	imulq	%r12, %r14
	addq	%r10, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %rax
	jb	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, -144(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	shrq	$3, %r13
	imulq	%r12, %r13
	leaq	(%r10,%r13), %r14
	leaq	(%r10,%r13,2), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	%r14, %rdx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, -128(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rsi
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdx
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -128(%rbp)          # 4-byte Folded Reload
	js	.LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r14
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r10, %rbx
	jmp	.LBB0_40
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_29
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r14
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, -80(%rbp)         # 8-byte Spill
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	negq	%rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	movq	%r15, %rbx
	subq	%r13, %rbx
	leaq	(%r15,%r13), %r14
	movq	%r13, %rax
	addq	%r13, %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-64(%rbp), %r13         # 8-byte Reload
	callq	*%r13
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	movq	%r14, %r12
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%r13
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -160(%rbp)          # 4-byte Folded Reload
	js	.LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-144(%rbp), %r14        # 8-byte Reload
	jg	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r12
	movq	%r12, %r15
	jmp	.LBB0_34
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-144(%rbp), %r14        # 8-byte Reload
	js	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %rbx
	movq	%rbx, %r15
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rbx
	movq	%r14, %rsi
	subq	-128(%rbp), %rsi        # 8-byte Folded Reload
	movq	-136(%rbp), %r13        # 8-byte Reload
	addq	%r14, %r13
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%rsi, -128(%rbp)        # 8-byte Spill
	movq	%r13, %rdx
	movq	-64(%rbp), %r14         # 8-byte Reload
	callq	*%r14
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	movq	%r13, %r12
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -136(%rbp)          # 4-byte Folded Reload
	js	.LBB0_35
# %bb.37:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jg	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rsi
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	movq	%r14, %r12
	jmp	.LBB0_39
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	js	.LBB0_39
# %bb.36:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-128(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rsi
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	callq	*%rbx
	movl	%eax, %r12d
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	*%rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	movq	%r14, %rbx
	js	.LBB0_41
# %bb.43:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jg	.LBB0_45
# %bb.44:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	cmovsq	%r14, %rbx
	movq	%rbx, %r15
	jmp	.LBB0_45
.LBB0_41:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	js	.LBB0_45
# %bb.42:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
.LBB0_45:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
.LBB0_46:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_47
# %bb.48:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB0_51
# %bb.49:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rdi        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_50:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rcx), %rdx
	movq	(%r15,%rcx), %rsi
	movq	%rsi, (%r10,%rcx)
	movq	%rdx, (%r15,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rdi
	cmpq	$1, %rdi
	jg	.LBB0_50
	jmp	.LBB0_53
	.p2align	4, 0x90
.LBB0_47:                               #   in Loop: Header=BB0_1 Depth=1
	movq	(%r10), %rdx
	movq	(%r15), %rcx
	movq	%rcx, (%r10)
	movq	%rdx, (%r15)
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_52:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rsi), %edx
	movzbl	(%r15,%rsi), %ebx
	movb	%bl, (%r10,%rsi)
	movb	%dl, (%r15,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rsi
	cmpq	$1, %rcx
	jg	.LBB0_52
.LBB0_53:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_54:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r10,%r12), %r13
	leaq	-1(%rax), %r14
	imulq	%r12, %r14
	addq	%r10, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	%r14, %r12
	movq	%r13, %r15
	movq	%r13, -80(%rbp)         # 8-byte Spill
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_63:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	addq	%rax, %r15
.LBB0_55:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_70 Depth 3
                                        #       Child Loop BB0_68 Depth 3
                                        #       Child Loop BB0_58 Depth 3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_78 Depth 4
                                        #       Child Loop BB0_98 Depth 3
                                        #       Child Loop BB0_96 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	ja	.LBB0_58
# %bb.56:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r10, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_57
# %bb.62:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_63
# %bb.64:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	-72(%rbp), %r10         # 8-byte Reload
	je	.LBB0_65
# %bb.66:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_69
# %bb.67:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_68:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx), %rdx
	movq	(%r15,%rcx), %rsi
	movq	%rsi, (%r13,%rcx)
	movq	%rdx, (%r15,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_68
	jmp	.LBB0_71
.LBB0_65:                               #   in Loop: Header=BB0_55 Depth=2
	movq	(%r13), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%r15)
	jmp	.LBB0_72
.LBB0_69:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_70:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rax), %edx
	movzbl	(%r15,%rax), %ebx
	movb	%bl, (%r13,%rax)
	movb	%dl, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_70
.LBB0_71:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_72:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	addq	%rax, %r15
	jmp	.LBB0_55
.LBB0_57:                               #   in Loop: Header=BB0_55 Depth=2
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_58
	.p2align	4, 0x90
.LBB0_61:                               #   in Loop: Header=BB0_58 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	addq	%rax, %r12
.LBB0_58:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_80 Depth 4
                                        #         Child Loop BB0_78 Depth 4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	ja	.LBB0_84
# %bb.59:                               #   in Loop: Header=BB0_58 Depth=3
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r10, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_92
# %bb.60:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_61
# %bb.74:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	-72(%rbp), %r10         # 8-byte Reload
	je	.LBB0_75
# %bb.76:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_79
# %bb.77:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_78:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        #       Parent Loop BB0_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%r12,%rcx), %rdx
	movq	(%r14,%rcx), %rsi
	movq	%rsi, (%r12,%rcx)
	movq	%rdx, (%r14,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_78
	jmp	.LBB0_81
.LBB0_75:                               #   in Loop: Header=BB0_58 Depth=3
	movq	(%r12), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r12)
	movq	%rax, (%r14)
	jmp	.LBB0_82
.LBB0_79:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_80:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        #       Parent Loop BB0_58 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r12,%rax), %edx
	movzbl	(%r14,%rax), %ebx
	movb	%bl, (%r12,%rax)
	movb	%dl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_80
.LBB0_81:                               #   in Loop: Header=BB0_58 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_82:                               #   in Loop: Header=BB0_58 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	addq	%rax, %r12
	jmp	.LBB0_58
.LBB0_92:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_93
# %bb.94:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_97
# %bb.95:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_96:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r15,%rcx), %rdx
	movq	(%r12,%rcx), %rsi
	movq	%rsi, (%r15,%rcx)
	movq	%rdx, (%r12,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_96
	jmp	.LBB0_99
.LBB0_93:                               #   in Loop: Header=BB0_55 Depth=2
	movq	(%r15), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r15)
	movq	%rax, (%r12)
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_100
.LBB0_97:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_98:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_55 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15,%rax), %edx
	movzbl	(%r12,%rax), %ebx
	movb	%bl, (%r15,%rax)
	movb	%dl, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_98
.LBB0_99:                               #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_100:                              #   in Loop: Header=BB0_55 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	-88(%rbp), %r15         # 8-byte Folded Reload
	addq	-104(%rbp), %r12        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_84:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_85
# %bb.109:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-112(%rbp), %r9         # 8-byte Reload
	imulq	-88(%rbp), %r9          # 8-byte Folded Reload
	addq	%r10, %r9
	movq	%r15, %rax
	subq	%r13, %rax
	subq	%r10, %r13
	cmpq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_116
# %bb.110:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %r8
	subq	%r13, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -44(%rbp)           # 4-byte Folded Reload
	ja	.LBB0_113
# %bb.111:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	%r13d, %rdx
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_112:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rsi), %rdi
	movq	(%r8,%rsi), %rbx
	movq	%rbx, (%r10,%rsi)
	movq	%rdi, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_112
	jmp	.LBB0_115
	.p2align	4, 0x90
.LBB0_113:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_114:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rsi), %ebx
	movzbl	(%r8,%rsi), %ecx
	movb	%cl, (%r10,%rsi)
	movb	%bl, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_114
.LBB0_115:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_116:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r9, %r13
	movq	%r9, %rdx
	subq	%r14, %rdx
	subq	%r12, %r14
	movq	-88(%rbp), %r12         # 8-byte Reload
	subq	%r12, %rdx
	cmpq	%rdx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbq	%r14, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB0_123
# %bb.117:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r13, %r8
	subq	%rdx, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	ja	.LBB0_120
# %bb.118:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	%edx, %rdx
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_119:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rsi), %rdi
	movq	(%r8,%rsi), %rbx
	movq	%rbx, (%r15,%rsi)
	movq	%rdi, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_119
	jmp	.LBB0_122
	.p2align	4, 0x90
.LBB0_120:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_121:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rsi), %ebx
	movzbl	(%r8,%rsi), %ecx
	movb	%cl, (%r15,%rsi)
	movb	%bl, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_121
.LBB0_122:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_123:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jbe	.LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_1 Depth=1
	xorl	%edx, %edx
	divq	%r12
	movq	%r10, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	__bsd_qsort_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_125:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_127
# %bb.126:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r13, %r10
	subq	%r14, %r10
	movq	%r14, %rax
	xorl	%edx, %edx
	divq	%r12
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_1
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	imulq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jle	.LBB0_128
# %bb.6:
	addq	%r10, %rax
	leaq	(%r10,%r12), %r15
	movslq	%r12d, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	addq	$1, -152(%rbp)          # 8-byte Folded Spill
	movq	%r10, -120(%rbp)        # 8-byte Spill
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, -120(%rbp)        # 8-byte Folded Spill
	movq	-112(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, %r15
	jae	.LBB0_128
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_14 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r15
	jbe	.LBB0_19
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	%r15, %r14
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	(%r14), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r14)
	movq	%rax, (%r12)
.LBB0_18:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %r13
	movq	%r12, %r14
	cmpq	%r10, %r12
	jbe	.LBB0_19
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_14 Depth 3
	leaq	(%r14,%rbx), %r12
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r13, %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_14:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax,%rdx), %rsi
	movq	(%r13,%rdx), %rdi
	movq	%rdi, (%rax,%rdx)
	movq	%rsi, (%r13,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_14
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_16:                               #   Parent Loop BB0_7 Depth=1
                                        #     Parent Loop BB0_9 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r14,%rax), %edx
	movzbl	(%r13,%rax), %ebx
	movb	%bl, (%r14,%rax)
	movb	%dl, (%r13,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_16
.LBB0_17:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_18
.LBB0_85:
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	imulq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	jle	.LBB0_128
# %bb.86:                               # %.preheader8
	addq	%r10, %rcx
	cltq
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$1, -152(%rbp)          # 8-byte Folded Spill
	movq	%r10, %r15
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_87
	.p2align	4, 0x90
.LBB0_108:                              #   in Loop: Header=BB0_87 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r15
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rdx
	jae	.LBB0_128
.LBB0_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_89 Depth 2
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cmpq	%r10, %rdx
	jbe	.LBB0_108
# %bb.88:                               # %.preheader6
                                        #   in Loop: Header=BB0_87 Depth=1
	movq	%r15, %r12
	movq	-80(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_89
	.p2align	4, 0x90
.LBB0_91:                               #   in Loop: Header=BB0_89 Depth=2
	movq	(%r13), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%r14)
.LBB0_107:                              #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %r12
	movq	%r14, %r13
	cmpq	%r10, %r14
	jbe	.LBB0_108
.LBB0_89:                               #   Parent Loop BB0_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_105 Depth 3
                                        #       Child Loop BB0_103 Depth 3
	leaq	(%rbx,%r13), %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*-64(%rbp)              # 8-byte Folded Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_108
# %bb.90:                               #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_91
# %bb.101:                              #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_104
# %bb.102:                              #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	movq	-152(%rbp), %rcx        # 8-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_103:                              #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax,%rdx), %rsi
	movq	(%r12,%rdx), %rdi
	movq	%rdi, (%rax,%rdx)
	movq	%rsi, (%r12,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_103
	jmp	.LBB0_106
	.p2align	4, 0x90
.LBB0_104:                              #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_105:                              #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rax), %edx
	movzbl	(%r12,%rax), %ebx
	movb	%bl, (%r13,%rax)
	movb	%dl, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_105
.LBB0_106:                              #   in Loop: Header=BB0_89 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_107
.LBB0_127:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_128:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__bsd_qsort_r, .Lfunc_end0-__bsd_qsort_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
