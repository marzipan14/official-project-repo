	.text
	.file	"qsort_r.c"
	.globl	qsort_r                 # -- Begin function qsort_r
	.p2align	4, 0x90
	.type	qsort_r,@function
qsort_r:                                # @qsort_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
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
	movl	%ecx, -164(%rbp)        # 4-byte Spill
	movslq	%r12d, %rdx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	addq	$1, %rdx
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	addq	$1, %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_53 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_56 Depth 2
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_81 Depth 4
                                        #         Child Loop BB0_79 Depth 4
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_97 Depth 3
                                        #     Child Loop BB0_115 Depth 2
                                        #     Child Loop BB0_113 Depth 2
                                        #     Child Loop BB0_122 Depth 2
                                        #     Child Loop BB0_120 Depth 2
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
	movl	-164(%rbp), %ecx        # 4-byte Reload
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
	movq	%rax, -120(%rbp)        # 8-byte Spill
	je	.LBB0_47
# %bb.21:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-1(%rax), %r14
	imulq	%r12, %r14
	addq	%r10, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$41, %rax
	jb	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movq	%rax, %r13
	shrq	$3, %r13
	imulq	%r12, %r13
	leaq	(%r10,%r13), %r14
	leaq	(%r10,%r13,2), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%r10, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	-56(%rbp), %r12         # 8-byte Reload
	callq	*%r12
	movl	%eax, -112(%rbp)        # 4-byte Spill
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	-144(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	js	.LBB0_24
# %bb.26:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
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
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovnsq	%rbx, %r14
.LBB0_28:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, -80(%rbp)         # 8-byte Spill
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	negq	%rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%r15, %rbx
	subq	%r13, %rbx
	leaq	(%r15,%r13), %r14
	movq	%r13, %rax
	addq	%r13, %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdx
	movq	-56(%rbp), %r12         # 8-byte Reload
	callq	*%r12
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movq	%r15, %rdi
	movq	%r14, -176(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -152(%rbp)          # 4-byte Folded Reload
	js	.LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_34
# %bb.33:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rdi
	movq	-176(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
	jmp	.LBB0_34
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_34
# %bb.31:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rdi
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %rbx
	movq	%rbx, %r15
.LBB0_34:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %r13        # 8-byte Reload
	movq	%r13, %rdi
	subq	-144(%rbp), %rdi        # 8-byte Folded Reload
	movq	-112(%rbp), %r14        # 8-byte Reload
	addq	%r13, %r14
	movq	%rdi, -152(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	-56(%rbp), %r12         # 8-byte Reload
	callq	*%r12
	movl	%eax, -144(%rbp)        # 4-byte Spill
	movq	%r14, -112(%rbp)        # 8-byte Spill
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -144(%rbp)          # 4-byte Folded Reload
	js	.LBB0_35
# %bb.37:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jg	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r12, %r14
	movq	%r14, -112(%rbp)        # 8-byte Spill
	jmp	.LBB0_39
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	js	.LBB0_39
# %bb.36:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %r12        # 8-byte Reload
	movq	%r12, %rdi
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	testl	%eax, %eax
	cmovsq	%r14, %r12
	movq	%r12, -112(%rbp)        # 8-byte Spill
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-112(%rbp), %r14        # 8-byte Reload
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movq	-56(%rbp), %r13         # 8-byte Reload
	callq	*%r13
	movl	%eax, %r12d
	movq	%r15, %rdi
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	*%r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	js	.LBB0_41
# %bb.43:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	jg	.LBB0_46
# %bb.44:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	-136(%rbp), %r15        # 8-byte Reload
	movq	%r15, %rsi
	jmp	.LBB0_45
.LBB0_41:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movl	-44(%rbp), %ecx         # 4-byte Reload
	js	.LBB0_46
# %bb.42:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	-136(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rsi
.LBB0_45:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	testl	%eax, %eax
	cmovsq	%rbx, %r15
.LBB0_46:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
.LBB0_47:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_48
# %bb.49:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB0_52
# %bb.50:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rdi        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_51:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rcx), %rdx
	movq	(%r15,%rcx), %rsi
	movq	%rsi, (%r10,%rcx)
	movq	%rdx, (%r15,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rdi
	cmpq	$1, %rdi
	jg	.LBB0_51
	jmp	.LBB0_54
	.p2align	4, 0x90
.LBB0_48:                               #   in Loop: Header=BB0_1 Depth=1
	movq	(%r10), %rdx
	movq	(%r15), %rcx
	movq	%rcx, (%r10)
	movq	%rdx, (%r15)
	jmp	.LBB0_55
	.p2align	4, 0x90
.LBB0_52:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_53:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rsi), %edx
	movzbl	(%r15,%rsi), %ebx
	movb	%bl, (%r10,%rsi)
	movb	%dl, (%r15,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rsi
	cmpq	$1, %rcx
	jg	.LBB0_53
.LBB0_54:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_55:                               #   in Loop: Header=BB0_1 Depth=1
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
	jmp	.LBB0_56
	.p2align	4, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_56 Depth=2
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	addq	%rax, %r15
.LBB0_56:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_69 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #         Child Loop BB0_81 Depth 4
                                        #         Child Loop BB0_79 Depth 4
                                        #       Child Loop BB0_99 Depth 3
                                        #       Child Loop BB0_97 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	ja	.LBB0_59
# %bb.57:                               #   in Loop: Header=BB0_56 Depth=2
	movq	%r15, %rdi
	movq	%r10, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jg	.LBB0_58
# %bb.63:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_64
# %bb.65:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	-72(%rbp), %r10         # 8-byte Reload
	je	.LBB0_66
# %bb.67:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_70
# %bb.68:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_69:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r13,%rcx), %rdx
	movq	(%r15,%rcx), %rsi
	movq	%rsi, (%r13,%rcx)
	movq	%rdx, (%r15,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_69
	jmp	.LBB0_72
.LBB0_66:                               #   in Loop: Header=BB0_56 Depth=2
	movq	(%r13), %rax
	movq	(%r15), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%r15)
	jmp	.LBB0_73
.LBB0_70:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_71:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rax), %edx
	movzbl	(%r15,%rax), %ebx
	movb	%bl, (%r13,%rax)
	movb	%dl, (%r15,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_71
.LBB0_72:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_73:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	addq	%rax, %r15
	jmp	.LBB0_56
.LBB0_58:                               #   in Loop: Header=BB0_56 Depth=2
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_59
	.p2align	4, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_59 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	addq	%rax, %r12
.LBB0_59:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_81 Depth 4
                                        #         Child Loop BB0_79 Depth 4
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r15
	ja	.LBB0_85
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=3
	movq	%r12, %rdi
	movq	%r10, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_93
# %bb.61:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_62
# %bb.75:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	movq	-72(%rbp), %r10         # 8-byte Reload
	je	.LBB0_76
# %bb.77:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_79:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	(%r12,%rcx), %rdx
	movq	(%r14,%rcx), %rsi
	movq	%rsi, (%r12,%rcx)
	movq	%rdx, (%r14,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_79
	jmp	.LBB0_82
.LBB0_76:                               #   in Loop: Header=BB0_59 Depth=3
	movq	(%r12), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r12)
	movq	%rax, (%r14)
	jmp	.LBB0_83
.LBB0_80:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_81:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        #       Parent Loop BB0_59 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%r12,%rax), %edx
	movzbl	(%r14,%rax), %ebx
	movb	%bl, (%r12,%rax)
	movb	%dl, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_81
.LBB0_82:                               #   in Loop: Header=BB0_59 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_83:                               #   in Loop: Header=BB0_59 Depth=3
	movq	-104(%rbp), %rax        # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	addq	%rax, %r12
	jmp	.LBB0_59
.LBB0_93:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_94
# %bb.95:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_98
# %bb.96:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-128(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movq	-72(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_97:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r15,%rcx), %rdx
	movq	(%r12,%rcx), %rsi
	movq	%rsi, (%r15,%rcx)
	movq	%rdx, (%r12,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rcx
	addq	$-1, %rax
	cmpq	$1, %rax
	jg	.LBB0_97
	jmp	.LBB0_100
.LBB0_94:                               #   in Loop: Header=BB0_56 Depth=2
	movq	(%r15), %rax
	movq	(%r12), %rcx
	movq	%rcx, (%r15)
	movq	%rax, (%r12)
	movq	-72(%rbp), %r10         # 8-byte Reload
	jmp	.LBB0_101
.LBB0_98:                               #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_99:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_56 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r15,%rax), %edx
	movzbl	(%r12,%rax), %ebx
	movb	%bl, (%r15,%rax)
	movb	%dl, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_99
.LBB0_100:                              #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_101:                              #   in Loop: Header=BB0_56 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	addq	-88(%rbp), %r15         # 8-byte Folded Reload
	addq	-104(%rbp), %r12        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB0_56
	.p2align	4, 0x90
.LBB0_85:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_86
# %bb.110:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-120(%rbp), %r9         # 8-byte Reload
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
	je	.LBB0_117
# %bb.111:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %r8
	subq	%r13, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -44(%rbp)           # 4-byte Folded Reload
	ja	.LBB0_114
# %bb.112:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	%r13d, %rdx
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_113:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r10,%rsi), %rdi
	movq	(%r8,%rsi), %rbx
	movq	%rbx, (%r10,%rsi)
	movq	%rdi, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_113
	jmp	.LBB0_116
	.p2align	4, 0x90
.LBB0_114:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_115:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r10,%rsi), %ebx
	movzbl	(%r8,%rsi), %ecx
	movb	%cl, (%r10,%rsi)
	movb	%bl, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_115
.LBB0_116:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_117:                              #   in Loop: Header=BB0_1 Depth=1
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
	je	.LBB0_124
# %bb.118:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%r13, %r8
	subq	%rdx, %r8
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	ja	.LBB0_121
# %bb.119:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	%edx, %rdx
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_120:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rsi), %rdi
	movq	(%r8,%rsi), %rbx
	movq	%rbx, (%r15,%rsi)
	movq	%rdi, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsi
	addq	$-1, %rdx
	cmpq	$1, %rdx
	jg	.LBB0_120
	jmp	.LBB0_123
	.p2align	4, 0x90
.LBB0_121:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rdx
	addq	$1, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_122:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%r15,%rsi), %ebx
	movzbl	(%r8,%rsi), %ecx
	movb	%cl, (%r15,%rsi)
	movb	%bl, (%r8,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	addq	$1, %rsi
	cmpq	$1, %rdx
	jg	.LBB0_122
.LBB0_123:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_124:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	jbe	.LBB0_126
# %bb.125:                              #   in Loop: Header=BB0_1 Depth=1
	xorl	%edx, %edx
	divq	%r12
	movq	%r10, %rdi
	movq	%rax, %rsi
	movq	%r12, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	qsort_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_126:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jbe	.LBB0_128
# %bb.127:                              #   in Loop: Header=BB0_1 Depth=1
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
	jle	.LBB0_129
# %bb.6:
	addq	%r10, %rax
	leaq	(%r10,%r12), %r15
	movslq	%r12d, %rcx
	addq	$1, %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	addq	$1, -160(%rbp)          # 8-byte Folded Spill
	movq	%r10, -128(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, -128(%rbp)        # 8-byte Folded Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	cmpq	%rax, %r15
	jae	.LBB0_129
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_14 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r15
	jbe	.LBB0_19
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	movq	-128(%rbp), %r13        # 8-byte Reload
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
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
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
	movq	-160(%rbp), %rcx        # 8-byte Reload
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
.LBB0_86:
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-120(%rbp), %rcx        # 8-byte Reload
	imulq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	movq	-104(%rbp), %rbx        # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	jle	.LBB0_129
# %bb.87:                               # %.preheader8
	addq	%r10, %rcx
	cltq
	addq	$1, %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	addq	$1, -160(%rbp)          # 8-byte Folded Spill
	movq	%r10, %r15
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB0_88
	.p2align	4, 0x90
.LBB0_109:                              #   in Loop: Header=BB0_88 Depth=1
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-80(%rbp), %rdx         # 8-byte Reload
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r15
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rcx, %rdx
	jae	.LBB0_129
.LBB0_88:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_90 Depth 2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_104 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cmpq	%r10, %rdx
	jbe	.LBB0_109
# %bb.89:                               # %.preheader6
                                        #   in Loop: Header=BB0_88 Depth=1
	movq	%r15, %r12
	movq	-80(%rbp), %r13         # 8-byte Reload
	jmp	.LBB0_90
	.p2align	4, 0x90
.LBB0_92:                               #   in Loop: Header=BB0_90 Depth=2
	movq	(%r13), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%r13)
	movq	%rax, (%r14)
.LBB0_108:                              #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %r12
	movq	%r14, %r13
	cmpq	%r10, %r14
	jbe	.LBB0_109
.LBB0_90:                               #   Parent Loop BB0_88 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_106 Depth 3
                                        #       Child Loop BB0_104 Depth 3
	leaq	(%rbx,%r13), %r14
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	*-56(%rbp)              # 8-byte Folded Reload
	movq	-72(%rbp), %r10         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_109
# %bb.91:                               #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_92
# %bb.102:                              #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB0_105
# %bb.103:                              #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	movq	-160(%rbp), %rcx        # 8-byte Reload
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_104:                              #   Parent Loop BB0_88 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax,%rdx), %rsi
	movq	(%r12,%rdx), %rdi
	movq	%rdi, (%rax,%rdx)
	movq	%rsi, (%r12,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdx
	addq	$-1, %rcx
	cmpq	$1, %rcx
	jg	.LBB0_104
	jmp	.LBB0_107
	.p2align	4, 0x90
.LBB0_105:                              #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_106:                              #   Parent Loop BB0_88 Depth=1
                                        #     Parent Loop BB0_90 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	(%r13,%rax), %edx
	movzbl	(%r12,%rax), %ebx
	movb	%bl, (%r13,%rax)
	movb	%dl, (%r12,%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	addq	$1, %rax
	cmpq	$1, %rcx
	jg	.LBB0_106
.LBB0_107:                              #   in Loop: Header=BB0_90 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rbx        # 8-byte Reload
	jmp	.LBB0_108
.LBB0_128:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_129:
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	qsort_r, .Lfunc_end0-qsort_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
