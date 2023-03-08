	.text
	.file	"wcsnrtombs.c"
	.globl	_wcsnrtombs_l           # -- Begin function _wcsnrtombs_l
	.p2align	4, 0x90
	.type	_wcsnrtombs_l,@function
_wcsnrtombs_l:                          # @_wcsnrtombs_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%rcx, %rbx
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	movq	%r8, %r13
	movq	(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB0_4
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB0_29
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r13
.LBB0_4:
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	movq	-72(%rbp), %r15         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, %rbx
	jb	.LBB0_22
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	(%rcx), %r12d
	movl	4(%rcx), %ebx
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	(%rsi), %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-58(%rbp), %rsi
	movq	16(%rbp), %rax
	callq	*224(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_23
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	%eax, %r9d
	cltq
	addq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	ja	.LBB0_24
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r9d, %r9d
	jle	.LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movl	%r9d, %esi
	addl	$-1, %r9d
	leaq	-1(%rsi), %rdi
	movl	%esi, %edx
	andl	$3, %edx
	cmpq	$3, %rdi
	jae	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_5 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	testq	%rdx, %rdx
	jne	.LBB0_16
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB0_20
.LBB0_13:                               #   in Loop: Header=BB0_5 Depth=1
	subq	%rdx, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_14:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-58(%rbp,%rdi), %ebx
	movb	%bl, (%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-57(%rbp,%rdi), %ebx
	movb	%bl, 1(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-56(%rbp,%rdi), %ebx
	movb	%bl, 2(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-55(%rbp,%rdi), %ebx
	movb	%bl, 3(%r15,%rdi)
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB0_14
# %bb.15:                               # %.loopexit1
                                        #   in Loop: Header=BB0_5 Depth=1
	leaq	(%r15,%rdi), %rsi
	testq	%rdx, %rdx
	je	.LBB0_18
.LBB0_16:                               # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	addq	%rbp, %rdi
	addq	$-58, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_17:                               #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rbx), %ecx
	movb	%cl, (%rsi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %rdx
	jne	.LBB0_17
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=1
	addq	%r9, %r15
	addq	$1, %r15
.LBB0_19:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	addq	$4, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpl	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_25
# %bb.21:                               #   in Loop: Header=BB0_5 Depth=1
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	cmpq	%r13, %rax
	jb	.LBB0_5
	jmp	.LBB0_29
.LBB0_22:
	movq	%r14, %rax
	jmp	.LBB0_29
.LBB0_23:
	movq	-96(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	$-1, %rax
	jmp	.LBB0_28
.LBB0_24:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r12d, (%rax)
	movl	%ebx, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	jmp	.LBB0_29
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB0_27
# %bb.26:
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_27:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$0, (%rcx)
	addq	$-1, %rax
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcsnrtombs_l, .Lfunc_end0-_wcsnrtombs_l
                                        # -- End function
	.globl	_wcsnrtombs_r           # -- Begin function _wcsnrtombs_r
	.p2align	4, 0x90
	.type	_wcsnrtombs_r,@function
_wcsnrtombs_r:                          # @_wcsnrtombs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsi, %rbx
	callq	__getreent
	movq	%rax, %r14
	callq	__getreent
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	_wcsnrtombs_l
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcsnrtombs_r, .Lfunc_end1-_wcsnrtombs_r
                                        # -- End function
	.globl	wcsnrtombs              # -- Begin function wcsnrtombs
	.p2align	4, 0x90
	.type	wcsnrtombs,@function
wcsnrtombs:                             # @wcsnrtombs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	callq	__getreent
	movq	72(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	-48(%rbp), %r9          # 8-byte Reload
	callq	_wcsnrtombs_l
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
	.size	wcsnrtombs, .Lfunc_end2-wcsnrtombs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
